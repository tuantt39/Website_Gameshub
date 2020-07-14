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

//HomePage
//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', 'HomeController@index');

Route::get('/trang-chu','HomeController@index');

//Home
Route::get('/', 'HomeController@index');
Route::get('/trang-chu','HomeController@index');
Route::post('/tim-kiem', 'HomeController@search');

//User Login
Route::get('/user','UserController@Index');
Route::get('/pages/home','UserController@home_show');
Route::post('/trang-chu','UserController@home');
Route::get('/logout','UserController@logout');

Route::get('/userSignup','UserSignupController@Index');

Route::get('/san-pham','ProductController@product');

Route::get('/the-loai','CategoryController@category');

//Category Product Home
Route::get('/danh-muc-san-pham/{category_id}', 'CategoryProductController@show_category_home');

//Publisher Home
Route::get('/nha-phat-hanh/{publisher_id}','PublisherController@show_publisher_home');

//Product Home
Route::get('/san-pham/{product_id}','ProductController@details_product');
Route::get('/san-pham','ProductController@show_all_product');

//Cart

Route::get('/delete-to-cart/{rowId}','CartController@delete_to_cart');
Route::post('/update-cart','CartController@update_cart');
Route::post('/save-cart','CartController@save_cart');
Route::get('/show-cart','CartController@show_cart');



//AdminPage
Route::get('/admin','AdminCtrler@index');
Route::get('/admin/dashboard','AdminCtrler@dashboard_show');
Route::post('/admin-dashboard','AdminCtrler@dashboard');
Route::get('/logout','AdminCtrler@logout');


//Category Product
Route::get('/admin/add-category-product','CategoryProductController@add_category_product');
Route::get('/admin/all-category-product','CategoryProductController@all_category_product');
Route::get('/admin/edit-category-product/{category_product_id}','CategoryProductController@edit_category_product');
Route::get('/admin/delete-category-product/{category_product_id}','CategoryProductController@delete_category_product');
Route::get('/admin/active-category-product/{category_product_id}','CategoryProductController@active_category_product');
Route::get('/admin/unactive-category-product/{category_product_id}','CategoryProductController@unactive_category_product');

Route::post('/admin/save-category-product','CategoryProductController@save_category_product');
Route::post('/admin/update-category-product/{category_product_id}','CategoryProductController@update_category_product');

//Publisher
Route::get('/admin/add-publisher','PublisherController@add_publisher');
Route::get('/admin/all-publisher','PublisherController@all_publisher');
Route::get('/admin/edit-publisher/{publisher_id}','PublisherController@edit_publisher');
Route::get('/admin/delete-publisher/{publisher_id}','PublisherController@delete_publisher');
Route::get('/admin/active-publisher/{publisher_id}','PublisherController@active_publisher');
Route::get('/admin/unactive-publisher/{publisher_id}','PublisherController@unactive_publisher');

Route::post('/admin/save-publisher','PublisherController@save_publisher');
Route::post('/admin/update-publisher/{publisher_id}','PublisherController@update_publisher');

//CodeGames
Route::get('/admin/add-codegames','CodeGamesController@add_codegames');
Route::get('/admin/all-codegames','CodeGamesController@all_codegames');
Route::get('/admin/edit-codegames/{codegames_id}','CodeGamesController@edit_codegames');
Route::get('/admin/delete-codegames/{codegames_id}','CodeGamesController@delete_codegames');

Route::post('/admin/save-codegames','CodeGamesControler@save_codegames');
Route::post('/admin/update-codegames/{codegames_id}','CodeGamesControler@update_codegames');

//Product
Route::get('/admin/add-product','ProductController@add_product');
Route::get('/admin/all-product','ProductController@all_product');
Route::get('/admin/edit-product/{product_id}','ProductController@edit_product');
Route::get('/admin/delete-product/{product_id}','ProductController@delete_product');
Route::get('/admin/active-product/{category_product_id}','ProductController@active_product');
Route::get('/admin/unactive-product/{category_product_id}','ProductController@unactive_product');

Route::post('/admin/save-product','ProductController@save_product');
Route::post('/admin/update-product/{product_id}','ProductController@update_product');

//Sende mail
Route::get('/send-mail-checkout','MailController@send_mail_checkout');

//Checkout

Route::get('/login','CheckoutController@login');
Route::get('/checkout','CheckoutController@checkout');
Route::post('/order','CheckoutController@order');

//Customer
Route::get('/signup','UserController@signup_checkout');
Route::post('/add-customer','UserController@add_customer');
Route::post('/login-customer','UserController@login_customer');
Route::get('/logout-checkout','UserController@logout_checkout');
Route::get('/profile-customer','UserController@profile_customer');



//Contact
Route::get('/contact','ContactController@show_contact');

//Admin Order
Route::get('/admin/manage-order','CheckoutController@manage_order');
Route::get('/admin/detail-order/{orderId}','CheckoutController@detail_order');
Route::get('/admin/delete-order/{orderID}','CheckoutController@delete_order');
