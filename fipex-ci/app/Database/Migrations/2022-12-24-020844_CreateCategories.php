<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateCategories extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'id' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
                'null'  => false,
                'unique' => true
            ],
            'category_name' => [
                'type' => 'VARCHAR',
                'constraint' => '255',
                'null'  => false,
            ],
            'exhibitionid_id' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
            ],
            'user_id' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
            ],
            'updated_at DATETIME DEFAULT CURRENT_TIMESTAMP',
            'created_at DATETIME DEFAULT CURRENT_TIMESTAMP',
        ]);


        $this->forge->addPrimaryKey('id');
        $this->forge->createTable('categories');
    }

    public function down()
    {
        $this->forge->dropTable('categories');
    }
}
