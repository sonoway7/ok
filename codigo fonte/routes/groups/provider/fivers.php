<?php

use App\Http\Controllers\Api\Games\FiversController;
use Illuminate\Support\Facades\Route;

Route::post('gold_api', [FiversController::class, 'webhookMethod']);
