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
                      <th>STT</th>
                      <th>Game</th>
                      <th>Code</th>
                      <th>Chỉnh sửa</th>
                      <th>Xóa</th>
                  </tr>
              </thead>
              <tbody>
                @foreach($all_codegames as $key =>$code)
                  <tr>
                      <td>{{$code->codegames_id}}</td>
                      <td>{{$code->product_name}}</td>
                      <td>{{$code->code}}</td>
                      <td><a href="{{URL::to('/admin/edit-codegames/'.$code->codegames_id)}}" type="button" class="btn btn-primary">Chỉnh sửa</a></td>
                      <td><a onclick="return confirm('Bạn có chắc xóa không?')" href="{{URL::to('/admin/delete-codegames/'.$code->codegames_id)}}" type="button" class="btn btn-danger">Xóa</a></td>
                  </tr>
                @endforeach
              </tbody>
          </table>
        </div>
    </div>
</div>
@endsection
