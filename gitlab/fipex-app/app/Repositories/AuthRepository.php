<?php

namespace App\Repositories\Common;

use CodeIgniter\Model;
use TheSeer\Tokenizer\Exception;

class AuthRepository extends CommonRepository 
{

    public  $model;
    public  $db;
    
    public function __construct(Model $model)
    {
        $this->model = $model;
        $this->db = \Config\Database::connect();
    }
	
    public function getByEmail(string $email)
    {
        $user = $this->model->where(['email' => $email])->first();

        if (!$user || empty($user))
        {
            throw new Exception('user not found');
        }

        return $user;
    }
}