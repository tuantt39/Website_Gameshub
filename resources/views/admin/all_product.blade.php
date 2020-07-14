@extends('adminLayout')
@section('admin_content')
<div class="row">
    <div class="col-md-12">
        <!-- DATA TABLE -->
        <h3 class="title-5 m-b-35">Liệt kê sản phẩm</h3>
        <?php
          $message_add = Session::get('msg_add');
          $message_delete = Session::get('msg_delete');
          $message_update = Session::get('msg_update');
          if($message_add){
            echo '<div class="alert alert-success" role="alert">',$message_add,'</div>';
            Session::put('msg_add',NULL);
          }if($message_delete) {
            echo '<div class="alert alert-danger" role="alert">',$message_delete,'</div>';
            Session::put('msg_delete',NULL);
          }if($message_update) {
            echo '<div class="alert alert-warning " role="alert">',$message_update,'</div>';
            Session::put('msg_update',NULL);
          }
        ?>
        <div class="table-responsive table-responsive-data2">
            <table id="example" class="table table-data2">
                <thead>
                    <tr>
                        <th>Tên</th>
                        <th>Danh mục</th>
                        <th>Nhà phát hành</th>
                        <th>Giá</th>
                        <th>Ảnh</th>
                        <th>Hiện thị</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                  @foreach($all_product as $key =>$prod_pro)
                    <tr class="tr-shadow">
                        <td>
                          <span>{{$prod_pro->product_name}}</span>
                        </td>
                        <td>
                            <span>{{$prod_pro->category_name}}</span>
                        </td>
                        <td class="desc">{{$prod_pro->publisher_name}}</td>
                        <td>{{$prod_pro->product_price}}</td>
                        <td><img src="../public/uploads/product/{{$prod_pro->product_image}}" height="300" width="300"></td>
                        <td>
                          <?php
                            if($prod_pro->product_status==0){
                          ?>
                          <a href="{{URL::to('/admin/unactive-product/'.$prod_pro->product_id)}}">
                            <label class="switch switch-3d switch-info mr-3">
                              <input type="checkbox" class="switch-input" checked="true">
                                <span class="switch-label"></span>
                                <span class="switch-handle"></span>
                            </label>
                          </a>
                          <?php
                            }else{
                           ?>
                           <a href="{{URL::to('/admin/active-product/'.$prod_pro->product_id)}}">
                             <label class="switch switch-3d switch-info mr-3">
                               <input type="checkbox" class="switch-input">
                                 <span class="switch-label"></span>
                                 <span class="switch-handle"></span>
                             </label>
                           </a>
                           <?php
                            }
                            ?>
                        </td>
                        <td>
                            <div class="table-data-feature">
                                <a href="{{URL::to('/admin/edit-product/'.$prod_pro->product_id)}}" class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                    <i class="zmdi zmdi-edit"></i>
                                </a>
                                <a onclick="return confirm('Bạn có chắc xóa không?')" href="{{URL::to('/admin/delete-product/'.$prod_pro->product_id)}}" class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                                    <i class="zmdi zmdi-delete"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- END DATA TABLE -->
    </div>
</div>
@endsection
