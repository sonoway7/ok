<?php

namespace App\Http\Controllers\Casinos;

use App\Http\Controllers\Controller;
use App\Models\CasinoCategory;
use App\Models\CasinoGamesSlotgrator;
use Illuminate\Http\Request;

class CasinoGameController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query_games_slotegrator = CasinoGamesSlotgrator::query();

        if(isset($request->category) && !empty($request->category)) {
            $category = CasinoCategory::whereSlug($request->category)->first();
            if(!empty($category)) {
                $query_games_slotegrator->where('casino_category_id', $category->id);
            }
        }

        if(isset($request->searchTerm) && !empty($request->searchTerm) && strlen($request->searchTerm) > 2) {
            $query_games_slotegrator->whereLike(['name', 'provider', 'technology'], $request->searchTerm);
        }

        $gamesSlotegrator = $query_games_slotegrator->orderBy('views', 'desc')->paginate();
        return json_encode(['status' => true, 'gamesSlotegrator' => $gamesSlotegrator]);
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
