@extends('adminLayout')
@section('admin_content')
<div class="card">
    <div class="card-header">
        <strong>Cập nhật Code Game</strong>
    </div>
    <div class="card-body card-block">
        @foreach($edit_codegames as $key =>$edit_value)
        <form action="{{URL::to('/admin/update-codegames/'.$edit_value->codegames_id)}}" method="post" class="form-horizontal">
          {{ csrf_field() }}
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Tên game</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" name="product_id" value="{{$edit_value->product_id}}" class="form-control">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-password" class=" form-control-label">Code</label>
                </div>
                <div class="col-12 col-md-9">
                     <textarea name="code" rows="4" class="form-control">{{$edit_value->code}}</textarea>
                </div>
            </div>
          <div class="card-footer">
              <button type="submit" name="add_publisher"  class="btn btn-primary btn-sm">
                  <i class="fa fa-dot-circle-o"></i> Cập nhật
              </button>
          </div>
        </form>
        @endforeach
    </div>
</div>
@endsection
