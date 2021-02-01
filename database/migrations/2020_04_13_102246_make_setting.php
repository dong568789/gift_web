<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MakeSetting extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        \DB::transaction(function() {
            \Illuminate\Database\Eloquent\Model::unguard(true);
            \DB::statement('SET FOREIGN_KEY_CHECKS=0;');
            \DB::table('web_settings')->truncate();
            \DB::statement('SET FOREIGN_KEY_CHECKS=1;');
            App\WebSetting::forceCreate([
                'id' => 1,
                'name' => 'ZFB批发',
                'title' => 'ZFB批发',
            ]);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
