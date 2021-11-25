<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Http\Controllers\MailController;
use App\Http\Controllers\Auth\LoginController;

class UsersController extends Controller
{
    public function login()   
    {
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            $user = Auth::user();
            $success['token'] = $user->createToken('appToken')->accessToken;
            (new MailController)->sendLoginConfirm("helpdesk.sagile@gmail.com");

            return response()->json([
                'success' => true,
                'token' => $success,
                'user' => $user
            ]);
        } 
        
        else {
            return response()->json([
                'success' => false,
                'message' => 'Invalid email or password.',
            ],401);
        }
    }
}
