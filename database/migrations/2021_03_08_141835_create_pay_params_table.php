<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePayParamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pay_params', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('mark')->comment="";
            $table->json('value')->comment="";
            $table->unsignedInteger('pay_type')->coment="";
            $table->unsignedInteger('param_status')->comment="";
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
        Schema::dropIfExists('pay_params');
    }
}
