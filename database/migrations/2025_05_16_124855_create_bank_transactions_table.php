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
        Schema::create('bank_transactions', function (Blueprint $table) {
            $table->id();
            $table->string('case_id')->index();
            $table->string('acknowledgement_no')->nullable();
            $table->string('account_id')->nullable(); // Wallet / PG / PA / Account No
            $table->string('transaction_id')->nullable();
            $table->string('transaction_id_2')->nullable(); // For Money Transfer
            $table->enum('transaction_type', ['ATM Withdrawal', 'Money Transfer', 'Other', 'Put on Hold']);

            // Dates
            $table->dateTime('transaction_date')->nullable();
            $table->dateTime('put_on_hold_date')->nullable();
            $table->dateTime('withdrawal_date')->nullable();
            $table->dateTime('date_of_action')->nullable();

            // Amounts
            $table->decimal('withdrawal_amount', 18, 2)->nullable();
            $table->decimal('transaction_amount', 18, 2)->nullable();
            $table->decimal('put_on_hold_amount', 18, 2)->nullable();
            $table->decimal('disputed_amount', 18, 2)->nullable();

            // ATM-related
            $table->string('atm_id')->nullable();
            $table->string('atm_location')->nullable();

            // Bank Transfer-specific
            $table->string('bank_name')->nullable();
            $table->string('layer')->nullable();
            $table->string('ifsc_code')->nullable();

            // Common fields
            $table->string('reference_no')->nullable();
            $table->text('remarks')->nullable();
            $table->text('action_taken_by_bank')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('bank_transactions');
    }
};
