<?php

namespace App\Http\Controllers\Api\Profile;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use App\Models\User;
use App\Models\Wallet;
use App\Models\Withdrawal;
use App\Notifications\NewWithdrawalNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class WalletController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $wallet = Wallet::whereUserId(auth('api')->id())->where('active', 1)->first();
        return response()->json(['wallet' => $wallet], 200);
    }

    /**
     * @return \Illuminate\Http\JsonResponse
     */
    public function myWallet()
    {
        $wallets = Wallet::whereUserId(auth('api')->id())->get();
        return response()->json(['wallets' => $wallets], 200);
    }

    /**
     * @param $id
     * @return \Illuminate\Http\JsonResponse|void
     */
    public function setWalletActive($id)
    {
        $checkWallet = Wallet::whereUserId(auth('api')->id())->where('active', 1)->first();
        if(!empty($checkWallet)) {
            $checkWallet->update(['active' => 0]);
        }

        $wallet = Wallet::find($id);
        if(!empty($wallet)) {
            $wallet->update(['active' => 1]);
            return response()->json(['wallet' => $wallet], 200);
        }
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function requestWithdrawal(Request $request)
    {
        $setting = Setting::first();

        if($request->type === 'pix') {
            $rules = [
                'amount'        => ['required', 'numeric', 'min:'.$setting->min_withdrawal, 'max:'.$setting->max_withdrawal],
                'pix_key'       => 'required',
                'pix_type'      => 'required',
                'accept_terms'  => 'required',
            ];
        }

        if($request->type === 'bank') {
            $rules = [
                'amount'        => ['required', 'numeric', 'min:'.$setting->min_withdrawal, 'max:'.$setting->max_withdrawal],
                'bank_info'     => 'required',
                'accept_terms'  => 'required',
            ];
        }

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        if($request->amount > $setting->max_withdrawal) {
            return response()->json(['error' => 'Você excedeu o limite máximo permitido de: '. $setting->max_withdrawal], 400);
        }

        if($request->accept_terms == true) {
            if(floatval($request->amount) > floatval(auth('api')->user()->wallet->balance)) {
                return response()->json(['error' => 'Você não tem saldo suficiente'], 400);
            }

            $data = [];
            if($request->type === 'pix') {
                $data = [
                    'user_id'   => auth('api')->user()->id,
                    'amount'    => \Helper::amountPrepare($request->amount),
                    'type'      => $request->type,
                    'pix_key'   => $request->pix_key,
                    'pix_type'  => $request->pix_type,
                    'currency'  => $request->currency,
                    'symbol'    => $request->symbol,
                    'status'    => 0,
                ];
            }

            if($request->type === 'bank') {
                $data = [
                    'user_id'   => auth('api')->user()->id,
                    'amount'    => \Helper::amountPrepare($request->amount),
                    'type'      => $request->type,
                    'bank_info' => $request->bank_info,
                    'currency'  => $request->currency,
                    'symbol'    => $request->symbol,
                    'status'    => 0,
                ];
            }

            $withdrawal = Withdrawal::create($data);

            if($withdrawal) {
                auth('api')->user()->wallet->decrement('balance', floatval($request->amount));

//                $admins = User::where('role_id', 0)->get();
//                foreach ($admins as $admin) {
//                    $admin->notify(new NewWithdrawalNotification(auth()->user()->name, $request->amount));
//                }

                return response()->json([
                    'status' => true,
                    'message' => 'Saque realizado com sucesso',
                ], 200);
            }
        }

        return response()->json(['error' => 'Você precisa aceitar os termos'], 400);
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
