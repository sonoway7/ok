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
        Schema::create('football_events', function (Blueprint $table) {
            $table->id();
            $table->integer('fixture_id');
            $table->string('referee')->nullable();
            $table->dateTime('date');
            $table->string('period_first')->nullable();
            $table->string('period_second')->nullable();
            $table->integer('team_home_id');
            $table->string('team_home_name')->nullable();
            $table->string('team_home_logo')->nullable();
            $table->tinyInteger('team_home_winner')->default(0);
            $table->text('team_home_statistics')->nullable();
            $table->integer('team_away_id');
            $table->string('team_away_name')->nullable();
            $table->string('team_away_logo')->nullable();
            $table->tinyInteger('team_away_winner')->default(0);
            $table->text('team_away_statistics')->nullable();
            $table->string('status', 20);
            $table->integer('venue_id')->nullable();
            $table->string('venue_name')->nullable();
            $table->string('venue_city')->nullable();
            $table->integer('league_id');
            $table->string('league_name')->nullable();
            $table->string('league_country', 50)->nullable();
            $table->string('league_logo')->nullable();
            $table->string('league_flag', 20)->nullable();
            $table->integer('league_season');
            $table->string('league_round')->nullable();
            $table->string('goals_home')->nullable();
            $table->string('goals_away')->nullable();
            $table->string('score_halftime_home')->nullable();
            $table->string('score_halftime_away')->nullable();
            $table->string('score_extratime_home')->nullable();
            $table->string('score_extratime_away')->nullable();
            $table->string('score_penalty_home')->nullable();
            $table->string('score_penalty_away')->nullable();

            $table->string('odds_home')->nullable();
            $table->string('odds_draw')->nullable();
            $table->string('odds_away')->nullable();

            $table->text('predictions')->nullable();
            $table->text('bets')->nullable();
            $table->string('status_long', 50);
            $table->tinyInteger('finished')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('football_events');
    }
};
