<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Mail;
use Illuminate\Support\Facades\Redirect;
session_start();

class MailController extends Controller
{
  public function send_mail_checkout(){

    $order_id = Session::get('order_id');

    $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
    $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();

    //get customer_email
    $customers_order = DB::table('tbl_order')
    ->join('tbl_customers', 'tbl_customers.customer_id', '=', 'tbl_order.customer_id')
    ->where('tbl_order.order_id', $order_id)->get();
    foreach ($customers_order as $key => $value)
      $email_order = $value->customer_email;
      $name_order = $value->customer_name;


    //get product_name
    $order_details_name = DB::table('tbl_order_details')
    ->join('tbl_code_games', 'tbl_code_games.product_id', '=', 'tbl_order_details.product_id')
    ->where('tbl_order_details.order_id', $order_id)->get();
    foreach ($order_details_name as $key => $value)
  		$product_name_order = $value->product_name;
      $product_code_order = $value->code;


    //send email
    $to_name = "GamesHub";
    $to_email = $email_order;//send to this email
    $data = array("product"=>"{$product_name_order}","name"=>"{$name_order}","body"=>"{$product_code_order}"); //body of mail.blade.php
    Mail::send('pages.email.send_email_checkout',$data,function($message) use ($to_name,$to_email){

     $message->to($to_email)->subject('Đơn hàng đã được xử lý');//send this mail with subject
     $message->from($to_email,$to_name);//send from this mail

   });

    Session::put('order_id',NULL);

    return view('pages.checkout.cash_in')->with('cate_product', $cate_product)->with('publisher', $publisher);

    }
}
