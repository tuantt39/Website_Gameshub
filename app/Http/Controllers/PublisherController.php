<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class PublisherController extends Controller
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

  public function add_publisher()
  {
    $this->AuthLogin();
    return view('admin.add_publisher');
  }

  public function all_publisher()
  {
    $this->AuthLogin();
    $all_publisher = DB::table('tbl_publisher')->get();
    $manager_publisher = view('admin.all_publisher')->with('all_publisher', $all_publisher);
    return view('adminLayout')->with('admin.all_publisher', $manager_publisher);
  }

  public function save_publisher(Request $request)
  {
    $this->AuthLogin();
    $data = array();
    $data['publisher_name'] = $request->publisher_name;
    $data['publisher_desc'] = $request->publisher_desc;
    $data['publisher_status'] = $request->publisher_status;

    DB::table('tbl_publisher')->insert($data);
    Session::put('msg_add','Thêm nhà phát hành thành công');
    return Redirect::to('/admin/all-publisher');
  }

  public function edit_publisher($publisher_id)
  {
    $this->AuthLogin();
    $edit_publisher = DB::table('tbl_publisher')->where('publisher_id', $publisher_id)->get();
    $manager_publisher = view('admin.edit_publisher')->with('edit_publisher', $edit_publisher);
    return view('adminLayout')->with('admin.edit_publisher', $manager_publisher);
  }

  public function update_publisher(Request $request, $publisher_id)
  {
    $this->AuthLogin();
    $data = array();
    $data['publisher_name'] = $request->publisher_name;
    $data['publisher_desc'] = $request->publisher_desc;
    $data['publisher_status'] = $request->publisher_status;
    DB::table('tbl_publisher')->where('publisher_id', $publisher_id)->update($data);
    Session::put('msg_update','Cập nhật nhà phát hành thành công');
    return Redirect::to('/admin/all-publisher');
  }

  public function delete_publisher($publisher_id)
  {
    $this->AuthLogin();
    DB::table('tbl_publisher')->where('publisher_id', $publisher_id)->delete();
    Session::put('msg_delete','Xóa nhà phát hành thành công');
    return Redirect::to('/admin/all-publisher');
  }

  public function unactive_publisher($publisher_id)
  {
    $this->AuthLogin();
    DB::table('tbl_publisher')->where('publisher_id', $publisher_id)->update(['publisher_status'=>1]);
    Session::put('msg_update','Cập nhật danh mục sản phẩm thành công');
    return Redirect::to('/admin/all-publisher');
  }

  public function active_publisher($publisher_id)
  {
    $this->AuthLogin();
    DB::table('tbl_publisher')->where('publisher_id', $publisher_id)->update(['publisher_status'=>0]);
    Session::put('msg_update','Cập nhật danh mục sản phẩm thành công');
    return Redirect::to('/admin/all-publisher');
  }

    //End Function Admin Page

  public function show_publisher_home($publisher_id)
  {
    $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
    $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
    $publisher_by_id  = DB::table('tbl_product')
    ->join('tbl_publisher', 'tbl_publisher.publisher_id', '=', 'tbl_product.publisher_id')
    ->where('tbl_product.publisher_id', $publisher_id)
    ->get();
    $publisher_name  = DB::table('tbl_publisher')->where('tbl_publisher.publisher_id', $publisher_id)->limit(1)->get();
    $publisher_desc  = DB::table('tbl_publisher')->where('tbl_publisher.publisher_id', $publisher_id)->limit(1)->get();


    return view('pages.publisher.show_publisher')->with('cate_product', $cate_product)->with('publisher', $publisher)
    ->with('publisher_by_id', $publisher_by_id)->with('publisher_name', $publisher_name)->with('publisher_desc', $publisher_desc);
  }


}
