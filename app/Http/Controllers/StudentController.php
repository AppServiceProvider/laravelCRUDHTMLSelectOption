<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
class StudentController extends Controller
{
    //
    function index($email,$name,$mobile){
        $user = Student::firstOrNew(['email' => $email]);
        $user->name = $name;
        $user->mobile = $mobile;
        $user->save();

    }
}
