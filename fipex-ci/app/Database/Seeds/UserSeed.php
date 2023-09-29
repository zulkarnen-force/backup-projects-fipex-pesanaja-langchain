<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class UserSeed extends Seeder
{
    public function run()
    {
        $data = [
            'id'       => 'asdasd',
            'name' => 'false',
            'email'    => 'asdas@theempire.com',
            'password'    => 'sadasd@theempire.com',
            'is_temporary'    => false,
            'avatar'    => 'https://google.com/img/avatar.png',
            'bio'    => 'i am superman',
        ];

        // Simple Queries
        // $this->db->query('INSERT INTO user (username, email) VALUES(:username:, :email:)', $data);

        // Using Query Builder
        $this->db->table('user')->insert($data);
    }
}

?>