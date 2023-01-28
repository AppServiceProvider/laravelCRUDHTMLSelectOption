<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
class UserController extends Controller
{
    //
    function addUser(){
        $user = new User;
        $user->name = "tina";
        $user->email = "tina@gmail.com";
        $user->password = \Hash::make('12345678');
        $user->save();
        dd($user);

    }
}
