<?php

namespace App\Http\Controllers\Api\Games;

use App\Http\Controllers\Controller;
use App\Models\CasinoGamesSalsa;
use App\Models\CasinoGamesSlotgrator;
use App\Models\FiversGame;
use App\Models\GameProvider;
use App\Models\GameExclusive;
use Illuminate\Http\Request;

class AllGamesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function getAll(Request $request)
    {
        /// Games fivers
        $query_fivers = FiversGame::query();
        $query_fivers->where('casino_category_id', $request->category);

        if (isset($request->searchTerm) && !empty($request->searchTerm) && strlen($request->searchTerm) > 2) {
            $query_fivers->whereLike(['game_code', 'game_name'], $request->searchTerm);
        }

        $gamesFivers = $query_fivers->orderBy('views', 'asc')->paginate()->appends(request()->query());

        /// Games Slotegrators
        $query_slotegrators = CasinoGamesSlotgrator::query();
        $query_slotegrators->where('casino_category_id', $request->category);

        if (isset($request->searchTerm) && !empty($request->searchTerm) && strlen($request->searchTerm) > 2) {
            $query_slotegrators->whereLike(['name'], $request->searchTerm);
        }

        $gamesSlotegrators = $query_slotegrators->orderBy('views', 'asc')->paginate()->appends(request()->query());

        /// Games Originals
        $query_exclusives = GameExclusive::query();
        $query_exclusives->where('category_id', $request->category);

        if (isset($request->searchTerm) && !empty($request->searchTerm) && strlen($request->searchTerm) > 2) {
            $query_exclusives->whereLike(['name', 'description'], $request->searchTerm);
        }

        $gamesOriginals = $query_exclusives->orderBy('views', 'asc')->paginate()->appends(request()->query());

        /// Games Salsa
        $query_salsa = CasinoGamesSalsa::query();
        $query_salsa->where('casino_category_id', $request->category);

        if (isset($request->searchTerm) && !empty($request->searchTerm) && strlen($request->searchTerm) > 2) {
            $query_salsa->whereLike(['name', 'game_label'], $request->searchTerm);
        }

        $gamesSalsa = $query_salsa->orderBy('views', 'asc')->paginate()->appends(request()->query());

        return response()->json([
            'status' => true,
            'gamesFivers' => $gamesFivers,
            'gamesSlotegrators' => $gamesSlotegrators,
            'gamesOriginals' => $gamesOriginals,
            'gamesSalsa' => $gamesSalsa
        ]);
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
        //
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
