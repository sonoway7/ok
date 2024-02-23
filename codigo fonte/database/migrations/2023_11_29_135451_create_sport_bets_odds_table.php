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
        Schema::create('sport_bets_odds', function (Blueprint $table) {
            $table->id();
            $table->integer('sport_bet_id')->unsigned()->index();
            $table->foreign('sport_bet_id')->references('id')->on('sport_bets')->onDelete('cascade');
            $table->bigInteger('bet_id');
            $table->string('bet_odd_id', 50);
            $table->dateTime('date');
            $table->string('status_long', 50);
            $table->string('team_home_name');
            $table->string('team_away_name');
            $table->bigInteger('odds_id');
            $table->string('odds_name');
            $table->string('odds_value', 50);
            $table->string('odds_odd', 20);
            $table->decimal('bet_amount')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sport_bets_odds');
    }
};
