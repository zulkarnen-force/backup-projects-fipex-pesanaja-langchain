<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;
use CodeIgniter\Database\RawSql;

class Products extends Migration
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
            'name' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
                'null' => false
            ],
            'description' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
                'null' => true,
            ],
            'exhibition_id' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
            ],
            'author_id' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
            ],
            'total_points' => [
                'type' => 'INT',
                'constraint' => '11',
                'unsigned' => true,
            ],
            'updated_at DATETIME DEFAULT CURRENT_TIMESTAMP',
            'created_at DATETIME DEFAULT CURRENT_TIMESTAMP',
        ]);


        $this->forge->addPrimaryKey('id');
        $this->forge->createTable('product');
    }

    public function down()
    {
        $this->forge->dropTable('product');
    }
}
