<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProductionPlanController;
use App\Http\Controllers\ProductionOrderController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\ProductController;

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

// login need token
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    // ppic modul
    Route::apiResource('plans', ProductionPlanController::class);
    // approval ppic untuk manager
    Route::post('plans/{plan}/approve', [ProductionPlanController::class, 'approve']);
    Route::post('plans/{plan}/reject', [ProductionPlanController::class, 'reject']);

    // produksi modul
    Route::get('orders', [ProductionOrderController::class, 'index']);
    Route::get('orders/{order}', [ProductionOrderController::class, 'show']);
    // update status staff produksi
    Route::patch('orders/{order}/status', [ProductionOrderController::class, 'updateStatus']);

    // notifikasi
    Route::get('/notifications', [NotificationController::class, 'index']);
    Route::post('/notifications/{id}/read', [NotificationController::class, 'markAsRead']);

    // load product only
    Route::get('/products', [ProductController::class, 'index']);

});


