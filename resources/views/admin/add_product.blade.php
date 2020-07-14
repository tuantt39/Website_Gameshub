@extends('adminLayout')
@section('admin_content')
<div class="card">
    <div class="card-header">
        <strong>Thêm sản phẩm</strong>
    </div>
    <div class="card-body card-block">
        <form action="{{URL::to('/admin/save-product')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
          {{ csrf_field() }}
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Tên sản phẩm</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" name="product_name" placeholder="" class="form-control" data-validation="required"
                    data-validation-error-msg-required="Vui lòng điền vào trường này">
                </div>
            </div>
            <div class="row form-group">
              <div class="col col-md-3">
                  <label for="select" class=" form-control-label">Danh mục sản phẩm</label>
              </div>
              <div class="col-12 col-md-9">
                  <select name="product_cate" class="form-control">
                     @foreach ($cate_product as $key => $cate)
                      <option value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                      @endforeach
                  </select>
              </div>
          </div>
          <div class="row form-group">
            <div class="col col-md-3">
                <label for="select" class=" form-control-label">Nhà phát hành</label>
            </div>
            <div class="col-12 col-md-9">
                <select name="product_publisher" class="form-control">
                  @foreach ($publisher as $key => $publ)
                   <option value="{{$publ->publisher_id}}">{{$publ->publisher_name}}</option>
                   @endforeach
                </select>
            </div>
        </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Giá</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" name="product_price" class="form-control" data-validation="number"
                    data-validation-error-msg="Vui lòng nhập số">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-password" class=" form-control-label">Nội dung</label>
                </div>
                <div class="col-12 col-md-9">
                     <textarea name="product_content" id="ckeditor1" rows="4" class="form-control" data-validation="required"
                     data-validation-error-msg-required="Vui lòng điền vào trường này" ></textarea>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Hình ảnh</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="file" name="product_image" class="form-control">
                </div>
            </div>
            <div class="row form-group">
              <div class="col col-md-3">
                  <label for="select" class=" form-control-label">Hiện thị</label>
              </div>
              <div class="col-12 col-md-9">
                  <select name="product_status" class="form-control">
                      <option value="0">Hiện</option>
                      <option value="1">Ẩn</option>
                  </select>
              </div>
          </div>
          <div class="card-footer">
              <button type="submit" name="add_product"  class="btn btn-primary btn-sm">
                  <i class="fa fa-dot-circle-o"></i> Thêm sản phẩm
              </button>
          </div>
        </form>
    </div>
</div>
@endsection
