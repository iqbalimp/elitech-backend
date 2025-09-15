<?php

namespace App\Notifications;

use App\Models\ProductionPlan;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class PlanSubmittedForApproval extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     */
    public function __construct(public ProductionPlan $plan) {}

    public function via(object $notifiable): array
    {
        
        return ['database'];
    }

    
    public function toDatabase(object $notifiable): array
    {
        return [
            'message' => "Rencana produksi #{$this->plan->id} untuk produk '{$this->plan->product->name}' menunggu persetujuan Anda.",
            'link' => "/production-plans/{$this->plan->id}",
            'plan_id' => $this->plan->id,
        ];
    }
}
