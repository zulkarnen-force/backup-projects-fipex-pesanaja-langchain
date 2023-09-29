<?php

namespace App\Models;

use CodeIgniter\Model;
use Exception;
use phpDocumentor\Reflection\PseudoTypes\True_;

class ProductThumbnail extends Model
{
    protected $table = 'product_thumbnails';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id',
        'product_id',
        'image_url',
    ];

    protected $updatedField = 'updated_at';

    protected $validationRules = [
        'image_url'        => 'required',
        'product_id'        => 'required',
    ];

    protected $validationMessages = [
        'image_url' => [
            'required' => 'let your nice img url',
        ],
    ];

}
