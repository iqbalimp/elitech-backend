<?php

namespace App\Notifications;

use App\Models\ProductionPlan;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class PlanHasBeenProcessed extends Notification
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
        $statusText = ($this->plan->status === 'disetujui') ? 'DISETUJUI' : 'DITOLAK';
        return [
            'message' => "Rencana produksi #{$this->plan->id} yang Anda buat telah di-proses dengan status: {$statusText}.",
            'link' => "/production-plans/{$this->plan->id}",
            'plan_id' => $this->plan->id,
            'status' => $this->plan->status,
        ];
    }
}
