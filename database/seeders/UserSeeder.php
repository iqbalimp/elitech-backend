<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::firstOrCreate(
            ['email' => 'manager@elitech.id'],
            [
                'name' => 'Manager Produksi',
                'password' => Hash::make('password'),
                'role' => 'manager',
            ]
        );

        // User Staff PPIC
        User::firstOrCreate(
            ['email' => 'ppic@elitech.id'],
            [
                'name' => 'Staff PPIC',
                'password' => Hash::make('password'),
                'role' => 'staff_ppic',
            ]
        );

        // User Staff Produksi
        User::firstOrCreate(
            ['email' => 'produksi@elitech.id'],
            [
                'name' => 'Staff Produksi',
                'password' => Hash::make('password'),
                'role' => 'staff_produksi',
            ]
        );
    }
}
