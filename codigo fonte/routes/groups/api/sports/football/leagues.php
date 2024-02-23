<?php

use App\Http\Controllers\Api\Sports\FootballLeagueController;
use Illuminate\Support\Facades\Route;

Route::prefix('leagues')->group(function() {
    Route::get('/', [FootballLeagueController::class, 'index']);
});
