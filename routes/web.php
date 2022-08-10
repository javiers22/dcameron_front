<?php

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
Route::get("index","App\Http\Controllers\AppController@listado");
Route::get("inserthotel",function(){return view("insertar_hotel");});
Route::get("inserthotel1","App\Http\Controllers\AppController@insertar_hotel");
Route::get("habitaciones","App\Http\Controllers\AppController@habitaciones_por_hotel");
Route::get("inserthab","App\Http\Controllers\AppController@insertar_habitacion");
Route::get("inserthab1","App\Http\Controllers\AppController@insertar_habitacion1");