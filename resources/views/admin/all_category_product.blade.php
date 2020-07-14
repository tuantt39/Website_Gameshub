@extends('adminLayout')
@section('admin_content')
<div class="row">
  <div class="col-lg">
      <div class="table-responsive table--no-card m-b-30">
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
          <table id="example" class="table table-borderless table-striped table-earning">
              <thead>
                  <tr>
                      <th>Tên danh mục</th>
                      <th>Hiển thị</th>
                      <th>Chỉnh sửa</th>
                      <th>Xóa</th>
                  </tr>
              </thead>
              <tbody>
                @foreach($all_category_product as $key =>$cate_pro)
                  <tr>
                      <td>{{$cate_pro->category_name}}</td>
                      <td>
                        <?php
                          if($cate_pro->category_status==0){
                        ?>
                        <a href="{{URL::to('/admin/unactive-category-product/'.$cate_pro->category_id)}}">
                          <label class="switch switch-3d switch-primary mr-3">
                            <input type="checkbox" class="switch-input" checked="true">
                              <span class="switch-label"></span>
                              <span class="switch-handle"></span>
                          </label>
                        </a>
                        <?php
                          }else{
                         ?>
                         <a href="{{URL::to('/admin/active-category-product/'.$cate_pro->category_id)}}">
                           <label class="switch switch-3d switch-primary mr-3">
                             <input type="checkbox" class="switch-input">
                               <span class="switch-label"></span>
                               <span class="switch-handle"></span>
                           </label>
                         </a>
                         <?php
                          }
                          ?>
                      </td>
                      <td><a href="{{URL::to('/admin/edit-category-product/'.$cate_pro->category_id)}}" type="button" class="btn btn-primary">Chỉnh sửa</a></td>
                      <td><a onclick="return confirm('Bạn có chắc xóa không?')" href="{{URL::to('/admin/delete-category-product/'.$cate_pro->category_id)}}" type="button" class="btn btn-danger">Xóa</a></td>
                  </tr>
                @endforeach
              </tbody>
          </table>
        </div>
    </div>
</div>
@endsection
