<?php

namespace App\Repositories\Products;

use App\Repositories\Common\CommonRepository;
use CodeIgniter\Model;

class ProductRepository extends CommonRepository
{
    public function __construct(Model $model)
    {
        parent::__construct($model);
    }


    // public function getAuthor()
    // {
    //     $query = $this->model->select('*')
    //               ->from('users')
    //               ->join('users', 'person.id = work.personname')
    //               ->get();

    // return $query;
    // }
}