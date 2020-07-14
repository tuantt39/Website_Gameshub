<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;


session_start();

class UserController extends Controller
{

  public function add_customer(request $request)
  {
        $data = array();
        $data['customer_name'] = $request->customer_name;
        $data['customer_phone'] = $request->customer_phone;
        $data['customer_email'] = $request->customer_email;
        $data['customer_password'] = md5($request->customer_password);

        $customer_id = DB::table('tbl_customers')->insertGetId($data);

        Session::put('customer_id',$customer_id);
        Session::put('customer_name',$request->customer_name);
        Session::put('customer_email',$request->customer_email);
        Session::put('customer_phone',$request->customer_phone);
        return Redirect::to('/trang-chu');
   }
    public function login_customer(request $request)
    {
        $email = $request->email_account;
        $password = md5($request->password_account);
        $result = DB::table('tbl_customers')->where('customer_email',$email)->where('customer_password',$password)->first();

        if($result)
        {
            Session::put('customer_name',$result->customer_name);
            Session::put('customer_email',$result->customer_email);
            Session::put('customer_phone',$result->customer_phone);
            Session::put('customer_id',$result->customer_id);
            return Redirect::to('/trang-chu');
        }else{
          Session::put('msg','Sai Tài khoản hoặc Mật khẩu !');
          return Redirect::to('/login');
        }
    }
    public function logout_checkout()
    {
        Session::flush();
        return Redirect::to('/trang-chu');
    }
    public function signup_checkout()
    {
        $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
        $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
        return view('pages.user.signup')->with('cate_product', $cate_product)->with('publisher', $publisher);
    }
    public function profile_customer()
    {
         $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
        $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
        $all_product = DB::table('tbl_product')->where('product_status', '0')->orderby('tbl_product.product_id')->limit(8)->get();
        return view('pages.user.user-profile')->with('cate_product', $cate_product)->with('publisher', $publisher)->with('all_product', $all_product);
    }
}
