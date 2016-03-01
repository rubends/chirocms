<?php
namespace App\Listeners;
use Carbon\Carbon;
class UpdateLastLoginOnLogin
{
    public function handle($event)
    {
    	$user = $event->user;
        $user->last_login_at = Carbon::now();
        $user->save();
    }
}