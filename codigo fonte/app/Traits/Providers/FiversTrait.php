<?php

namespace App\Traits\Providers;
use App\Models\FiversGame;
use App\Models\GamesKey;
use App\Models\GGRGamesFiver;
use App\Models\Order;
use App\Models\User;
use App\Models\Wallet;
use App\Traits\Missions\MissionTrait;
use Illuminate\Support\Facades\Http;

trait FiversTrait
{
    use MissionTrait;

    /**
     * @var string
     */
    protected static $agentCode;
    protected static $agentToken;
    protected static $agentSecretKey;
    protected static $apiEndpoint;

    /**
     * @return void
     */
    public static function getCredentials(): bool
    {
        $setting = GamesKey::first();

        self::$agentCode        = $setting->getAttributes()['agent_code'];
        self::$agentToken       = $setting->getAttributes()['agent_token'];
        self::$agentSecretKey   = $setting->getAttributes()['agent_secret_key'];
        self::$apiEndpoint      = $setting->getAttributes()['api_endpoint'];

        return true;
    }

    /**
     * @param $rtp
     * @param $provider
     * @return void
     */
    public static function UpdateRTP($rtp, $provider)
    {
        if(self::getCredentials()) {
            $postArray = [
                "method"        => "control_rtp",
                "agent_code"    => self::$agentCode,
                "agent_token"   => self::$agentToken,
                "provider_code" => $provider,
                "user_code"     => auth('api')->id() . '',
                "rtp"           => $rtp
            ];

            $response = Http::post(self::$apiEndpoint, $postArray);

            if($response->successful()) {

            }
        }
    }

    /**
     * Create User
     * Metodo para criar novo usuário
     *
     * @return bool
     */
    public static function createUser()
    {
        if(self::getCredentials()) {
            $postArray = [
                "method"        => "user_create",
                "agent_code"    => self::$agentCode,
                "agent_token"   => self::$agentToken,
                "user_code"     => auth('api')->id() . '',
            ];

            $response = Http::post(self::$apiEndpoint, $postArray);

            if($response->successful()) {
                return true;
            }
            return false;
        }
        return false;
    }

    /**
     * Iniciar Jogo
     * Metodo responsavel para iniciar o jogo
     *
     */
    public static function gameLaunch($provider_code, $game_code, $lang, $userId)
    {
        if(self::getCredentials()) {
            $postArray = [
                "method"        => "game_launch",
                "agent_code"    => self::$agentCode,
                "agent_token"   => self::$agentToken,
                "user_code"     => $userId.'',
                "provider_code" => $provider_code,
                "game_code"     => $game_code,
                "lang"          => $lang
            ];

            //\DB::table('debug')->insert(['text' => json_encode($postArray)]);
            $response = Http::post(self::$apiEndpoint, $postArray);

            if($response->successful()) {
                $data = $response->json();

                if($data['status'] == 0) {
                    if($data['msg'] == 'Invalid User') {
                        if(self::createUser()) {
                            return self::gameLaunch($provider_code, $game_code, $lang, $userId);
                        }
                    }
                }else{
                    return $data;
                }
            }else{
                return false;
            }
        }

    }

    /**
     * Get FIvers Balance
     * @return false|void
     */
    public static function getFiversUserDetail()
    {
        if(self::getCredentials()) {
            $dataArray = [
                "method"        => "call_players",
                "agent_code"    => self::$agentCode,
                "agent_token"   => self::$agentToken,
            ];

            $response = Http::post(self::$apiEndpoint, $dataArray);

            if($response->successful()) {
                $data = $response->json();

                dd($data);
            }else{
                return false;
            }
        }

    }

    /**
     * Get FIvers Balance
     * @param $provider_code
     * @param $game_code
     * @param $lang
     * @param $userId
     * @return false|void
     */
    public static function getFiversBalance()
    {
        if(self::getCredentials()) {
            $dataArray = [
                "method"        => "money_info",
                "agent_code"    => self::$agentCode,
                "agent_token"   => self::$agentToken,
            ];

            $response = Http::post(self::$apiEndpoint, $dataArray);

            if($response->successful()) {
                $data = $response->json();

                return $data['agent']['balance'] ?? 0;
            }else{
                return false;
            }
        }

    }

    /**
     * @param $wallet
     * @param $changeBonus
     * @param $WinAmount
     * @return void
     */
    private static function payWithRollover($wallet, $changeBonus, $WinAmount): void
    {
        /// verificar se é bonus ou balance
        if($changeBonus == 'balance_bonus') {
            /// verificar a quantidade de rollover
            if($wallet->balance_bonus_rollover == 0 || empty($wallet->balance_bonus_rollover)) {
                $wallet->increment('balance_bonus', $WinAmount);
            }else{
                /// verifica se o valor do rollover é maior que o ganho, se sim, decrementa o valor
                if($wallet->balance_bonus_rollover >= $WinAmount) {
                    $wallet->decrement('balance_bonus_rollover', $WinAmount);
                }else{
                    /// caso contrario define como zero.
                    $wallet->update(['balance_bonus_rollover' => 0]);
                }

                $wallet->increment('balance_bonus', $WinAmount);
            }
        }else{
            /// pagando o ganhos
            $wallet->increment('balance', $WinAmount);
        }
    }

    /**
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     */
    private static function GetBalanceInfo($request)
    {
        $wallet = Wallet::where('user_id', $request->user_code)->where('active', 1)->first();
        if(!empty($wallet) && $wallet->total_balance > 0) {
            return response()->json([
                'status' => 1,
                'user_balance' => $wallet->total_balance
            ]);
        }

        return response()->json([
            'status' => 0,
            'user_balance' => 0,
            'msg' => "INSUFFICIENT_USER_FUNDS"
        ]);
    }

