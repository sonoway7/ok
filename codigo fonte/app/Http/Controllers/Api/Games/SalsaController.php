<?php

namespace App\Http\Controllers\Api\Games;

use App\Http\Controllers\Controller;
use App\Models\CasinoCategory;
use App\Models\CasinoGamesSalsa;
use App\Models\CasinoGamesSlotgrator;
use App\Traits\Providers\SalsaGamesTrait;
use Illuminate\Http\Request;

class SalsaController extends Controller
{
    use SalsaGamesTrait;

    /**
     * @return false|string
     */
    public function getAll()
    {
        $query_games = CasinoGamesSalsa::query();

        if(isset($request->category) && !empty($request->category)) {
            $category = CasinoCategory::whereSlug($request->category)->first();
            if(!empty($category)) {
                $query_games->where('casino_category_id', $category->id);
            }
        }

        if(isset($request->searchTerm) && !empty($request->searchTerm) && strlen($request->searchTerm) > 2) {
            $query_games->whereLike(['name', 'provider', 'technology'], $request->searchTerm);
        }

        $games = $query_games->orderBy('views', 'desc')->paginate();
        return json_encode(['status' => true, 'games' => $games]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = CasinoCategory::with(['gamesSalsa'])
            ->whereHas('gamesSalsa', function ($query) {
                $query->where('active', 1)->orderBy('views', 'asc');
            })
            ->orderBy('name', 'desc')
            ->get();

        return response()->json(['categoriesSalsa' => $categories], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show($slug)
    {
        if(auth('api')->check()) {
            $game = CasinoGamesSalsa::whereActive(1)->where('slug', $slug)->first();

            if(!empty($game)) {
                $game->increment('views', 1); // add mais uma visualização

                ///$game->game_label,
                $gameLabel = 'gpi-validation';

                $token = \Helper::MakeToken([
                    'id' => auth('api')->user()->id,
                    'game' => $gameLabel,
                ]);

                return response()->json([
                    'game' => $game,
                    'gameUrl' => self::playGameSalsa(
                        $game->game_pn,
                        'CHARGED',
                        'BRL',
                        'BR',
                        $gameLabel
                    ),
                    'token' => $token
                ]);
            }

            return response()->json(['error' => ''], 400);
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
