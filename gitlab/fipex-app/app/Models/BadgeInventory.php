<?php

namespace App\Models;

use CodeIgniter\Model;

class BadgeInventory extends Model
{
    protected $table = 'badge_inventories';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id',
        'badge_type',
        'badge_count',
        'user_id',
        'exhibition_id',
        'product_id',
    ];

    protected $updatedField = 'updated_at';

    protected $validationRules = [
        'badge_type'        => 'required|in_list[silver,gold,platinum]',
        'badge_count'        => 'required',
        'user_id'        => 'required',
        'exhibition_id'        => 'required',
    ];

    protected $validationMessages = [
        'badge_count' => [
            'required' => 'badge_count required hehe',
        ],
        'user_id' => [
            'required' => 'user id required hehe',
        ],
    ];

    
    
}
