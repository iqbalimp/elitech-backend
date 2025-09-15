<?php

namespace App\Http\Controllers;

use App\Http\Requests\UpdateProductionOrderStatusRequest;
use App\Http\Resources\ProductionOrderResource;
use App\Models\ProductionOrder;
use App\Models\User;
use App\Notifications\ProductionOrderStatusUpdated;
use Illuminate\Http\Request;

class ProductionOrderController extends Controller
{

    public function index()
    {
        $orders = ProductionOrder::with(['productionPlan.product', 'logs.user'])->latest()->paginate();
        return ProductionOrderResource::collection($orders);
        
    }

    public function show(ProductionOrder $order)
    {
        return new ProductionOrderResource($order->load(['productionPlan.product', 'logs.user']));
    }

    public function updateStatus(UpdateProductionOrderStatusRequest $request, ProductionOrder $order)
    {
        $validated = $request->validated();
        $oldStatus = $order->status;

        $order->status = $validated['status'];

        if ($validated['status'] === 'sedang_dikerjakan' && is_null($order->started_at)) {
            $order->started_at = now();
        } elseif ($validated['status'] === 'selesai') {
            $order->finished_at = now();
            $order->quantity_actual = $validated['quantity_actual'];
            $order->quantity_reject = $validated['quantity_reject'];
        } elseif ($validated['status'] === 'diserahkan_ke_gudang') {
            $order->delivered_at = now();
        }
        
        $order->save();

        $order->logs()->create([
            'user_id' => auth()->id(),
            'status_from' => $oldStatus,
            'status_to' => $validated['status'],
            'notes' => $validated['notes'] ?? null,
        ]);

        // -- KIRIM NOTIFIKASI KE MANAJER --
        $managers = User::where('role', 'manager')->get();
        $changerName = auth()->user()->name;
        foreach ($managers as $manager) {
            $manager->notify(new ProductionOrderStatusUpdated($order, $changerName));
        }

        return new ProductionOrderResource($order->load('productionPlan.product', 'logs.user'));
    }

}
