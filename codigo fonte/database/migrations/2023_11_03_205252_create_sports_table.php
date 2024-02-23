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
        Schema::create('sports', function (Blueprint $table) {
            $table->id();
            $table->string('key', 190);
            $table->foreignId('sport_category_id')->constrained('sport_categories')->cascadeOnDelete();
            $table->string('title', 150);
            $table->string('description');
            $table->tinyInteger('active')->default(1);
            $table->tinyInteger('has_outrights')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sports');
    }
};
