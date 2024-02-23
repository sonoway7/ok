<?php

use App\Http\Controllers\Api\Games\SlotegratorController;
use Illuminate\Support\Facades\Route;

Route::get('/slotegrator', [SlotegratorController::class, 'index']);
