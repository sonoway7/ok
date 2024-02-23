<?php

use App\Http\Controllers\Provider\SlotegratorController;
use Illuminate\Support\Facades\Route;

Route::prefix('slotegrator')
    ->group(function ()
    {
        Route::get('/', [SlotegratorController::class, 'index']);
        Route::get('/{slug}', [SlotegratorController::class, 'show']);
    });

