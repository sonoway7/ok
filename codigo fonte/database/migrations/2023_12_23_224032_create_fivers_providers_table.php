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
        Schema::create('game_providers', function (Blueprint $table) {
            $table->id();
            $table->string('code', 50)->nullable();
            $table->string('name', 50)->nullable();
            $table->bigInteger('rtp')->default(90);
            $table->tinyInteger('status')->default(1);
            $table->bigInteger('views')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('game_providers');
    }
};
