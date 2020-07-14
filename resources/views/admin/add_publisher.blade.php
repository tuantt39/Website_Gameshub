@extends('adminLayout')
@section('admin_content')
<div class="card">
    <div class="card-header">
        <strong>Thêm nhà phát hành</strong>
    </div>
    <div class="card-body card-block">
        <form action="{{URL::to('/admin/save-publisher')}}" method="post" class="form-horizontal">
          {{ csrf_field() }}
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Tên nhà phát hành</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" name="publisher_name" placeholder="" class="form-control" data-validation="required"
                    data-validation-error-msg-required="Vui lòng điền vào trường này">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-password" class=" form-control-label">Mô tả nhà phát hành</label data-validation="required"
                    data-validation-error-msg-required="Vui lòng điền vào trường này">
                </div>
                <div class="col-12 col-md-9">
                     <textarea name="publisher_desc" rows="4" placeholder="" class="form-control"></textarea>
                </div>
            </div>
            <div class="row form-group">
              <div class="col col-md-3">
                  <label for="select" class=" form-control-label">Hiện thị</label>
              </div>
              <div class="col-12 col-md-9">
                  <select name="publisher_status" class="form-control">
                      <option value="0">Hiện</option>
                      <option value="1">Ẩn</option>
                  </select>
              </div>
          </div>
          <div class="card-footer">
              <button type="submit" name="add_publisher"  class="btn btn-primary btn-sm">
                  <i class="fa fa-dot-circle-o"></i> Thêm nhà phát hành
              </button>
          </div>
        </form>
    </div>
</div>
@endsection
