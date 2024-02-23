<?php

use App\Http\Controllers\Api\Sports\FootballTeamController;
use Illuminate\Support\Facades\Route;

Route::prefix('teams')->group(function() {
    Route::get('/', [FootballTeamController::class, 'index']);
});
