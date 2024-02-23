<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('check', function() {

});
Route::get('testds', [\App\Http\Controllers\Provider\VibraController::class, 'startGameVibra']);
Route::get('clfears', function() {
    Artisan::command('clears', function () {
        Artisan::call('optimize:clear');
        echo 'Tudo apagado com sucesso';
    });

    dd("LIMPOU");
});

/// SOCIAL
include_once(__DIR__ . '/groups/auth/social.php');

// PROVIDERS
include_once(__DIR__ . '/groups/provider/stripe.php');
include_once(__DIR__ . '/groups/provider/fivers.php');
include_once(__DIR__ . '/groups/provider/salsa.php');
include_once(__DIR__ . '/groups/provider/slotegrator.php');
include_once(__DIR__ . '/groups/provider/vibra.php');
include_once(__DIR__ . '/groups/provider/suitpay.php');

// APP
include_once(__DIR__ . '/groups/layouts/app.php');

URL::forceScheme('https');