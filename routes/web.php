<?php

use App\Http\Controllers\DonorController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;
use App\Models\LogicModel;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::resource('donor', DonorController::class);
Route::get('/add-user', [UserController::class, 'addUser']);
Route::get('/get-data', [LogicModel::class, 'getData']);
Route::get('/test/{email}/{name}/{mobile}', [StudentController::class, 'index']);
