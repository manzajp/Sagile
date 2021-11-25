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
            'body' => 'This is for test mail using Gmail'
        ];

        Mail::to("helpdesk.sagile@gmail.com")->send(new SagileMail($details));
    }

    public function sendLoginConfirm(String $email){
        $details = [
            'title' => 'Login Notification',
            'body' => 'Your account has logged into the system. Let us know if this is not you!'
        ];

        Mail::to($email)->send(new SagileMail($details));
    }
}
