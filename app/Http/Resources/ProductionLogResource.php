<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductionLogResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'changed_by' => $this->user->name,
            'from' => $this->status_from,
            'to' => $this->status_to,
            'notes' => $this->notes,
            'timestamp' => $this->created_at->format('d-m-Y H:i:s'),
        ];
    }
}
