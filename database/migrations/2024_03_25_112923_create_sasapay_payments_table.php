<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSasapayPaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sasapay_payments', function (Blueprint $table) {
            $table->id();
            $table->text('merchant_code');
            $table->text('client_id');
            $table->string('client_secret');
            $table->integer('mpesa_enabled')->default(1);
            $table->integer('card_enabled')->default(1);
            $table->integer('airtel_enabled')->default(1);
            $table->string('logo');
            $table->string('success_url');
            $table->string('failure_url');
            $table->string('callback_url');
            $table->integer('currency_id')->nullable();
            $table->integer('status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sasapay_payments');
    }
}
