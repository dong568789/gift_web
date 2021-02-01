<?php

namespace App;


class Order extends Model
{
    protected $guarded = ['id'];

    protected $casts = [
        'order_status' => 'catalog',
        'send_account' => 'catalog',
        'pay_type' => 'catalog',
    ];

    public function accounts()
    {
        return $this->hasMany("App\Account", "oid", "id");
    }

    public function goods()
    {
        return $this->hasOne("App\\Goods", 'id', 'gid');
    }

}
