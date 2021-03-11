<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGoodsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('goods', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('title')->comment="Title";
            $table->integer('integral')->comment="积分";
            $table->decimal('price', 8,1)->default(0)->comment="单价";
            $table->decimal('original_price', 8, 1)->default(0)->comment="原始价格";
            $table->unsignedInteger('goods_category')->nullable()->comment="商品分类";
            $table->integer('inventory')->nullable()->default(0)->comment="库存";
            $table->integer('hot')->nullable()->default(0)->comment="热度";
            $table->unsignedInteger('cover')->nullable()->default(0)->comment="封面";
            $table->json('att_ids')->nullable()->default(0)->comment="5图";
            $table->string('attr')->nullable()->comment="属性";
            $table->integer('order')->nullable()->default(0)->comment="Sort";
            $table->string("description")->nullable()->comment="描述";
            $table->unsignedInteger("goods_status")->comment="";
            $table->text("content")->nullable()->comment="";
            $table->timestamps();
        });

//        Schema::create('goods_attr', function (Blueprint $table) {
//            $table->integer('id', true);
//            $table->integer('gid')->comment="goods id";
//            $table->string('title')->comment="goods_attr";
//            $table->json('value')->comment="单价 {name:'',price:''}";
//
//            $table->timestamps();
//        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('goods');
        Schema::dropIfExists('goods_attr');
    }
}
