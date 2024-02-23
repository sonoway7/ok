<?php

namespace App\Http\Controllers\Api\Games;

use App\Http\Controllers\Controller;
use App\Models\CasinoCategory;
use App\Models\FiversGame;
use App\Models\GameProvider;
use App\Traits\Providers\FiversTrait;
use Illuminate\Http\Request;

class FiversController extends Controller
{
    use FiversTrait;

    /**
     * @return false|string
     */
    public function getAll(Request $request)
    {
        $query_games = FiversGame::query();

        if(isset($request->provider) && !empty($request->provider)) {
            $provider = GameProvider::whereCode($request->provider)->first();
            if(!empty($provider)) {
                $query_games->where('game_provider_id', $provider->id);
            }
        }

        if(isset($request->searchTerm) && !empty($request->searchTerm) && strlen($request->searchTerm) > 2) {
            $query_games->whereLike(['game_code', 'game_name'], $request->searchTerm);
        }

        $games = $query_games->orderBy('views', 'desc')->paginate();
        return json_encode(['status' => true, 'games' => $games]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $searchTerm = $request->input('search');

        $providers = GameProvider::with('games')
            ->when($searchTerm, function ($query) use ($searchTerm) {
                $query->where('name', 'like', "%$searchTerm%");
            })
            ->whereHas('games', function ($query) use ($searchTerm) {
                $query->where('status', 1)
                    ->orderBy('views', 'asc');
            })
            ->orderBy('name', 'desc')
            ->get();

        return response()->json(['providers' => $providers], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $fiver = FiversGame::with(['provider'])->where('game_code', $id)->first();
        if(!empty($fiver)) {
            $fiver->increment('views', 1);

            $launch = self::gameLaunch($fiver->provider->code, $fiver->game_code, 'pt', auth('api')->user()->id);
            if(isset($launch['status']) && $launch['status'] == 1) {
                return response()->json([
                    'game' =>$fiver->game_name,
                    'gameUrl' => $launch['launch_url'],
                ]);
            }
            return response()->json(['status' => false, 'error' => ''], 400);
        }

        return response()->json(['status' => false, 'error' => ''], 400);
    }

    /**
     * Update the specified resource in storage.
     */
    public function webhookMethod(Request $request)
    {
        return self::webhooks($request);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
