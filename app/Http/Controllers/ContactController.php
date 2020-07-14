<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class ContactController extends Controller
{
    public function show_contact()
    {
        $cate_product = DB::table('tbl_category_product')->where('category_status', '0')->get();
        $publisher = DB::table('tbl_publisher')->where('publisher_status', '0')->get();
        $all_product = DB::table('tbl_product')->where('product_status', '0')->orderby('tbl_product.product_id', 'desc')->limit(8)->get();
        $category_action  = DB::table('tbl_product')->where([['product_status', '0'],['category_id', '1'],])->limit(8)->get();
        $category_avt  = DB::table('tbl_product')->where([['product_status', '0'],['category_id', '7'],])->limit(8)->get();
        $category_ctv  = DB::table('tbl_product')->where([['product_status', '0'],['category_id', '4'],])->limit(8)->get();
        $category_rlp  = DB::table('tbl_product')->where([['product_status', '0'],['category_id', '9'],])->limit(8)->get();

        return view('contact')->with('cate_product', $cate_product)->with('publisher', $publisher)->with('all_product', $all_product)
        ->with('category_action', $category_action)->with('category_avt', $category_avt)->with('category_ctv', $category_ctv)->with('category_rlp', $category_rlp);
    }
}
