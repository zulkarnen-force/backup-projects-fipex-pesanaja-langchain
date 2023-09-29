<?php

namespace App\Models;

use CodeIgniter\Model;
use Exception;

class BadgeInventoryModel extends Model
{
    protected $table = 'badge_inventory';
    protected $updatedField = 'updated_at';

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
                                      
    public function get($id = false)
    {

        if ($id === false) {
            $result = $this->find();
            return $result;
        }

        // $user = $this
        //     ->asArray()
        //     ->where(['email' => $emailAddress])
        //     ->first();

        // if (!$user) 
        //     throw new Exception('User does not exist for specified email address');

        // return $user;
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
