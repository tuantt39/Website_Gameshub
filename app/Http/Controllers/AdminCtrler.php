<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;

session_start();

class AdminCtrler extends Controller
{
  public function AuthLogin()
  {
    $admin_id = Session::get('admin_id');
    if ($admin_id) {
      return Redirect::to('admin.dashboard');
    } else {
      return Redirect::to('admin')->send();
    }
  }
    public function index(){
        return view('adminLogin');
    }

    public function dashboard_show(){
      $this->AuthLogin();
        return view('admin.dashboard');
    }

       public function dashboard(Request $request){
        $admin_email = $request->admin_email;
        $admin_password = md5($request->admin_password);
        $result = DB::table('admin')->where('admin_email',$admin_email)->where('admin_password',$admin_password)->first();

        if($result){
            Session::put('admin_name',$result->admin_name);
            Session::put('admin_id',$result->admin_id);
            return Redirect::to('/admin/dashboard');
        }else{
            Session::put('msg','Sai Tài khoản hoặc Mật khẩu !');
            return Redirect::to('/admin');
           }
    }

    public function logout(){
      $this->AuthLogin();
    	Session::put('admin_name',NULL);
    	Session::put('admin_id',NULL);
    	return Redirect::to('/admin');

    }
}