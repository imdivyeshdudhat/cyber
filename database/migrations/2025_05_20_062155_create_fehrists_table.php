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
        Schema::create('fehrists', function (Blueprint $table) {
            $table->id();
            $table->string('case_number')->unique();
            $table->date('action_date')->nullable();              // "તારીખ જા." - Action Date
            $table->json('received_info_dates')->nullable();      // "મુંગાવેલ માહિતી" - Multiple dates
            $table->date('details_received_date')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('fehrists');
    }
};
