<?php

use App\Http\Controllers\Casinos\CategoryController;
use Illuminate\Support\Facades\Route;

Route::prefix('casinos')->group(function() {
    Route::get('/', [CategoryController::class, 'index']);
    Route::get('/categories', [CategoryController::class, 'categories']);
});
