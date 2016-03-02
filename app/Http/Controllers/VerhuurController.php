<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Mail;
use App\Http\Controllers\Controller;

class VerhuurController extends Controller
{
    public function Submit(Requests\VerhuurFormRequest $request) 
    {
    	$data = ['booking'=>$request->all()];
		Mail::send('emails.booking.details', $data, function ($message) {
		    $message->from(config('mail.from.address'), config('mail.from.name'));
			$message->subject('New booking request');
		    $message->to(config('cms.email'));
		});

		Mail::send('emails.booking.confirmation', [], function ($message) use ($request) {
		    $message->from(config('mail.from.address'), config('mail.from.name'));
			$message->subject(trans('booking.client_email_subject'));
		    $message->to($request->input('email'));
		});

		// booking confirmation

    	return redirect(route('booking.form'))->with('status', trans('booking.success_message'));
    }
}
