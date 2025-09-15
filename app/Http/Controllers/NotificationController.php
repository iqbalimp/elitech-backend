<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class NotificationController extends Controller
{
    public function index()
    {
        $user = auth()->user();
        
        $notifications = [
            'unread' => $user->unreadNotifications,
            'read' => $user->readNotifications,
        ];

        return response()->json($notifications);
    }

    public function markAsRead(Request $request, $id)
    {
        $user = auth()->user();
        $notification = $user->unreadNotifications()->where('id', $id)->first();

        if ($notification) {
            $notification->markAsRead();
            return response()->json(['message' => 'Notification marked as read']);
        }

        return response()->json(['message' => 'Notification not found or already read'], 404);
    }
}
