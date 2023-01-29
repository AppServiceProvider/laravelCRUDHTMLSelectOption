<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;

class StudentController extends Controller
{
    //
    function index()
    {
        // $user = Student::firstOrNew(['email' => $email]);
        // $user->name = $name;
        // $user->mobile = $mobile;
        // $user->save();


        // return Student::insertOrIgnore(['email' => $email,'name'=>$name,'mobile'=>$mobile]);
        return Student::insertOrIgnore(
            ['email' => 'tina@gmail.com', 'name' => 'akter', 'mobile' => '123456']
        );

        // return Student::insertOrIgnore([
        //     ['email' => 'sadia@gmail.com', 'name' => 'chowdhori', 'mobile' => '123456'],
        //     ['email' => 'sadia@gmail.com', 'name' => 'chowdhori', 'mobile' => '123456']
        // ]
        // );
        // $user = Student::firstOrCreate(['email' => $email, 'name'=>$name]);
        // $user->save();

    }
}
