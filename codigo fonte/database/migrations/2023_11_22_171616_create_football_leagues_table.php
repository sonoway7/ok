<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('football_leagues', function (Blueprint $table) {
            $table->id();
            $table->integer('league_id');
            $table->string('name');
            $table->string('type', 20);
            $table->string('logo');

            $table->string('country')->nullable();
            $table->string('country_code')->nullable();
            $table->string('country_flag')->nullable();

            $table->integer('season_year');
            $table->date('season_start');
            $table->date('season_end');
            $table->boolean('standings');
            $table->boolean('players');
            $table->boolean('top_scorers');
            $table->boolean('top_assists');
            $table->boolean('top_cards');
            $table->boolean('injuries');
            $table->boolean('predictions');
            $table->boolean('odds');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('football_leagues');
    }
};
