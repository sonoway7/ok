<?php

use App\Http\Controllers\Api\Profile\ProfileController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Broadcast;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

/*
 * Auth Route with JWT
 */
Route::group(['prefix' => 'auth', 'as' => 'auth.'], function () {
    include_once(__DIR__ . '/groups/api/auth/auth.php');
});

Route::group(['middleware' => ['auth.jwt']], function () {

    Route::prefix('profile')
        ->group(function ()
        {
            include_once(__DIR__ . '/groups/api/profile/profile.php');
            include_once(__DIR__ . '/groups/api/profile/affiliates.php');
            include_once(__DIR__ . '/groups/api/profile/wallet.php');
            include_once(__DIR__ . '/groups/api/profile/likes.php');
        });

    Route::prefix('wallet')
        ->group(function ()
        {
            include_once(__DIR__ . '/groups/api/wallet/deposit.php');
            include_once(__DIR__ . '/groups/api/wallet/withdraw.php');
        });
});

include_once(__DIR__ . '/groups/api/missions/mission.php');;
include_once(__DIR__ . '/groups/api/missions/missionuser.php');;

Route::prefix('sports')
    ->group(function ()
    {
        Route::prefix('football')
            ->group(function ()
            {
                include_once(__DIR__ . '/groups/api/sports/football/events.php');
                include_once(__DIR__ . '/groups/api/sports/football/leagues.php');
                include_once(__DIR__ . '/groups/api/sports/football/teams.php');
                include_once(__DIR__ . '/groups/api/sports/football/venues.php');
            });
    });

Route::prefix('games')
    ->group(function ()
    {
        include_once(__DIR__ . '/groups/api/games/fivers.php');
        include_once(__DIR__ . '/groups/api/games/salsa.php');
        include_once(__DIR__ . '/groups/api/games/slotegrators.php');
        include_once(__DIR__ . '/groups/api/games/originals.php');
    });

Route::prefix('profile')
    ->group(function ()
    {
        Route::post('/getLanguage', [ProfileController::class, 'getLanguage']);
        Route::put('/updateLanguage', [ProfileController::class, 'updateLanguage']);
    });

Route::prefix('providers')
    ->group(function ()
    {
        include_once(__DIR__ . '/groups/api/providers/slotegrator.php');
    });


Route::prefix('settings')
    ->group(function ()
    {
        include_once(__DIR__ . '/groups/api/settings/settings.php');
        include_once(__DIR__ . '/groups/api/settings/banners.php');
        include_once(__DIR__ . '/groups/api/settings/currency.php');
        include_once(__DIR__ . '/groups/api/settings/bonus.php');
    });

// LANDING SPIN
Route::prefix('spin')
    ->group(function ()
    {
        include_once(__DIR__ . '/groups/api/spin/index.php');
    })
    ->name('landing.spin.');

// CASSINOS
include_once(__DIR__ . '/groups/api/casinos/categories.php');
include_once(__DIR__ . '/groups/api/casinos/games.php');

// PROVIDERS
include_once(__DIR__ . '/groups/api/providers/stripe.php');
include_once(__DIR__ . '/groups/api/providers/suitpay.php');
include_once(__DIR__ . '/groups/api/providers/vgames.php');

URL::forceScheme('https');
