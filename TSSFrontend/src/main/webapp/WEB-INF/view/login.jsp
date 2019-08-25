<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Login Page |Traffic Surveillance System</title>
    <link rel="shortcut icon" href="adminResources/images/favicon.ico">
    <!--STYLESHEET-->
    <!--=================================================-->
    <!--Roboto Slab Font [ OPTIONAL ] -->
    <link href="http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Roboto:500,400italic,100,700italic,300,700,500italic,400" rel="stylesheet">
    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="adminResources/css/bootstrap.min.css" rel="stylesheet">
    <!--Jasmine Stylesheet [ REQUIRED ]-->
    <link href="adminResources/css/style.css" rel="stylesheet">
    <!--Font Awesome [ OPTIONAL ]-->
    <link href="adminResources/css/font-awesome.min.css" rel="stylesheet">
    <!--Switchery [ OPTIONAL ]-->
    <link href="adminResources/css/switchery.min.css" rel="stylesheet">r
    <!--Bootstrap Select [ OPTIONAL ]-->
    <link href="adminResources/css/bootstrap-select.min.css" rel="stylesheet">
    <!--Demo [ DEMONSTRATION ]-->
    <link href="adminResources/css/jasmine.css" rel="stylesheet">
    <!--SCRIPT-->
    <!--=================================================-->
    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="adminResources/css/pace.min.css" rel="stylesheet">
    <script src="adminResources/js/pace.min.js"></script>
</head>
<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

<body style = "background-color : #D3D3D3">
    <div id="container">
        <!-- LOGIN FORM -->
        <!--===================================================-->
        <div class="lock-wrapper">
            <div class="row">
                <div class="col-xs-12">
                    <div class="lock-box">
                        <div class="main">
                            <h3>Please Log In, or <a href="#">Sign Up</a></h3>
                            <div class="row">
                                 <!--<div class="col-xs-6 col-sm-6 col-md-6">
                                    <a href="#" class="btn btn-lg btn-primary btn-block">Facebook</a>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <a href="#" class="btn btn-lg btn-info btn-block">Google</a>
                                </div>-->
                            </div>
                            <!-- <div class="login-or">
                                <hr class="hr-or">
                                <span class="span-or">or</span>
                            </div>  -->
                            <form role="form" method="post" action="j_spring_security_check">
                                <div class="form-group">
                                    <label for="inputUsernameEmail">Username or email</label>
                                    <input type="text" class="form-control" id="inputUsernameEmail" name="username">
                                </div>
                                <div class="form-group">
                                    <!-- <a class="pull-right" href="#">Forgot password?</a> -->
                                    <label for="inputPassword">Password</label>
                                    <input type="password" class="form-control" id="inputPassword" name="password">
                                </div>
                                <!-- <div class="pull-left pad-btm">
                                    <div class="checkbox">
                                        <label class="form-checkbox form-icon form-text">
                                            <input type="checkbox"> Remember Me
                                        </label>
                                    </div>
                                </div> -->
                                <button type="submit" class="btn btn btn-primary pull-right">
                                    Log In
                                </button>
                            </form>

                        </div>

                    </div>
                </div>

            </div>
        </div>
        <!--===================================================-->
        <!-- END OF CONTAINER -->
        <!--JAVASCRIPT-->
        <!--=================================================-->
        <!--jQuery [ REQUIRED ]-->
        <script src="adminResources/js/jquery-2.1.1.min.js"></script>
        <!--BootstrapJS [ RECOMMENDED ]-->
        <script src="adminResources/js/bootstrap.min.js"></script>
        <!--Fast Click [ OPTIONAL ]-->
        <script src="adminResources/js/fastclick.min.js"></script>
        <!--Switchery [ OPTIONAL ]-->
        <script src="adminResources/js/switchery.min.js"></script>
        <!--Bootstrap Select [ OPTIONAL ]-->
        <script src="adminResources/js/bootstrap-select.min.js"></script>
</body>

</html>