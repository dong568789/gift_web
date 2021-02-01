<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->integer('id', true);
            $table->string('order_id')->unique()->comment="";
            $table->integer('gid')->index()->comment="";
            $table->json('goods_type')->nullable()->comment="";
            $table->decimal('amount', 8, 2)->default(0)->comment="";
            $table->integer('number')->default(0)->comment="";
            $table->string('third_id')->nullable()->comment="三方";
            $table->unsignedInteger('order_status')->default(0)->index()->comment="status";
            $table->unsignedInteger('send_status')->default(0)->index()->comment="send account status";
            $table->integer('integral')->default(0)->comment="积分";
            $table->string("goods_desc")->nullable()->comment="商品名称";
            $table->unsignedInteger("pay_type")->index()->comment="支付方式";
            $table->string('ip')->nullable()->comment="IP";
            $table->json('contact')->nullable()->comment="联系方式";
            $table->timestamp('callback_at')->nullable()->comment="回调时间";

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
        Schema::dropIfExists('orders');
    }
}