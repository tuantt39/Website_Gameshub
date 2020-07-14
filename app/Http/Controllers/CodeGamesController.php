<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class CodeGamesController extends Controller
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

    public function add_codegames()
    {
      $this->AuthLogin();
      return view('admin.add_codegames');
    }

    public function all_codegames()
    {
      $this->AuthLogin();
      $all_codegames = DB::table('tbl_code_games')
      ->join('tbl_product', 'tbl_product.product_id', '=', 'tbl_code_games.product_id')->get();
      $manager_codegames = view('admin.all_codegames')->with('all_codegames', $all_codegames);
      return view('adminLayout')->with('admin.all_codegames', $manager_codegames);
    }

    public function save_codegames(Request $request)
    {
      $this->AuthLogin();
      $data = array();
      $data['product_id'] = $request->product_id	;
      $data['code'] = $request->code;

      DB::table('tbl_code_games')->insert($data);
      Session::put('msg_add','Thêm code game thành công');
      return Redirect::to('/admin/all-codegames');
    }

    public function edit_codegames($codegames_id)
    {
      $this->AuthLogin();
      $edit_codegames = DB::table('tbl_code_games')->where('codegames_id', $codegames_id)->get();
      $manager_codegames = view('admin.edit_codegames')->with('edit_codegames', $edit_codegames);
      return view('adminLayout')->with('admin.edit_codegames', $manager_codegames);
    }

    public function update_codegames(Request $request, $codegames_id)
    {
      $this->AuthLogin();
      $data = array();
      $data['product_id'] = $request->product_id	;
      $data['code'] = $request->code;
      DB::table('tbl_code_games')->where('codegames_id', $codegames_id)->update($data);
      Session::put('msg_update','Cập nhật code gamethành công');
      return Redirect::to('/admin/all-codegames');
    }

    public function delete_codegames($codegames_id)
    {
      $this->AuthLogin();
      DB::table('tbl_code_games')->where('codegames_id', $codegames_id)->delete();
      Session::put('msg_delete','Xóa nhà code game thành công');
      return Redirect::to('/admin/all-codegames');
    }
}
