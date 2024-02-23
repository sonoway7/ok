<?php

use App\Http\Controllers\Api\Sports\FootballEventController;
use Illuminate\Support\Facades\Route;

Route::prefix('events')->group(function() {
    Route::get('/', [FootballEventController::class, 'index']);
    Route::get('/{id}', [FootballEventController::class, 'show']);
    Route::get('/my-bets', [FootballEventController::class, 'myBets']);
    Route::post('/store-single', [FootballEventController::class, 'storeSingle']);
    Route::post('/store-multiple', [FootballEventController::class, 'storeMultiple']);
});

Route::prefix('fullevents')->group(function() {
    Route::get('/', [FootballEventController::class, 'allEvent']);
});

Route::prefix('nextevents')->group(function() {
    Route::get('/', [FootballEventController::class, 'nextEvent']);
});

Route::prefix('liveevents')->group(function() {
    Route::get('/', [FootballEventController::class, 'liveEvent']);
});

Route::prefix('bets')->group(function() {
    Route::get('/', [FootballEventController::class, 'myBets']);
});
