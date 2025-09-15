<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('production_orders', function (Blueprint $table) {
        $table->id();
        $table->foreignId('production_plan_id')->constrained('production_plans');
        $table->enum('status', ['menunggu', 'sedang_dikerjakan', 'selesai', 'diserahkan_ke_gudang'])->default('menunggu');
        $table->integer('quantity_actual')->nullable();
        $table->integer('quantity_reject')->nullable()->default(0);
        $table->timestamp('started_at')->nullable();
        $table->timestamp('finished_at')->nullable();
        $table->timestamp('delivered_at')->nullable();
        $table->timestamps();
    });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('production_orders');
    }
};
