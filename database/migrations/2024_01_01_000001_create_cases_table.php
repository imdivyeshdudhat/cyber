<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('cases', function (Blueprint $table) {
            $table->id();
            $table->string('acknowledgement_no')->unique();
            $table->string('category');
            $table->string('sub_category');
            $table->string('user_id');
            $table->enum('money_lost', ['Yes', 'No']);
            $table->dateTime('incident_datetime');
            
            // Complainant/Victim Details
            $table->string('complainant_name');
            $table->string('complainant_mobile');
            $table->string('complainant_email')->nullable();
            $table->string('complainant_pincode');
            $table->string('police_station');
            $table->string('complainant_district');
            $table->string('complainant_state');
            
            // Suspect Details
            $table->string('suspect_state');
            
            // Additional Details
            $table->text('complaint_additional_info')->nullable();
            $table->text('fraudulent_transaction_details')->nullable();
            
            // Case Status
            $table->enum('status', ['pending', 'assigned', 'in_progress', 'resolved', 'closed'])->default('pending');
            
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('cases');
    }
}; 