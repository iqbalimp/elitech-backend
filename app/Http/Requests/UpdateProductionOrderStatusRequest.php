<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;

class UpdateProductionOrderStatusRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        //user staffproduksi
        return Auth::user()->role === 'staff_produksi';
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'status' => 'required|in:sedang_dikerjakan,selesai,diserahkan_ke_gudang',
            'quantity_actual' => 'required_if:status,selesai|nullable|integer|min:0',
            'quantity_reject' => 'required_if:status,selesai|nullable|integer|min:0',
            'notes' => 'nullable|string|max:255',
        ];
    }
}
