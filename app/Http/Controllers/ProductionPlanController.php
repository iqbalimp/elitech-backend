<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProductionPlanRequest;
use App\Http\Resources\ProductionPlanResource;
use App\Models\ProductionPlan;
use Illuminate\Http\Request;
use App\Jobs\NotifyProductionStaffJob;
use App\Models\User;
use App\Notifications\NewProductionOrderCreated;
use App\Notifications\PlanHasBeenProcessed;
use App\Notifications\PlanSubmittedForApproval;
use Illuminate\Support\Facades\Gate;


class ProductionPlanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $plans = ProductionPlan::with(['product', 'createdBy'])->latest()->paginate();
        return ProductionPlanResource::collection($plans);
    }

    public function store(StoreProductionPlanRequest $request)
    {
        $plan = ProductionPlan::create([
            'created_by' => auth()->id(),
            'status' => 'menunggu_persetujuan',
        ] + $request->validated());

        // -- KIRIM NOTIFIKASI KE MANAJER --
        $managers = User::where('role', 'manager')->get();
        foreach ($managers as $manager) {
            $manager->notify(new PlanSubmittedForApproval($plan));
        }

        return new ProductionPlanResource($plan->load('product', 'createdBy'));
    }

    public function show(ProductionPlan $plan)
    {
        return new ProductionPlanResource($plan->load(['product', 'createdBy', 'approvedBy']));
    }

    public function update(Request $request, ProductionPlan $plan)
    {
        if (auth()->id() !== $plan->created_by || $plan->status !== 'menunggu_persetujuan') {
            return response()->json(['message' => 'Action Forbidden'], 403);
        }

        $validated = $request->validate([
            'product_id' => 'sometimes|required|exists:products,id',
            'quantity' => 'sometimes|required|integer|min:1',
            'due_date' => 'sometimes|required|date|after:today',
        ]);
        
        $plan->update($validated);
        return new ProductionPlanResource($plan);
    }

    public function approve(ProductionPlan $plan)
    {
        if (auth()->user()->role !== 'manager') {
             return response()->json(['message' => 'Forbidden'], 403);
        }

        if ($plan->status !== 'menunggu_persetujuan') {
            return response()->json(['message' => 'This plan has already been processed.'], 422);
        }

        $planCreator = $plan->createdBy;

        $plan->update([
            'status' => 'disetujui',
            'approved_by' => auth()->id(),
            'approved_at' => now(),
        ]);

        $order = $plan->productionOrder()->create([]);

        // -- KIRIM NOTIFIKASI KE STAFF PPIC --
        $planCreator->notify(new PlanHasBeenProcessed($plan));

        // -- KIRIM NOTIFIKASI KE STAFF PRODUKSI --
        $productionStaff = User::where('role', 'staff_produksi')->get();
        foreach ($productionStaff as $staff) {
            $staff->notify(new NewProductionOrderCreated($order));
        }

        return response()->json([
            'message' => 'Production plan approved and order created.',
            'plan' => new ProductionPlanResource($plan)
        ]);
    }

    public function reject(Request $request, ProductionPlan $plan)
    {
        if (auth()->user()->role !== 'manager') {
            return response()->json(['message' => 'Forbidden'], 403);
        }

        if ($plan->status !== 'menunggu_persetujuan') {
            return response()->json(['message' => 'This plan has already been processed.'], 422);
        }

        $planCreator = $plan->createdBy;

        $plan->update(['status' => 'ditolak']);

        // -- KIRIM NOTIFIKASI KE STAFF PPIC --
        $planCreator->notify(new PlanHasBeenProcessed($plan));

        return response()->json([
            'message' => 'Production plan has been rejected.',
            'plan' => new ProductionPlanResource($plan)
        ]);
    }

    public function destroy(ProductionPlan $plan)
    {
        if (auth()->id() !== $plan->created_by || $plan->status !== 'menunggu_persetujuan') {
            return response()->json(['message' => 'Action Forbidden'], 403);
        }

        $plan->delete();
        return response()->json(null, 204); 
    }
}
