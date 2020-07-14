@extends('adminLayout')
@section('admin_content')
<div class="card">
    <div class="card-header">
        <strong>Thêm Code Game</strong>
    </div>
    <div class="card-body card-block">
        <form action="{{URL::to('/admin/save-codegames')}}" method="post" class="form-horizontal">
          {{ csrf_field() }}
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Tên game</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" name="product_id" class="form-control" data-validation="required"
                    data-validation-error-msg-required="Vui lòng điền vào trường này">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-password" class=" form-control-label">Code</label data-validation="required"
                    data-validation-error-msg-required="Vui lòng điền vào trường này">
                </div>
                <div class="col-12 col-md-9">
                     <textarea name="code" rows="4" placeholder="" class="form-control"></textarea>
                </div>
            </div>
          <div class="card-footer">
              <button type="submit" name="add_publisher"  class="btn btn-primary btn-sm">
                  <i class="fa fa-dot-circle-o"></i> Thêm Code Game
              </button>
          </div>
        </form>
    </div>
</div>
@endsection
