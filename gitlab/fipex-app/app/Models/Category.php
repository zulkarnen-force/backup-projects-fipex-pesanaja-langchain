<?php

namespace App\Models;

use CodeIgniter\Model;
use Exception;
use phpDocumentor\Reflection\PseudoTypes\True_;

class Category extends Model
{
    protected $table = 'categories';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id',
        'category_name',
        'exhibition_id',
    ];



    protected $updatedField = 'updated_at';

    
    protected $validationRules = [
        'id' => 'required',
        'category_name' => 'required',
        'exhibition_id' => 'required',
    ];

    protected $validationMessages = [

    ];


}
