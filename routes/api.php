<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register', 'Api\AuthController@register')->name('register');
Route::post('/login', 'Api\AuthController@login')->name('login');
Route::get('/login', function(){
	return response()->json(['message'=>'unauthenticated']);
});

Route::group(['middleware' => 'auth:api'], function(){
	Route::post('/user/{id}/update', 'Api\UserController@update');
	Route::post('/user/{id}/delete', 'Api\UserController@destroy');
	Route::get('/user/{id}/detail', 'Api\UserController@detail');
	Route::post('/profile', 'Api\UserController@profile');
	Route::get('/user', 'Api\UserController@index');
	Route::post('/user/change_password', 'Api\UserController@changePassword');
	Route::post('/sms/send', 'Api\SMSController@send');
	Route::post('/logout', 'Api\AuthController@logout');
	Route::post('/sms/get_sent', 'Api\SMSController@getSentSMS');
	Route::post('/sms/get_received', 'Api\SMSController@getReceivedSMS');
});

// Twilio webhook
Route::post('/sms/reply', 'Api\SMSController@reply')->middleware('twilio.validator');