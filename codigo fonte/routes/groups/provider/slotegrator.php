<?php

use App\Http\Controllers\Provider\VibraController;
use Illuminate\Support\Facades\Route;

Route::get('start', [VibraController::class, 'startGameVibra']);
