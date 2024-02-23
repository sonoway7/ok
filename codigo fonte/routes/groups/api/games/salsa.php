<?php

use App\Http\Controllers\Api\Games\SalsaController;
use Illuminate\Support\Facades\Route;

Route::get('/salsa', [SalsaController::class, 'index']);
Route::get('/salsa/{slug}', [SalsaController::class, 'show']);
