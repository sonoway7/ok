<?php
use App\Http\Controllers\Api\Sports\FootballVenueController;
use Illuminate\Support\Facades\Route;

Route::prefix('venues')->group(function() {
    Route::get('/', [FootballVenueController::class, 'index']);
});
