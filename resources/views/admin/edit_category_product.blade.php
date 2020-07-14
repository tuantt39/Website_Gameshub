@extends('adminLayout')
@section('admin_content')
<div class="card">
    <div class="card-header">
        <strong>Cập nhật danh mục sản phẩm</strong>
    </div>
    <div class="card-body card-block">
        @foreach($edit_category_product as $key =>$edit_value)
        <form action="{{URL::to('/admin/update-category-product/'.$edit_value->category_id)}}" method="post" class="form-horizontal">
          {{ csrf_field() }}
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-email" class=" form-control-label">Tên danh mục</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" name="category_product_name" value="{{$edit_value->category_name}}" class="form-control">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3">
                    <label for="hf-password" class=" form-control-label">Mô tả danh mục</label>
                </div>
                <div class="col-12 col-md-9">
                     <textarea name="category_product_desc" rows="4" class="form-control">{{$edit_value->category_desc}}</textarea>
                </div>
            </div>
            <div class="row form-group">
              <div class="col col-md-3">
                  <label for="select" class=" form-control-label">Hiện thị</label>
              </div>
              <div class="col-12 col-md-9">
                  <select name="category_product_status" class="form-control">
                    <?php
                      if($edit_value->category_status==0){
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
              <button type="submit" name="add_category_product"  class="btn btn-primary btn-sm">
                  <i class="fa fa-dot-circle-o"></i> Cập nhật
              </button>
          </div>
        </form>
        @endforeach
    </div>

</div>
@endsection
