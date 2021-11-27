<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\bahan_masakanApiController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('bahan_masakan', [bahan_masakanApiController::class, 'index']);
Route::get('bahan', [bahan_masakanApiController::class, 'bahan']);
Route::get('byBahan/{id}', [bahan_masakanApiController::class, 'byBahan']);
Route::get('byMasakan/{id}', [bahan_masakanApiController::class, 'show']);
