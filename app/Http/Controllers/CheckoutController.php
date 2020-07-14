<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Cart;
use Illuminate\Support\Facades\Redirect;
session_start();

class CheckoutController extends Controller
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

    public function login()
    {
        return view('pages.user.login');
    }

    public function checkout()
    {
        $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
        $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
        return view('pages.checkout.show_checkout')->with('cate_product', $cate_product)->with('publisher', $publisher);
    }


    public function order(request $request)
    {
        $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
        $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
        //insert to tbl_payment
        // $pay_data = array();
        // $pay_data['pay_method'] = $request->payment_option;
        // $pay_data['pay_status'] = 'Waiting';
        // $pay_id = DB::table('tbl_payment')->insertGetId($pay_data);

        //insert to tbl_order
        $order_data = array();
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $order_date = date("Y-m-d H:i:s");
        $order_data['customer_id'] = Session::get('customer_id');
        // $order_data['pay_id'] = $pay_id ;
        $order_data['order_total'] = Cart::subtotal();
        // $order_data['order_status'] = 'Waiting';
        $order_id = DB::table('tbl_order')->insertGetId($order_data);
        $order_data['order_date'] = DB::table('tbl_order')->where('order_id', $order_id)->update(['order_date'=>$order_date]);

        //insert to tbl_order_detail
        $content = Cart::content();
        foreach ($content as $v_content) {
            $detail_data['order_id'] = $order_id;
            $detail_data['product_id'] = $v_content->id;
            $detail_data['product_name'] = $v_content->name;
            $detail_data['product_price'] = $v_content->price;
            $detail_data['product_sales_quantity'] = $v_content->qty;
            DB::table('tbl_order_details')->insert($detail_data);
        }
        Cart::destroy();
        Session::put('order_id',$order_id);
        return Redirect::to('/send-mail-checkout');
    }

    public function manage_order(){
        $this->AuthLogin();
        $all_order = DB::table('tbl_order')
        ->join('tbl_customers', 'tbl_order.customer_id', '=','tbl_customers.customer_id')
        ->orderby('tbl_order.order_id','desc')->get();
        $manage_order = view('admin.manage_order')->with('all_order',$all_order);
        return view('adminLayout')->with('admin.manage_order',$manage_order);
    }

    public function detail_order($orderId){
        $this->AuthLogin();
        $customers_order = DB::table('tbl_order')
        ->join('tbl_customers', 'tbl_customers.customer_id', '=', 'tbl_order.customer_id')
        ->where('tbl_order.order_id', $orderId)->get();
        $detail_order_id = DB::table('tbl_order')
        ->join('tbl_order_details', 'tbl_order_details.order_id', '=', 'tbl_order.order_id')
        ->where('tbl_order.order_id', $orderId)->get();
        $manage_order = view('admin.detail_order')->with('detail_order_id',$detail_order_id)->with('customers_order',$customers_order);
        return view('adminLayout')->with('admin.detail_order',$manage_order);
    }

    public function delete_order($orderID)
    {
      $this->AuthLogin();
      DB::table('tbl_order')->where('order_id', $orderID)->delete();
      Session::put('msg_delete','Xóa đơn hàng thành công');
      return Redirect::to('/admin/manage-order');
    }


}
