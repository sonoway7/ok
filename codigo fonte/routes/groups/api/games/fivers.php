<?php

use App\Http\Controllers\Api\Games\FiversController;
use Illuminate\Support\Facades\Route;

Route::get('/fivers', [FiversController::class, 'index']);
Route::get('/fivers/{id}', [FiversController::class, 'show']);
