<?php

namespace App;


class Account extends Model
{
    protected $guarded = ['id'];

    protected $casts = [
        'account_type' => 'catalog',
    ];
}
