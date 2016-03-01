<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->truncate();
        DB::table('users')->insert([
        	[
        		'name' => 'Admin',
        		'email' => 'test@host.local',
        		'password' => bcrypt('secret')
        	],
        	[
        		'name' => 'Admin 2',
        		'email' => 'test2@host.local',
        		'password' => bcrypt('secret')
        	]
        ]);
    }
}
