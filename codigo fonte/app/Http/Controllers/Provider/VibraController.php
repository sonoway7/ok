<?php

namespace App\Http\Controllers\Provider;

use App\Http\Controllers\Controller;
use App\Traits\Providers\VibraTrait;
use Illuminate\Http\Request;

class VibraController extends Controller
{
    use VibraTrait;

    /**
     * Store a newly created resource in storage.
     */
    public function startGameVibra(Request $request)
    {
        return self::GameLaunch();
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
