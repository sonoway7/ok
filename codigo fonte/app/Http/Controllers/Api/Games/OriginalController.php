<?php

namespace App\Http\Controllers\Api\Games;

use App\Http\Controllers\Controller;
use App\Models\CasinoCategory;
use App\Models\CasinoGamesSalsa;
use App\Models\GameExclusive;
use Illuminate\Http\Request;

class OriginalController extends Controller
{
    /**
     * @return false|string
     */
    public function getAll()
    {
        $query_games = GameExclusive::query();
        $query_games->where('active', 1);

        if(isset($request->searchTerm) && !empty($request->searchTerm) && strlen($request->searchTerm) > 2) {
            $query_games->whereLike(['name', 'description'], $request->searchTerm);
        }

        $games = $query_games->orderBy('views', 'desc')->paginate();
        return json_encode(['status' => true, 'games' => $games]);
    }


    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = GameExclusive::query();
        $query->where('active', 1);


        $originals = $query->get();
        return response()->json(['originals' => $originals]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        if(auth('api')->check()) {
            $game = GameExclusive::whereActive(1)->where('uuid', $id)->first();

            if(!empty($game)) {
                $game->increment('views', 1); // add mais uma visualização

                $token = \Helper::MakeToken([
                    'id' => auth('api')->user()->id,
                    'game' => $id
                ]);

                return response()->json([
                    'game' => $game,
                    'gameUrl' => url('/originals/'.$id.'/'),
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
