<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class ProductController extends Controller
{
  public function product()
    {
        return view('pages.product');
    }

  public function AuthLogin()
  {
    $admin_id = Session::get('admin_id');
    if ($admin_id) {
      return Redirect::to('admin.dashboard');
    } else {
      return Redirect::to('admin')->send();
    }
  }

  public function add_product()
  {
    $this->AuthLogin();
    $cate_product = DB::table('tbl_category_product')->get();
    $publisher = DB::table('tbl_publisher')->get();

    return view('admin.add_product')->with('cate_product', $cate_product)->with('publisher', $publisher);
  }

  public function all_product()
  {
    $this->AuthLogin();
    $all_product = DB::table('tbl_product')
    ->join('tbl_category_product', 'tbl_category_product.category_id', '=', 'tbl_product.category_id')
    ->join('tbl_publisher', 'tbl_publisher.publisher_id', '=', 'tbl_product.publisher_id')
    ->orderby('tbl_product.product_id')->get();
    $manager_product = view('admin.all_product')->with('all_product', $all_product);
    return view('adminLayout')->with('admin.all_product', $manager_product);
  }

  public function save_product(Request $request)
  {
    $this->AuthLogin();
    //Lấy dữ liệu từ add_product vào csdl
    $data = array();
    $data['product_name'] = $request->product_name;
    $data['product_content'] = $request->product_content;
    $data['product_price'] = $request->product_price;
    $data['category_id'] = $request->product_cate;
    $data['publisher_id'] = $request->product_publisher;
    $data['product_status'] = $request->product_status;
    $get_image = $request->file('product_image');

    if ($get_image) {
      $get_name_image = $get_image->getClientOriginalName();
      $name_image = current(explode('.', $get_name_image));
      $new_image = $name_image.'_'.rand(0,99).'.'.$get_image->getClientOriginalExtension();
      $get_image->move('public/uploads/product',$new_image);
      $data['product_image'] = $new_image;
      DB::table('tbl_product')->insert($data);
      // Thông báo thành công
      Session::put('msg_add','Thêm sản phẩm thành công');
      return Redirect::to('/admin/all-product');
    }
    $data['product_image'] = '';
    DB::table('tbl_product')->insert($data);
    // Thông báo thành công
    Session::put('msg_add','Thêm sản phẩm thành công');
    return Redirect::to('/admin/all-product');
  }

  public function edit_product($product_id)
  {
    $this->AuthLogin();
    $cate_product = DB::table('tbl_category_product')->orderby('category_id','desc')->get();
    $publisher = DB::table('tbl_publisher')->orderby('publisher_id','desc')->get();

    $edit_product = DB::table('tbl_product')->where('product_id', $product_id)->get();
    $manager_product = view('admin.edit_product')->with('edit_product', $edit_product)->with('cate_product', $cate_product)->with('publisher', $publisher);
    return view('adminLayout')->with('admin.edit_product', $manager_product);
  }

  public function update_product(Request $request, $product_id)
  {
    $this->AuthLogin();
    $data = array();
    $data['product_name'] = $request->product_name;
    $data['product_content'] = $request->product_content;
    $data['product_price'] = $request->product_price;
    $data['category_id'] = $request->product_cate;
    $data['publisher_id'] = $request->product_publisher;
    $data['product_status'] = $request->product_status;
    $get_image = $request->file('product_image');
    if ($get_image) {
      $get_name_image = $get_image->getClientOriginalName();
      $name_image = current(explode('.', $get_name_image));
      $new_image = $name_image.'_'.rand(0,99).'.'.$get_image->getClientOriginalExtension();
      $get_image->move('public/uploads/product',$new_image);
      $data['product_image'] = $new_image;
      DB::table('tbl_product')->where('product_id', $product_id)->update($data);
      Session::put('msg_update','Cập nhật sản phẩm thành công');
      return Redirect::to('/admin/all-product');
    }

    DB::table('tbl_product')->where('product_id', $product_id)->update($data);
    Session::put('msg','Cập nhật sản phẩm thành công');
    return Redirect::to('/admin/all-product');
  }

  public function delete_product($product_id)
  {
    $this->AuthLogin();
    DB::table('tbl_product')->where('product_id', $product_id)->delete();
    Session::put('msg_delete','Xóa sản phẩm thành công');
    return Redirect::to('/admin/all-product');
  }

  public function unactive_product($product_id)
  {
    $this->AuthLogin();
    DB::table('tbl_product')->where('product_id', $product_id)->update(['product_status'=>1]);
    Session::put('msg_update','Cập nhật danh mục sản phẩm thành công');
    return Redirect::to('/admin/all-product');
  }

  public function active_product($product_id)
  {
    $this->AuthLogin();
    DB::table('tbl_product')->where('product_id', $product_id)->update(['product_status'=>0]);
    Session::put('msg_update','Cập nhật danh mục sản phẩm thành công');
    return Redirect::to('/admin/all-product');
  }

  public function details_product($product_id)
  {
    $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
    $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
    $details_product = DB::table('tbl_product')
    ->join('tbl_category_product', 'tbl_category_product.category_id', '=', 'tbl_product.category_id')
    ->join('tbl_publisher', 'tbl_publisher.publisher_id', '=', 'tbl_product.publisher_id')
    ->where('tbl_product.product_id', $product_id)->get();

    foreach ($details_product as $key => $value)
      $category_id = $value->category_id;

    $related_product = DB::table('tbl_product')
    ->join('tbl_category_product', 'tbl_category_product.category_id', '=', 'tbl_product.category_id')
    ->join('tbl_publisher', 'tbl_publisher.publisher_id', '=', 'tbl_product.publisher_id')
    ->where('tbl_category_product.category_id', $category_id)->whereNOTIn('tbl_product.product_id', [$product_id])->get();

    return view('pages.product.show_details_product')->with('cate_product', $cate_product)->with('publisher', $publisher)
    ->with('details_product', $details_product)->with('related_product', $related_product);
  }

  public function show_all_product()
  {
    $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
    $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
    $all_product = DB::table('tbl_product')->where('product_status', '0')->orderby('tbl_product.product_id', 'desc')->get();
    return view('pages.product.show_all_product')->with('cate_product', $cate_product)->with('publisher', $publisher)->with('all_product', $all_product);
  }

}
