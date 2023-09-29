<?php

namespace App\Models;

use CodeIgniter\Model;
use Exception;

class Product extends Model
{
    protected $table = 'product_test';
    protected $allowedFields = [
        'id',
        'name',
        'description',
        'exhibition_id',
        'author_id',
        'total_points'
    ];

    protected $updatedField = 'updated_at';


    protected $validationRules    = [];
    protected $validationMessages = [];
    // protected $beforeInsert = ['beforeInsert'];
    // protected $beforeUpdate = ['beforeUpdate'];

    // protected function beforeInsert(array $data): array
    // {
    //     return $this->getUpdatedDataWithHashedPassword($data);
    // }

    // protected function beforeUpdate(array $data): array
    // {
    //     return $this->getUpdatedDataWithHashedPassword($data);
    // }

    // private function getUpdatedDataWithHashedPassword(array $data): array
    // {
    //     if (isset($data['data']['password'])) {
    //         $plaintextPassword = $data['data']['password'];
    //         $data['data']['password'] = $this->hashPassword($plaintextPassword);
    //     }
    //     $data['data']['id'] = uniqid();
    //     return $data;
    // }

    // private function hashPassword(string $plaintextPassword): string
    // {
    //     return password_hash($plaintextPassword, PASSWORD_BCRYPT);
    // }
                                      
    public function getProduct($id = false)
    {
        
        $result = $this->findAll();
        return $result;

    }


    public function addProduct()
    {
        $data = [
            'id' => 'asad',
            'name' => 'aasd',
            'description' => 'aasd',
            'exhibition_id' => 'asad',
            'author_id' => 'asad',
            'total_points' => 100,
        ];

        return $this->insert($data);
    }

    public function findUserByUid(string $uid)
    {
        $user = $this
            ->asArray()
            ->where(['uid' => $uid])
            ->first();

        if (!$user) 
            throw new Exception('User does not exist for specified email address');

        return $user;
    }

    
}
