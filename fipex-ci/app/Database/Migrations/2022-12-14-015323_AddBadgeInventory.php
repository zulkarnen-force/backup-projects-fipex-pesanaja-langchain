<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddBadgeInventory extends Migration
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
            'type' => [
                'type' => 'ENUM("platinum","gold","silver")',
                'default' => 'silver',
                'null' => false
            ],
            'count' => [
                'type' => 'INT',
                'constraint' => '100',
                'default' => 100,
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
        $this->forge->createTable('badge_inventory');
    }

    public function down()
    {
        $this->forge->dropTable('badge_inventory');
    }
}
