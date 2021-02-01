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
            $table->string('alias')->comment="别名id";
            $table->string('title')->comment="Title";
            $table->integer('integral')->comment="积分";
            $table->unsignedInteger('goods_category')->index()->comment="商品分类";
            $table->integer('inventory')->default(0)->comment="库存";
            $table->integer('sales')->default(0)->comment="销量";
            $table->decimal('price', 8, 2)->default(0)->comment="Price";
            $table->unsignedInteger('cover_ids')->default(0)->comment="封面";
            $table->integer('order')->default(0)->comment="Sort";
            $table->string("description")->nullable()->comment="描述";
            $table->unsignedInteger("goods_status")->comment="";
            $table->text("content")->nullable()->comment="";
            $table->timestamps();
        });

        Schema::create('goods_attr', function (Blueprint $table) {
            $table->integer('id', true);
            $table->integer('gid')->comment="goods id";
            $table->string('title')->comment="goods_attr";
            $table->json('value')->comment="attr";
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
        Schema::dropIfExists('goods');
        Schema::dropIfExists('goods_attr');
    }
}