    /**
     * Set Transactions
     *
     * @param $request
     * @return \Illuminate\Http\JsonResponse
     */
    private static function SetTransaction($request)
    {
        $data = $request->all();
        $wallet = Wallet::where('user_id', $request->user_code)->where('active', 1)->first();
		\Log::info("WALLET ID: ".$wallet->id);

        if(!empty($wallet)) {
            if($data['game_type'] == 'slot' && isset($data['slot'])) {
              
                $game = FiversGame::where('game_code', $data['slot']['game_code'])->first();
              
              	\Log::info("GAME ID: ".$game->id);

                /// verificar se usuário tem desafio ativo
                self::CheckMissionExist($request->user_code, $game, 'fivers');
              
                $winMoney = (floatval($data['slot']['win_money']) - floatval($data['slot']['bet_money']));
                return self::PrepareTransactions($wallet, $request->user_code, $data['slot']['txn_id'], $data['slot']['bet_money'], $winMoney, $data['slot']['game_code'], $data['slot']['provider_code']);
            }

            if($data['game_type'] == 'live' &&  isset($data['live'])) {
              	$game = FiversGame::where('game_code', $data['live']['game_code'])->first();

                /// verificar se usuário tem desafio ativo
                self::CheckMissionExist($request->user_code, $game, 'fivers');
              
                return self::PrepareTransactions($wallet, $request->user_code, $data['live']['txn_id'], $data['live']['bet_money'], $data['live']['win_money'], $data['live']['game_code'], $data['live']['provider_code']);
            }
        }
    }

    /**
     * @param $wallet
     * @param $userCode
     * @param $txnId
     * @param $betMoney
     * @param $winMoney
     * @param $gameCode
     * @return \Illuminate\Http\JsonResponse|void
     */
    private static function PrepareTransactions($wallet, $userCode, $txnId, $betMoney, $winMoney, $gameCode, $providerCode)
    {
        $user = User::find($wallet->user_id);

        $typeAction  = 'bet';
        $changeBonus = 'balance';
        $bet = floatval($betMoney);

        if(floatval($winMoney) > $bet) {
            $typeAction = 'win';

            self::payWithRollover($wallet, $changeBonus, $winMoney);
            self::CreateTransactions($userCode, time(), $txnId, $typeAction, $changeBonus, $betMoney, $gameCode, $gameCode);

            /// salvar transação GGR
            GGRGamesFiver::create([
                'user_id' => $userCode,
                'provider' => $providerCode,
                'game' => $gameCode,
                'balance_bet' => $betMoney,
                'balance_win' => $winMoney,
                'currency' => $wallet->currency
            ]);

            /// pagar afiliado
            \Helper::generateGameHistory($user, $typeAction, $winMoney, $betMoney, $gameCode, $gameCode, $changeBonus, $providerCode);

            return response()->json([
                'status' => 1,
                'user_balance' => $wallet->total_balance
            ]);
        }

        if($wallet->balance_bonus >= $bet) {
            $wallet->decrement('balance_bonus', $bet);
            $changeBonus = 'balance_bonus';
        }elseif($wallet->balance >= $bet) {
            $wallet->decrement('balance', $bet);
        }

        /// criar uma transação
        $checkTransaction = Order::where('transaction_id', $txnId)->first();
        if(empty($checkTransaction)) {
            self::CreateTransactions($userCode, time(), $txnId, $typeAction, $changeBonus, $betMoney, $gameCode, $gameCode);
        }

        /// salvar transação GGR
        GGRGamesFiver::create([
            'user_id' => $userCode,
            'provider' => $providerCode,
            'game' => $gameCode,
            'balance_bet' => $betMoney,
            'balance_win' => 0,
            'currency' => $wallet->currency
        ]);

        /// pagar afiliado
        \Helper::generateGameHistory($user, 'loss', $winMoney, $betMoney, $gameCode, $gameCode, $changeBonus, $providerCode);

        return response()->json([
            'status' => 1,
            'user_balance' => $wallet->total_balance
        ]);


    }

    private static function SetGameStart($request)
    {

    }

    private static function SetGameEnd($request)
    {

    }

    public static function webhooks($request)
    {
        \DB::table('debug')->insert(['text' => json_encode($request->all())]);

        switch ($request->method) {
            case "user_balance":
                return self::GetBalanceInfo($request);
            case "transaction":
                return self::SetTransaction($request);
            case "game_start":
                return self::SetGameStart($request);
            case "game_end":
                return self::SetGameEnd($request);
            default:
                return response()->json(['status' => 0]);
        }
    }


    /**
     * Create Transactions
     * Metodo para criar uma transação
     *
     * @return false
     */
    private static function CreateTransactions($playerId, $betReferenceNum, $transactionID, $type, $changeBonus, $amount, $game, $pn)
    {

        $order = Order::create([
            'user_id'       => $playerId,
            'session_id'    => $betReferenceNum,
            'transaction_id'=> $transactionID,
            'type'          => $type,
            'type_money'    => $changeBonus ? 'balance_bonus' : 'balance',
            'amount'        => $amount,
            'providers'     => 'Fivers',
            'game'          => $game,
            'game_uuid'     => $pn,
            'round_id'      => 1,
        ]);

        if($order) {
            return $order->id;
        }

        return false;
    }
}
