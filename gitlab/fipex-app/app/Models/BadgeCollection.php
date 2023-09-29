<?php

namespace App\Models;

use CodeIgniter\Model;


class BadgeCollection extends Model
{
    protected $table = 'badges_collection';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id',
        'badge_type',
        'badge_count',
        'exhibition_id',
        'product_id',
        'user_id',
    ];

    protected $updatedField = 'updated_at';

    protected $validationRules = [
        'badge_type'        => 'required|in_list[silver,gold,platinum]',
        'badge_count' => 'required',
        'user_id'        => 'required',
        'exhibition_id'        => 'required'
    ];

    protected $validationMessages = [
        'comment' => [
            'product_id' => 'product_id required hehe',
        ],
        'user_id' => [
            'required' => 'user id required hehe',
        ],
    ];

}
