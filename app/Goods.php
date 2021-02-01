<?php

namespace App;

use App\Models\AttachmentCastTrait;

class Goods extends Model
{
    use AttachmentCastTrait;

    protected $guarded = ['id'];

    protected $casts = [
        'goods_category' => 'catalog',
        'account_type' => 'catalog',
        'goods_status' => 'catalog',
        'cover_id' => 'attachment'
    ];

}
