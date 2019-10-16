<?php

use Illuminate\Http\Request;

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

Route::post('register', 'UserController@register');
Route::post('login', 'UserController@login');
Route::post('user/{user}', 'UserController@uploadPP');
Route::post('userKtp/{user}', 'UserController@uploadPhotoKTP');
Route::post('userHalfBody/{user}', 'UserController@uploadPhotoHalfBody');
Route::post('userKK/{user}', 'UserController@uploadPhotoKK');
Route::post('addcategory', 'CategoryController@addCategory');
Route::post('adddonation', 'DonationController@addDonation');
Route::get('category', 'CategoryController@category');
Route::get('donation', 'DonationController@donation');
Route::post('addDonator', 'DonatorController@addDonator');
Route::post('addPayment', 'PaymentmethodController@addPayment');
Route::get('donator', 'DonatorController@donator');
Route::get('payment', 'PaymentmethodController@payment');
Route::post('donation/{donation_category}', 'DonationController@donationByCategory');
Route::post('updatenorek/{user}', 'UserController@updateNoRek');

Route::get('categoryall', 'CategoryController@categoryAuth')->middleware('jwt.verify');
Route::get('user', 'UserController@getAuthenticatedUser')->middleware('jwt.verify');

Route::middleware('auth:api')->get('/user', function (Request $request) {
  return $request->user();
});
