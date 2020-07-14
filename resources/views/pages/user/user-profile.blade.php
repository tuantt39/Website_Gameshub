@extends('layout')
@extends('pages.header')
@section('content')


<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<hr>
<div class="container bootstrap snippet">
    <div class="row">
      <div class="col-sm-10"><h1></h1></div>
      <div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.gravatar.com/avatar/28fd20ccec6865e2d5f0e1f4446eb7bf?s=100"></a></div>
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->


      <div class="text-center">
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <h6>Upload a different photo...</h6>
        <input type="file" class="text-center center-block file-upload">
      </div></hr><br>


          <div class="panel panel-default">
            <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
            <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
          </div>


          <ul class="list-group">
            <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
          </ul>

          <div class="panel panel-default">
            <div class="panel-heading">Social Media</div>
            <div class="panel-body">
              <i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
            </div>
          </div>

        </div><!--/col-3-->
      <div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
            </ul>

          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">

                          <div class="col-xs-6">
                              <label for="first_name"><h4>Họ tên</h4></label>
                              <input class="form-control" value="<?php
                                            $customer_name = Session::get('customer_name');
                                            if($customer_name){
                                                echo $customer_name;
                                            }
                                        ?>">

                          </div>
                      </div>

                      <div class="form-group">

                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input class="form-control" value="<?php
                                            $customer_phone = Session::get('customer_phone');
                                            if($customer_phone){
                                                echo $customer_phone;
                                            }
                                        ?>">
                          </div>
                      </div>

                      <div class="form-group">
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <a class="form-control" type ="hidden">
                                        <?php
                                            $customer_email = Session::get('customer_email');
                                            if($customer_email){
                                                echo $customer_email;
                                            }
                                        ?>
                                    </a>
                          </div>
                      </div>
                      <div class="form-group">
                          <div class="col-xs-6">
                              <label for="email"><h4>Địa chỉ</h4></label>
                              <input type="email" class="form-control" id="location" title="enter a location">
                          </div>
                      </div>
                      <div class="form-group">
                          <div class="col-xs-6">
                              <label for="password"><h4>Password</h4></label>
                              <input type="password" class="form-control" name="password" id="password" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          <div class="col-xs-6">
                            <label for="password2"><h4>Verify</h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" title="enter your password2.">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                                <a class="btn btn-lg btn-success" type="button"><i class="glyphicon glyphicon-ok-sign"></i> Save</a>
                            </div>
                      </div>
                </form>

              <hr>
             </div><!--/tab-pane-->
              </div><!--/tab-pane-->
          </div><!--/tab-content-->
        </div><!--/col-9-->
    </div><!--/row-->

@endsection
