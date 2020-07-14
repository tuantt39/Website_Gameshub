@extends('adminLayout')
@section('admin_content')
<div class="card">
    <div class="card-header">
        <strong>Cập nhật sản phẩm</strong>
    </div>
    <div class="card-body card-block">
      @foreach($edit_product as $key =>$edit_value)
        <form action="{{URL::to('/admin/update-product/'.$edit_value->product_id)}}" method="post" class="form-horizontal" enctype="multipart/form-data">
          {{ csrf_field() }}
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Tên sản phẩm</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" name="product_name" value="{{$edit_value->product_name}}" class="form-control">
                </div>
            </div>
            <div class="row form-group">
              <div class="col col-md-3">
                  <label for="select" class=" form-control-label">Danh mục sản phẩm</label>
              </div>
              <div class="col-12 col-md-9">
                  <select name="product_cate" class="form-control">
                     @foreach ($cate_product as $key => $cate)
                        @if ($cate->category_id == $edit_value->category_id)
                          <option selected value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                        @else
                          <option value="{{$cate->category_id}}">{{$cate->category_name}}</option>
                        @endif
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
                    @if ($publ->publisher_id == $edit_value->publisher_id)
                      <option selected value="{{$publ->publisher_id}}">{{$publ->publisher_name}}</option>
                    @else
                      <option value="{{$publ->publisher_id}}">{{$publ->publisher_name}}</option>
                    @endif
                   @endforeach
                </select>
            </div>
        </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Giá</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" name="product_price" value="{{$edit_value->product_price}}" class="form-control">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-password" class=" form-control-label">Nội dung</label>
                </div>
                <div class="col-12 col-md-9">
                     <textarea name="product_content" id="ckeditor" rows="4" class="form-control">{{$edit_value->product_content}}</textarea>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Hình ảnh</label>
                </div>
                <div class="col-12 col-md-9">
                  <img src="../../public/uploads/product/{{$edit_value->product_image}}" height="100" width="100">
                  <input type="file" name="product_image" class="form-control">
                </div>
            </div>
            <div class="row form-group">
              <div class="col col-md-3">
                  <label for="select" class=" form-control-label">Hiện thị</label>
              </div>
              <div class="col-12 col-md-9">
                  <select name="product_status" class="form-control">
                    <?php
                      if($edit_value->product_status==0){
                        echo '<option value="0">Hiện</option>
                              <option value="1">Ẩn</option>';
                      }else{
                        echo'<option value="1">Ẩn</option>
                             <option value="0">Hiện</option>';
                      }
                    ?>
                  </select>
              </div>
          </div>
          <div class="card-footer">
              <button type="submit" name="add_product"  class="btn btn-primary btn-sm">
                  <i class="fa fa-dot-circle-o"></i> Cập nhật sản phẩm
              </button>
          </div>
        </form>
        @endforeach
    </div>
</div>
@endsection
