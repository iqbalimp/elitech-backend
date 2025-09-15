<?php

namespace App\Notifications;

use App\Models\ProductionOrder;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class NewProductionOrderCreated extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     */
    public function __construct(public ProductionOrder $order) {}

    public function via(object $notifiable): array
    {
        return ['database'];
    }

    public function toDatabase(object $notifiable): array
    {
        $productName = $this->order->productionPlan->product->name;
        return [
            'message' => "Order produksi baru #{$this->order->id} untuk produk '{$productName}' telah dibuat dan siap dikerjakan.",
            'link' => "/production-orders/{$this->order->id}",
            'order_id' => $this->order->id,
        ];
    }
}
