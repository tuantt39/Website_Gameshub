<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class HomeController extends Controller
{
    public function index()
    {
        $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
        $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
        $all_product = DB::table('tbl_product')->where('product_status', '0')->orderby('tbl_product.product_id', 'desc')->limit(8)->get();
        $category_action  = DB::table('tbl_product')->where([['product_status', '0'],['category_id', '1'],])->limit(8)->get();

        $category_avt  = DB::table('tbl_product')->where([['product_status', '0'],['category_id', '2'],])->limit(8)->get();
        $category_ctv  = DB::table('tbl_product')->where([['product_status', '0'],['category_id', '4'],])->limit(8)->get();
        $category_rlp  = DB::table('tbl_product')->where([['product_status', '0'],['category_id', '9'],])->limit(8)->get();

        return view('pages.home')->with('cate_product', $cate_product)->with('publisher', $publisher)->with('all_product', $all_product)
        ->with('category_action', $category_action)->with('category_avt', $category_avt)->with('category_ctv', $category_ctv)->with('category_rlp', $category_rlp);
    }

    public function search(request $request)
    {

    	$cate_product = DB::table('tbl_category_product')->where('category_status', '0')->orderby('category_id', 'desc')->get();
      $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();

      $search_product =  DB::table('tbl_product')->where('product_name', 'like', '%'.$keywords.'%')->get();
      return view('pages.product.search')->with('cate_product', $cate_product)->with('publisher', $publisher)->with('search_product', $search_product);
    }
}
