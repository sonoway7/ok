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
        Schema::create('football_venues', function (Blueprint $table) {
            $table->id();
            $table->integer('vunue_id');
            $table->string('name');
            $table->string('address')->nullable();
            $table->string('city', 50)>nullable();
            $table->integer('capacity')->nullable();
            $table->string('surface', 30)->nullable();
            $table->string('image')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('football_venues');
    }
};
