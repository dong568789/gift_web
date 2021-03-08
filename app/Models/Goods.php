<?php

namespace App\Models;

use App\Model;

class Goods extends Model
{
    use AttachmentCastTrait;

    protected $guarded = ['id'];

    protected $casts = [
        'goods_category' => 'catalog',
        'goods_status' => 'catalog',
        'cover' => 'attachment',
        'att_ids' => 'array',
    ];

    public function attr()
    {
        return $this->hasMany("App\\Models\\GoodsAttr", 'gid', 'id');
    }
}


