<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class CategoryProductController extends Controller
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
    public function add_category_product()
    {
      $this->AuthLogin();
      return view('admin.add_category_product');
    }

    public function all_category_product()
    {
      $this->AuthLogin();
      $all_category_product = DB::table('tbl_category_product')->get();
      $manager_category_product = view('admin.all_category_product')->with('all_category_product', $all_category_product);
      return view('adminLayout')->with('admin.all_category_product', $manager_category_product);
    }

    public function save_category_product(Request $request)
    {
      $this->AuthLogin();
      $data = array();
      $data['category_name'] = $request->category_product_name;
      $data['category_desc'] = $request->category_product_desc;
      $data['category_status'] = $request->category_product_status;

      DB::table('tbl_category_product')->insert($data);
      Session::put('msg_add','Thêm danh mục sản phẩm thành công');
      return Redirect::to('/admin/all-category-product');
    }

    public function edit_category_product($category_product_id)
    {
      $this->AuthLogin();
      $edit_category_product = DB::table('tbl_category_product')->where('category_id', $category_product_id)->get();
      $manager_category_product = view('admin.edit_category_product')->with('edit_category_product', $edit_category_product);
      return view('adminLayout')->with('admin.edit_category_product', $manager_category_product);
    }

    public function update_category_product(Request $request, $category_product_id)
    {
      $this->AuthLogin();
      $data = array();
      $data['category_name'] = $request->category_product_name;
      $data['category_desc'] = $request->category_product_desc;
      $data['category_status'] = $request->category_product_status;
      DB::table('tbl_category_product')->where('category_id', $category_product_id)->update($data);
      Session::put('msg_update','Cập nhật danh mục sản phẩm thành công');
      return Redirect::to('/admin/all-category-product');
    }

    public function delete_category_product($category_product_id)
    {
      $this->AuthLogin();
      DB::table('tbl_category_product')->where('category_id', $category_product_id)->delete();
      Session::put('msg_delete','Xóa danh mục sản phẩm thành công');
      return Redirect::to('/admin/all-category-product');
    }

    public function unactive_category_product($category_product_id)
    {
      $this->AuthLogin();
      DB::table('tbl_category_product')->where('category_id', $category_product_id)->update(['category_status'=>1]);
      Session::put('msg_update','Cập nhật danh mục sản phẩm thành công');
      return Redirect::to('/admin/all-category-product');
    }

    public function active_category_product($category_product_id)
    {
      $this->AuthLogin();
      DB::table('tbl_category_product')->where('category_id', $category_product_id)->update(['category_status'=>0]);
      Session::put('msg_update','Cập nhật danh mục sản phẩm thành công');
      return Redirect::to('/admin/all-category-product');
    }

    //End Function Admin Page

    public function show_category_home($category_id)
    {
      $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
      $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
      $category_by_id  = DB::table('tbl_product')
      ->join('tbl_category_product', 'tbl_category_product.category_id', '=', 'tbl_product.category_id')
      ->where('tbl_product.category_id', $category_id)
      ->get();
      $category_name  = DB::table('tbl_category_product')->where('tbl_category_product.category_id', $category_id)->limit(1)->get();
      $category_desc  = DB::table('tbl_category_product')->where('tbl_category_product.category_id', $category_id)->limit(1)->get();

      return view('pages.category.show_category')->with('cate_product', $cate_product)->with('publisher', $publisher)
      ->with('category_by_id', $category_by_id)->with('category_name', $category_name)->with('category_desc', $category_desc);
    }



}
