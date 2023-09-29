<?php

namespace App\Models;

use CodeIgniter\Model;


class ProductMember extends Model
{
    protected $table = 'product_members';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id',
        'product_id',
        'user_id',
    ];

    protected $updatedField = 'updated_at';

    protected $validationRules = [
        'product_id'        => 'required',
        'user_id'        => 'required',
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
