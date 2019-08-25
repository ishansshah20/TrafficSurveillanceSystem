<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Area |Traffic Surveillance System</title>
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/imgages/favicon.ico">
        <!--STYLESHEET-->
        <!--=================================================-->
        <!--Roboto Slab Font [ OPTIONAL ] -->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:500,400italic,100,700italic,300,700,500italic,400" rel="stylesheet">
        <!--Bootstrap Stylesheet [ REQUIRED ]-->
        <link href="<%=request.getContextPath()%>/adminResources/css/bootstrap.min.css" rel="stylesheet">
        <!--Jasmine Stylesheet [ REQUIRED ]-->
        <link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet">
        <!--Font Awesome [ OPTIONAL ]-->
        <link href="<%=request.getContextPath()%>/adminResources/css/font-awesome.min.css" rel="stylesheet">
        <!--Switchery [ OPTIONAL ]-->
        <link href="<%=request.getContextPath()%>/adminResources/css/switchery.min.css" rel="stylesheet">
        <!--Bootstrap Select [ OPTIONAL ]-->
        <link href="<%=request.getContextPath()%>/adminResources/css/bootstrap-select.min.css" rel="stylesheet">
        <!--Bootstrap Validator [ OPTIONAL ]-->
        <link href="<%=request.getContextPath()%>/adminResources/css/bootstrapValidator.min.css" rel="stylesheet">
        <!--Demo [ DEMONSTRATION ]-->
        <link href="<%=request.getContextPath()%>/adminResources/css/jasmine.css" rel="stylesheet">
        <!--SCRIPT-->
        <!--=================================================-->
        <!--Page Load Progress Bar [ OPTIONAL ]-->
        <link href="<%=request.getContextPath()%>/adminResources/css/pace.min.css" rel="stylesheet">
        <script src="<%=request.getContextPath()%>/adminResources/js/pace.min.js"></script>
    </head>
    <body>
        <div id="container" class="effect mainnav-lg navbar-fixed mainnav-fixed">
            <!--NAVBAR-->
            <!--===================================================-->
            <jsp:include page="header.jsp"></jsp:include>
            <!--===================================================-->
            <!--END NAVBAR-->
            <div class="boxed">
                <!--CONTENT CONTAINER-->
                <!--===================================================-->
                <div id="content-container">
                    <!--Page Title-->
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <div class="pageheader hidden-xs">
                        <h3><i class="fa fa-home"></i> Manage Area </h3>
                        <div class="breadcrumb-wrapper">
                            <span class="label">You are here:</span>
                            <ol class="breadcrumb">
                                <li> <a href="#"> Home </a> </li>
                                <li> <a href="#"> Manage Area </a> </li>
                                <li class="active"> Add Area </li>
                            </ol>
                        </div>
                    </div>
                    <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                    <!--End page title-->
                    <!--Page content-->
                    <!--===================================================-->
                    <div id="page-content">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="panel">
                                    <!-- Panel heading -->
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Add Area</h3>
                                    </div>
                                    <!-- Panel body -->
                                    
                                    
                                    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
                                    
                                    
                                    <f:form id="registrationForm" action="insertArea" class="form-horizontal" method="post" modelAttribute="AreaVO">
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label class="col-xs-3 control-label">Area name</label>
                                                <div class="col-xs-5">
                                                    <f:input type="text" class="form-control" path="areaName" placeholder="Area name" />
                                                </div>
                                            </div>
                                            <f:hidden path="areaId"/>
                                            <div class="form-group">
                                                <label class="col-xs-3 control-label">Pincode</label>
                                                <div class="col-xs-5">
                                                    <f:input type="text" class="form-control" path="pincode" placeholder="Pincode" />
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-xs-3 control-label">Area Description</label>
                                                <div class="col-xs-5">
                                                    <f:textarea  class="form-control" path="areaDescription"></f:textarea>
                                                </div>
                                            </div>
										<div class="panel-footer">
                                            <div class="form-group">
                                                <div class="col-xs-9 col-xs-offset-3">
                                                    <button type="submit" class="btn btn-info btn-lg" name="signup" value="Sign up">
                                                    Submit
                                                    </button>
                                                </div>
                                            </div>
										</div>
                                    </f:form>
                                </div>
                                </div>
                            <div class="col-lg-6">
                                          </div>
                        </div>
                    </div>
                    <!--===================================================-->
                    <!--End page content-->
                </div>
                <!--===================================================-->
                <!--END CONTENT CONTAINER-->
                <!--MAIN NAVIGATION-->
                <!--===================================================-->
                <nav id="mainnav-container">
                    <!--Brand logo & name-->
                    <!--================================-->
                    <div class="navbar-header">
                        <a href="index.html" class="navbar-brand">
                            <i class="fa fa-cube brand-icon"></i>
                            <div class="brand-title">
                                <span class="brand-text">TSS</span>
                            </div>
                        </a>
                    </div>
                    <!--================================-->
                    <!--End brand logo & name-->
                    <div id="mainnav">
                        <!--Menu-->
                        <!--================================-->
                       <jsp:include page="menu.jsp"></jsp:include>
                        <!--================================-->
                        <!--End menu-->
                    </div>
                </nav>
                <!--===================================================-->
                <!--END MAIN NAVIGATION-->
            </div>
            <!-- FOOTER -->
            <!--===================================================-->
            <jsp:include page="footer.jsp"></jsp:include>
            
            <!--===================================================-->
            <!-- END FOOTER -->
            <!-- SCROLL TOP BUTTON -->
            <!--===================================================-->
            <button id="scroll-top" class="btn"><i class="fa fa-chevron-up"></i></button>
            <!--===================================================-->
        </div>
        <!--===================================================-->
        <!-- END OF CONTAINER -->
        <!--JAVASCRIPT-->
        <!--=================================================-->
        <!--jQuery [ REQUIRED ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery-2.1.1.min.js"></script>
        <!--BootstrapJS [ RECOMMENDED ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
        <!--Fast Click [ OPTIONAL ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/fastclick.min.js"></script>
        <!--Jasmine Admin [ RECOMMENDED ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>
        <!--Jquery Nano Scroller js [ REQUIRED ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.nanoscroller.min.js"></script>
        <!--Metismenu js [ REQUIRED ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/metismenu.min.js"></script>
        <!--Switchery [ OPTIONAL ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/switchery.min.js"></script>
        <!--Bootstrap Select [ OPTIONAL ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-select.min.js"></script>
        <!--Bootstrap Validator [ OPTIONAL ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/bootstrapValidator.min.js"></script>
        <!--Fullscreen jQuery [ OPTIONAL ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/screenfull.js"></script>
        <!--Form validation [ SAMPLE ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
    </body>
</html>