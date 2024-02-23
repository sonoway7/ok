<?php

namespace App\Http\Controllers\Api\Games;

use App\Http\Controllers\Controller;
use App\Models\CasinoCategory;
use App\Models\CasinoGamesSalsa;
use App\Models\CasinoGamesSlotgrator;
use Illuminate\Http\Request;

class SlotegratorController extends Controller
{
    /**
     * @return false|string
     */
    public function getAll()
    {
        $query_games = CasinoGamesSlotgrator::query();

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
        $categories = CasinoCategory::with(['gamesSlotgrator'])
            ->whereHas('gamesSlotgrator', function ($query) {
                $query->where('active', 1)->orderBy('views', 'asc');
            })
            ->orderBy('name', 'desc')
            ->get();

        return response()->json(['categories' => $categories], 200);
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
