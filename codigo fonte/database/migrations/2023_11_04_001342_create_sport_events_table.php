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
        Schema::create('sport_events', function (Blueprint $table) {
            $table->id();
            $table->foreignId('sport_id')->constrained('sports')->cascadeOnDelete();
            $table->string('sport_key');
            $table->string('event_id');
            $table->dateTime('commence_time');
            $table->boolean('completed')->default(false);
            $table->string('home_team');
            $table->string('away_team');
            $table->integer('home_team_score')->nullable();
            $table->integer('away_team_score')->nullable();
            $table->decimal('home_team_odds', 10, 2)->nullable();
            $table->decimal('away_team_odds', 10, 2)->nullable();
            $table->decimal('odds_draw', 10, 2)->nullable();
            $table->string('slug');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sport_events');
    }
};
