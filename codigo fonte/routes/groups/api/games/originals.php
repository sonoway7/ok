<?php

use App\Http\Controllers\Api\Games\OriginalController;
use Illuminate\Support\Facades\Route;

Route::get('/originals', [OriginalController::class, 'index']);
Route::get('/originals/{id}', [OriginalController::class, 'show']);
