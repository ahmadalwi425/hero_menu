<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\bahan_masakanController;

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

Route::get('bahan_masakan', [bahan_masakanController::class, 'index']);
Route::get('byBahan/{id}', [bahan_masakanController::class, 'byBahan']);
Route::get('bahan', [bahan_masakanController::class, 'bahan']);
Route::get('byMasakan/{id}', [bahan_masakanController::class, 'show']);