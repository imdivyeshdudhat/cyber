<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('accused_profiles', function (Blueprint $table) {
            $table->id();
            $table->foreignId('case_id')->constrained('cases')->cascadeOnDelete();
            
            // Basic Information
            $table->string('name');
            $table->string('photo_path')->nullable();
            $table->date('date_of_birth')->nullable();
            $table->string('signature_path')->nullable();
            
            // Multiple Addresses (JSON array)
            $table->json('addresses')->nullable();
            
            // Business Information
            $table->string('business_name')->nullable();
            $table->string('business_type')->nullable();
            $table->json('business_addresses')->nullable();
            
            // Contact Information
            $table->json('mobile_numbers')->nullable(); // Array of numbers with labels
            $table->json('email_addresses')->nullable(); // Array of emails
            
            // Identity Information
            $table->string('aadhar_number')->nullable();
            $table->string('pan_number')->nullable();
            $table->string('gstin')->nullable();
            
            // Social Media
            $table->json('social_media_profiles')->nullable(); // Array of social media links
            
            // Family Information
            $table->string('fathers_name')->nullable();
            $table->string('mothers_name')->nullable();
            $table->json('family_members')->nullable(); // Array of family members with relationships
            
            // Device Information
            $table->json('devices')->nullable(); // Array of devices (phones, IMEI, etc.)
            
            // Bank Information
            $table->json('bank_accounts')->nullable(); // Array of bank accounts
            
            // Location & Technical Data
            $table->json('ip_addresses')->nullable();
            $table->json('locations')->nullable();
            
            // Additional Information
            $table->text('bio')->nullable();
            $table->json('additional_info')->nullable(); // For any extra information
            
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('accused_profiles');
    }
}; 