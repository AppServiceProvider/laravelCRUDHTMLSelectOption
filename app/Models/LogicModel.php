<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LogicModel extends Model
{
    use HasFactory;
    function getData(){
        // $data = UserModel::all();
        // $data = User::whereDate('created_at', '>=', date('Y-m-d'))->get();
        $data = UserModel::whereDate('created_at', '>=', date('Y-m-d'))->get();

        // return $data;
        return view('data', ['data' => $data]);
    }
}
