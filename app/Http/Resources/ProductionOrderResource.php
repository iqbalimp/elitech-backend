<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductionOrderResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'plan_details' => new ProductionPlanResource($this->productionPlan),
            'status' => $this->status,
            'quantity_actual' => $this->quantity_actual,
            'quantity_reject' => $this->quantity_reject,
            'started_at' => $this->started_at,
            'finished_at' => $this->finished_at,
            'logs' => ProductionLogResource::collection($this->whenLoaded('logs')),
        ];
    }
}
