<#import "/spring.ftl" as spring/>
<html>

<head>
    <title>Sign-Up/Login Form</title>
    <#include "master.ftl"/>
    <meta charset="UTF-8">

    <style>
    * {
      margin: 0;
      padding: 0;
    }

    body {
      background-image: url('/img/audi.png');
      background-repeat: no-repeat;
      background-position: center;
      background-size: cover;
      width: 100%;
      height: 100%;
    }

    .form-conatiner {
      border: 1px solid #fff;
      padding: 50px 60px;
      margin-top: 4vh;
      -webkit-box-shadow: 1px 3px 44px 8px rgba(0, 0, 0, 0.75);
      -moz-box-shadow: 1px 3px 44px 8px rgba(0, 0, 0, 0.75);
      box-shadow: 1px 3px 44px 8px rgba(0, 0, 0, 0.75);
    }
  </style>

</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
        <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="form">
                <form action="/login" method="post" id="loginForm" name="loginForm" class="form-conatiner">
                    <h1><span style="color:white">LOGIN</span></h1>
                    <div class="form-group">
                        <label></label>
                        <div class="input-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Email" autocomplete="on" />
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-envelope"></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label></label>
                        <div class="input-group">
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password" />
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label></label>
                    </div>
                    <button type="submit" class="btn btn-success btn-block some-class">Submit</button>
                </form>
            </div>
        </div>
        <div class="col-md-4 col-sm-4 col-xs-12"></div>
    </div>
</div>
</body>

</html>