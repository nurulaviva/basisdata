<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::create([
            'name' => 'admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('admin'),
            'role' => 'admin',
            'address' => 'Jember',
            'notelp' => '082141793277',
            'image' => 'Admin1.png',
        ]); 

        User::create([
            'name' => 'alena',
            'email' => 'alena@gmail.com',
            'password' => Hash::make('alena123'),
            'role' => 'employee',
            'address' => 'Jember',
            'notelp' => '085823623958',
            'image' => 'avatar-02.jpg',
        ]);

        User::create([
            'name' => 'zea',
            'email' => 'zea@gmail.com',
            'password' => Hash::make('zea123'),
            'role' => 'admin',
            'address' => 'Jember',
            'notelp' => '082231314141',
            'image' => 'avatar-02.jpg',
        ]);

    }
}
