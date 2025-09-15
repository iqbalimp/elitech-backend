<?php

namespace App\Notifications;

use App\Models\ProductionOrder;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class ProductionOrderStatusUpdated extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     */
    public function __construct(public ProductionOrder $order, public string $userChanger) {}

    public function via(object $notifiable): array
    {
        return ['database'];
    }

    public function toDatabase(object $notifiable): array
    {
        $statusText = str_replace('_', ' ', $this->order->status);
        return [
            'message' => "Status order #{$this->order->id} telah diubah menjadi '{$statusText}' oleh {$this->userChanger}.",
            'link' => "/production-orders/{$this->order->id}",
            'order_id' => $this->order->id,
            'status' => $this->order->status,
        ];
    }
}
