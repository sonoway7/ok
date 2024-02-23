<?php

use App\Http\Controllers\Api\Games\AllGamesController;
use App\Http\Controllers\Api\Games\FiversController;
use App\Http\Controllers\Api\Games\OriginalController;
use App\Http\Controllers\Api\Games\SalsaController;
use App\Http\Controllers\Api\Games\SlotegratorController;
use Illuminate\Support\Facades\Route;

Route::prefix('casinoall')->group(function() {
    Route::get('/', [AllGamesController::class, 'getAll']);
});

Route::prefix('casinosoriginals')->group(function() {
    Route::get('/', [OriginalController::class, 'getAll']);
});

Route::prefix('casinossalsa')->group(function() {
    Route::get('/', [SalsaController::class, 'getAll']);
});

Route::prefix('casinosslotegrator')->group(function() {
    Route::get('/', [SlotegratorController::class, 'getAll']);
});

Route::prefix('casinosfivers')->group(function() {
    Route::get('/', [FiversController::class, 'getAll']);
});
