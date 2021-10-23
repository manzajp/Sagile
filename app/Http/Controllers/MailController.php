<?php

namespace App\Http\Controllers;

use App\Mail\SagileMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    public function sendEmail(){
        $details = [
            'title' => 'Mail from SAgile',
            'body' => 'This is for testing mail using gmail'
        ];

        Mail::to("helpdesk.sagile@gmail.com")->send(new SagileMail($details));
        return "Email Sent";
    }
}
