<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductionPlanResource extends JsonResource
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
            'product' => $this->product->name, 
            'quantity' => $this->quantity,
            'due_date' => $this->due_date?->format('d-m-Y'),
            'status' => $this->status,
            'created_by' => new UserResource($this->whenLoaded('createdBy')),
            'approved_at' => $this->approved_at?->format('d-m-Y H:i:s'),
            'created_at' => $this->created_at->format('d-m-Y H:i:s'),
        ];
    }
}
