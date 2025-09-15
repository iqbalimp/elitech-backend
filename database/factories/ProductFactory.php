<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // Kumpulan kata untuk menghasilkan nama produk yang bervariasi
        $tipeProduk = ['Meja', 'Kursi', 'Lemari', 'Rak Buku'];
        $bahan = ['Kayu Jati', 'Besi Industrial', 'Aluminium', 'Ergonomis'];
        $model = ['Minimalis', 'Eksekutif', 'Gaming', 'Kantor Modern'];

        return [
            'name' => fake()->randomElement($tipeProduk) . ' ' . fake()->randomElement($bahan) . ' ' . fake()->randomElement($model),
            'sku' => 'SKU-' . fake()->unique()->bothify('??##??##'), // Menghasilkan SKU unik seperti SKU-AB12CD34
            'description' => fake()->sentence(15),
        ];
    }
}
