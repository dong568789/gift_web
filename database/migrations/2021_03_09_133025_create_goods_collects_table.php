<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGoodsCollectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('goods_collects', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('title')->comment="Title";
            $table->integer('integral')->comment="积分";
            $table->decimal('price', 8,1)->default(0)->comment="单价";
            $table->decimal('original_price', 8, 1)->default(0)->comment="原始价格";
            $table->integer('inventory')->default(0)->comment="库存";
            $table->json('images')->comment="封面";
            $table->json("content")->comment="";
            $table->json('attr')->nullable()->comment="";
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
        Schema::dropIfExists('goods_collects');
    }
}
