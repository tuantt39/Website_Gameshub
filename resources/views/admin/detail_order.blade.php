@extends('adminLayout')
@section('admin_content')
<div class="row">
  <div class="col-lg">
      <div class="table-responsive table--no-card m-b-30">
        <div class="panel panel-default" style="font-size: 30px;">
          <div class="panel-heading">Thông tin người đặt hàng</div>
      </div>
          <table class="table table-borderless table-striped table-earning">
              <thead>
                  <tr>
                      <th>Tên người đặt hàng</th>
                      <th>Số điện thoại</th>
                      <th>Email</th>
                  </tr>
              </thead>
              <tbody>
                @foreach($customers_order as $key =>$cust)
                  <tr>
                      <td>{{$cust->customer_name}}</td>
                      <td>{{$cust->customer_phone}}</td>
                      <td>{{$cust->customer_email}}</td>
                  </tr>
                @endforeach
              </tbody>
          </table>
        </div>

        <br><br>

        <div class="table-responsive table--no-card m-b-30">
          <div class="panel panel-default" style="font-size: 30px;">
            <div class="panel-heading">Thông tin Đơn hàng</div>
        </div>
          <table class="table table-borderless table-striped table-earning">
              <thead>
                  <tr>
                      <th>Tên hàng</th>
                      <th>Số lượng</th>
                      <th>Giá</th>
                  </tr>
              </thead>
              <tbody>
                @foreach($detail_order_id as $key =>$order)
                  <tr>
                      <td>{{$order->product_name}}</td>
                      <td>{{$order->product_sales_quantity}}</td>
                      <td>{{$order->product_price}}</td>
                  </tr>
                @endforeach
              </tbody>
          </table>
        </div>
    </div>
</div>
@endsection
