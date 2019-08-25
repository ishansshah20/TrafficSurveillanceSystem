<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traffic Surveillance System</title>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/images/favicon.ico">
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
    <!--jVector Map [ OPTIONAL ]-->
    <link href="<%=request.getContextPath()%>/adminResources/css/jquery-jvectormap.css" rel="stylesheet">
    <!--Morris.js [ OPTIONAL ]-->
    <link href="<%=request.getContextPath()%>/adminResources/css/morris.min.css" rel="stylesheet">
    <!--Bootstrap Table [ OPTIONAL ]-->
    <link href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/adminResources/css/dataTables.responsive.css" rel="stylesheet">
    <!--Demo [ DEMONSTRATION ]-->
    <link href="<%=request.getContextPath()%>/adminResources/css/jquery-steps.min.css" rel="stylesheet">
    <!--Demo [ DEMONSTRATION ]-->
    <link href="<%=request.getContextPath()%>/adminResources/css/jasmine.css" rel="stylesheet">
    <!--SCRIPT-->
    <!--=================================================-->
    <!--Page Load Progress Bar [ OPTIONAL ]-->
    <link href="<%=request.getContextPath()%>/adminResources/css/pace.min.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/adminResources/js/pace.min.js"></script>
</head>
<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->

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
                  <h3><i class="fa fa-home"></i> Dashboard </h3>
                    <div class="breadcrumb-wrapper">
                      <span class="label">You are here:</span>
                         <ol class="breadcrumb">
                            <li> <a href="#"> Home </a> </li>
                            <li class="active"> Dashboard </li>
                         </ol>
                    </div>
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->
                <!--Page content-->
                <!--===================================================-->
                <%-- <div id="page-content">
                    <div class="row">
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="panel">
                                <div class="panel-body pad-ver-5">
                                    <h4> Quick Stats </h4>
                                    <ul class="nav nav-section nav-justified">
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Sales <i class="fa fa-caret-up text-success"></i></h5>
                                                <p class="text-left"> 1250 </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Visits <i class="fa fa-caret-down text-danger"></i></h5>
                                                <p class="text-left"> 15K+ </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Registrations <i class="fa fa-caret-up text-success"></i></h5>
                                                <p class="text-left"> 3500 </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Tickets <i class="fa fa-caret-up text-success"></i></h5>
                                                <p class="text-left"> 450 </p>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="progress progress-striped progress-xs">
                                        <div style="width: 60%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar"> <span class="sr-only">60% Complete</span> </div>
                                    </div>
                                    <p class="text-left">Health: <span class="text-success">Good</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="panel">
                                <div class="panel-body pad-ver-5">
                                    <h4> Quick Stats </h4>
                                    <ul class="nav nav-section nav-justified">
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Sales <i class="fa fa-caret-up text-success"></i></h5>
                                                <p class="text-left"> 1250 </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Visits <i class="fa fa-caret-down text-danger"></i></h5>
                                                <p class="text-left"> 15K+ </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Registrations <i class="fa fa-caret-up text-success"></i></h5>
                                                <p class="text-left"> 3500 </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Tickets <i class="fa fa-caret-up text-success"></i></h5>
                                                <p class="text-left"> 450 </p>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="progress progress-striped progress-xs">
                                        <div style="width: 60%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar"> <span class="sr-only">60% Complete</span> </div>
                                    </div>
                                    <p class="text-left">Health: <span class="text-success">Good</span></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="panel">
                                <div class="panel-body pad-ver-5">
                                    <h4> Quick Stats </h4>
                                    <ul class="nav nav-section nav-justified">
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Sales <i class="fa fa-caret-up text-success"></i></h5>
                                                <p class="text-left"> 1250 </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Visits <i class="fa fa-caret-down text-danger"></i></h5>
                                                <p class="text-left"> 15K+ </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Registrations <i class="fa fa-caret-up text-success"></i></h5>
                                                <p class="text-left"> 3500 </p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h5 class="text-left"> Tickets <i class="fa fa-caret-up text-success"></i></h5>
                                                <p class="text-left"> 450 </p>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="progress progress-striped progress-xs">
                                        <div style="width: 60%;" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar"> <span class="sr-only">60% Complete</span> </div>
                                    </div>
                                    <p class="text-left">Health: <span class="text-success">Good</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-body">
                                    <ul class="nav nav-section nav-justified">
                                        <li>
                                            <div class="section">
                                                <h4 class="nm"> 67 GB </h4>
                                                <p class="text-muted">Total Usage</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h4 class="nm"> 320 GB </h4>
                                                <p class="text-muted">Total Space</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="section">
                                                <h4 class="nm"> 58% </h4>
                                                <p class="text-muted">CPU</p>
                                            </div>
                                        </li>
                                    </ul>
                                    <!--Flot Area Chart placeholder-->
                                    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
                                    <div id="demo-realtime" style="height:265px"></div>
                                    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
                                </div>
                            </div>
                        </div>
				      </div>
					  <div class="row">
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-body pad-btm-5">
                                    <div id="carousel-example-vertical" class="carousel vertical slide" data-ride="carousel">
                                        <div class="carousel-inner" role="listbox">
                                            <div class="item active">
                                                <div class="ticker-headline">
                                                    <div class="media">
                                                        <span class="pull-left"><i class="fa fa-twitter fa-4x text-azure"></i></span>
                                                        <div class="media-body">
                                                            <div class="h4"><strong>Semantha Schwarz</strong> <small>1 hour ago</small></div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id quam elementum odio tristique euismod. Suspendisse id nunc sed massa cursus efficitur.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="ticker-headline">
                                                    <div class="media">
                                                        <span class="pull-left"><i class="fa fa-facebook fa-4x text-primary"></i></span>
                                                        <div class="media-body">
                                                            <div class="h4"><strong>Semantha Schwarz</strong> <small>1 hour ago</small></div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id quam elementum odio tristique euismod. Suspendisse id nunc sed massa cursus efficitur. Nullam id quam elementum odio tristique euismod.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="ticker-headline">
                                                    <div class="media">
                                                        <span class="pull-left"><i class="fa fa-google-plus fa-4x text-danger"></i></span>
                                                        <div class="media-body">
                                                            <div class="h4"><strong>Semantha Schwarz</strong> <small>1 hour ago</small></div>
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id quam elementum odio tristique euismod. Suspendisse id nunc sed massa cursus efficitur.
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Controls -->
                                        <a class="up carousel-control" href="#carousel-example-vertical" role="button" data-slide="prev">
                                            <span class="glyphicon glyphicon-chevron-up" aria-hidden="true"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="down carousel-control" href="#carousel-example-vertical" role="button" data-slide="next">
                                            <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
						</div>
                        <div class="col-md-4">						
                            <div class="panel papernote">
                                <div class="panel-body pad-all">
                                    <div class="carousel slide" id="c-slide" data-ride="carousel">
                                        <div class="carousel-inner">
                                            <div class="item active">
                                                <h4>This is my note #1</h4>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id quam elementum odio tristique euismod. Suspendisse id nunc sed massa cursus efficitur.
                                                </p>
                                            </div>
                                            <div class="item">
                                                <h4>This is my note #2</h4>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id quam elementum odio tristique euismod. Suspendisse id nunc sed massa cursus efficitur.
                                                </p>
                                            </div>
                                            <div class="item">
                                                <h4>This is my note #3</h4>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id quam elementum odio tristique euismod. Suspendisse id nunc sed massa cursus efficitur.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                                <div class="panel">
                                    <div class="panel-body">
                                        <div class="carousel slide" id="c-slide-2" data-ride="carousel">
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <div class="text-bold"> Task in Progress </div>
                                                    <div class="pad-ver-5"> Navigation Illustration </div>
                                                    <!-- Progress bars Start -->                                
                                                    <div class="pad-btm">
                                                        <div class="progress progress-striped progress-sm">
                                                            <div class="progress-bar progress-bar-info" style="width: 55%;"></div>
                                                        </div>
                                                    </div>
                                                    <!-- Progress bars End -->
                                                    <div class="eq-height">
                                                        <div class="text-dark"> Status : </div>
                                                        <div class="text-dark text-lg pull-left"> Active </div>
                                                        <div class="text-dark pull-right"> 
                                                            <a href="#" class="btn btn-info btn-sm"> 
                                                            <i class="fa fa-pause pad-rgt-5"></i> Pause 
                                                            </a> 
                                                            <a href="#" class="btn btn-info btn-sm"> 
                                                            <i class="fa fa-check pad-rgt-5"></i> Complete 
                                                            </a> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="text-bold"> Task in Progress </div>
                                                    <div class="pad-ver-5"> App Usability Testing </div>
                                                    <!-- Progress bars Start -->                                
                                                    <div class="pad-btm">
                                                        <div class="progress progress-striped progress-sm">
                                                            <div class="progress-bar progress-bar-info" style="width: 55%;"></div>
                                                        </div>
                                                    </div>
                                                    <!-- Progress bars End -->
                                                    <div class="eq-height">
                                                        <div class="text-dark"> Status : </div>
                                                        <div class="text-dark text-lg pull-left pad-ver-5"> Active </div>
                                                        <div class="text-dark pull-right"> 
                                                            <a href="#" class="btn btn-info btn-sm"> 
                                                            <i class="fa fa-pause pad-rgt-5"></i> Pause 
                                                            </a> 
                                                            <a href="#" class="btn btn-info btn-sm"> 
                                                            <i class="fa fa-check pad-rgt-5"></i> Complete 
                                                            </a> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="text-bold"> Task in Progress </div>
                                                    <div class="pad-ver-5"> Web Portal Redesign </div>
                                                    <!-- Progress bars Start -->                                
                                                    <div class="pad-btm">
                                                        <div class="progress progress-striped progress-sm">
                                                            <div class="progress-bar progress-bar-info" style="width: 55%;"></div>
                                                        </div>
                                                    </div>
                                                    <!-- Progress bars End -->
                                                    <div class="eq-height">
                                                        <div class="text-dark"> Status : </div>
                                                        <div class="text-dark text-lg pull-left pad-ver-5"> Active </div>
                                                        <div class="text-dark pull-right"> 
                                                            <a href="#" class="btn btn-info btn-sm"> 
                                                            <i class="fa fa-pause pad-rgt-5"></i> Pause 
                                                            </a> 
                                                            <a href="#" class="btn btn-info btn-sm"> 
                                                            <i class="fa fa-check pad-rgt-5"></i> Complete 
                                                            </a> 
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
						</div>
                    </div>
					<div class="row">
                            <div class="col-lg-4 col-sm-6 col-md-6 col-xs-12">
                                <div class="userWidget-1">
                                    <div class="avatar bg-danger">
                                        <img src="<%=request.getContextPath()%>/adminResources/images/av1.png" alt="avatar">
                                        <div class="name osLight"> Sam Smith </div>
                                    </div>
                                    <div class="title"> Web Designer </div>
                                    <div class="address"> Los Angeles, CA, USA </div>
                                    <ul class="fullstats">
                                        <li> <span>280</span>Followers </li>
                                        <li> <span>345</span>Following </li>
                                        <li> <span>36</span>Posts </li>
                                    </ul>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6 col-md-6 col-xs-12">
                                <div class="userWidget-1">
                                    <div class="avatar bg-mint">
                                        <img src="<%=request.getContextPath()%>/adminResources/images/av2.png" alt="avatar">
                                        <div class="name osLight"> Jani Samual </div>
                                    </div>
                                    <div class="title"> Web Designer </div>
                                    <div class="address"> Los Angeles, CA, USA </div>
                                    <ul class="fullstats">
                                        <li> <span>280</span>Followers </li>
                                        <li> <span>345</span>Following </li>
                                        <li> <span>36</span>Posts </li>
                                    </ul>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6 col-md-6 col-xs-12">
                                <div class="userWidget-1">
                                    <div class="avatar bg-info">
                                        <img src="<%=request.getContextPath()%>/adminResources/images/av3.png" alt="avatar">
                                        <div class="name osLight"> Steve hawkins </div>
                                    </div>
                                    <div class="title"> Web Designer </div>
                                    <div class="address"> Los Angeles, CA, USA </div>
                                    <ul class="fullstats">
                                        <li> <span>280</span>Followers </li>
                                        <li> <span>345</span>Following </li>
                                        <li> <span>36</span>Posts </li>
                                    </ul>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
					</div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel">
                                    <div class="panel-body np">
                                        <!--Default Tabs (Left Aligned)--> 
                                        <!--===================================================-->
                                        <div class="tab-base mar-no">
                                            <!--Nav Tabs-->
                                            <ul class="nav nav-tabs">
                                                <li class="active"> <a data-toggle="tab" href="#demo-lft-tab-1"> Top Selling </a> </li>
                                                <li> <a data-toggle="tab" href="#demo-lft-tab-2">Most Viewed</a> </li>
                                                <li> <a data-toggle="tab" href="#demo-lft-tab-3">Recent Orders</a> </li>
                                            </ul>
                                            <!--Tabs Content-->
                                            <div class="tab-content">
                                                <div id="demo-lft-tab-1" class="tab-pane fade active in">
                                                    <!--Hover Rows--> 
                                                    <!--===================================================-->
                                                    <table class="table table-hover table-vcenter">
                                                        <thead>
                                                            <tr>
                                                                <th class="hidden-xs">#</th>
                                                                <th>Project</th>
                                                                <th>Project Deadline</th>
                                                                <th>Status</th>
                                                                <th>Clients</th>
                                                                <th class="hidden-xs">Progress</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="hidden-xs">1</td>
                                                                <td>IT Help Desk</td>
                                                                <td>11 May 2016</td>
                                                                <td>
                                                                    <div class="label label-table label-info">Block</div>
                                                                </td>
                                                                <td>Semantha Armstrong</td>
                                                                <td class="hidden-xs">
                                                                    <div class="progress progress-striped progress-sm">
                                                                        <div class="progress-bar progress-bar-primary" style="width: 25%;"></div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">2</td>
                                                                <td>Product Dev</td>
                                                                <td>15 May 2016</td>
                                                                <td>
                                                                    <div class="label label-table label-danger">On Hold</div>
                                                                </td>
                                                                <td>Jonathan Smith</td>
                                                                <td class="hidden-xs">
                                                                    <div class="progress progress-striped progress-sm">
                                                                        <div class="progress-bar progress-bar-success" style="width: 35%;"></div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">3</td>
                                                                <td>Website Redesign</td>
                                                                <td>19 May 2016</td>
                                                                <td>
                                                                    <div class="label label-table label-success">Approved</div>
                                                                </td>
                                                                <td>Jacob Armstrong</td>
                                                                <td class="hidden-xs">
                                                                    <div class="progress progress-striped progress-sm">
                                                                        <div class="progress-bar progress-bar-info" style="width: 85%;"></div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">4</td>
                                                                <td>Local Ad</td>
                                                                <td>25 May 2016</td>
                                                                <td>
                                                                    <div class="label label-table label-warning">Pending</div>
                                                                </td>
                                                                <td>Sandra Smith</td>
                                                                <td class="hidden-xs">
                                                                    <div class="progress progress-striped progress-sm">
                                                                        <div class="progress-bar progress-bar-warning" style="width: 45%;"></div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">5</td>
                                                                <td>Design new theme</td>
                                                                <td>28 May 2016</td>
                                                                <td>
                                                                    <div class="label label-table label-warning">Pending</div>
                                                                </td>
                                                                <td>Will DeBrandon</td>
                                                                <td class="hidden-xs">
                                                                    <div class="progress progress-striped progress-sm">
                                                                        <div class="progress-bar progress-bar-danger" style="width: 55%;"></div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">6</td>
                                                                <td>Mockup Testing</td>
                                                                <td>31 May 2016</td>
                                                                <td>
                                                                    <div class="label label-table label-warning">Pending</div>
                                                                </td>
                                                                <td>Alexander Flynn</td>
                                                                <td class="hidden-xs">
                                                                    <div class="progress progress-striped progress-sm">
                                                                        <div class="progress-bar progress-bar-success" style="width: 75%;"></div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">7</td>
                                                                <td>Testing</td>
                                                                <td>31 May 2016</td>
                                                                <td>
                                                                    <div class="label label-table label-warning">Pending</div>
                                                                </td>
                                                                <td>Alexander Flynn</td>
                                                                <td class="hidden-xs">
                                                                    <div class="progress progress-striped progress-sm">
                                                                        <div class="progress-bar progress-bar-success" style="width: 75%;"></div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <!--===================================================--> 
                                                    <!--End Hover Rows--> 
                                                </div>
                                                <div id="demo-lft-tab-2" class="tab-pane fade">
                                                    <!--Hover Rows-->
                                                    <!--===================================================-->
                                                    <table class="table table-hover table-vcenter">
                                                        <thead>
                                                            <tr>
                                                                <th>Invoice</th>
                                                                <th>Name</th>
                                                                <th class="text-center">Value</th>
                                                                <th class="hidden-xs">Delivery date</th>
                                                                <th>Status</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Order #53451</td>
                                                                <td>
                                                                    <span class="text-semibold">Desktop</span>
                                                                    <br>
                                                                    <small class="text-muted">Last 7 days : 4,234k</small>
                                                                </td>
                                                                <td class="text-center">$250</td>
                                                                <td class="hidden-xs">2012/04/25</td>
                                                                <td>
                                                                    <div class="label label-table label-info">On Process</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Order #53451</td>
                                                                <td>
                                                                    <span class="text-semibold">Laptop</span>
                                                                    <br>
                                                                    <small class="text-muted">Last 7 days : 3,876k</small>
                                                                </td>
                                                                <td class="text-center">$350</td>
                                                                <td class="hidden-xs">2012/04/25</td>
                                                                <td>
                                                                    <div class="label label-table label-danger">Cancelled</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Order #53451</td>
                                                                <td>
                                                                    <span class="text-semibold">Tablet</span>
                                                                    <br>
                                                                    <small class="text-muted">Last 7 days : 45,678k</small>
                                                                </td>
                                                                <td class="text-center">$325</td>
                                                                <td class="hidden-xs">2012/04/25</td>
                                                                <td>
                                                                    <div class="label label-table label-success">Shipped</div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Order #53451</td>
                                                                <td>
                                                                    <span class="text-semibold">Smartphone</span>
                                                                    <br>
                                                                    <small class="text-muted">Last 7 days : 34,553k</small>
                                                                </td>
                                                                <td class="text-center">$250</td>
                                                                <td class="hidden-xs">2012/04/25</td>
                                                                <td>
                                                                    <div class="label label-table label-warning">Pending</div>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <!--===================================================-->
                                                <!--End Hover Rows-->
                                                <div id="demo-lft-tab-3" class="tab-pane fade">
                                                    <!--Hover Rows--> 
                                                    <!--===================================================-->
                                                    <table class="table table-hover table-vcenter">
                                                        <thead>
                                                            <tr>
                                                                <th class="hidden-xs">&nbsp;</th>
                                                                <th>User ID</th>
                                                                <th>Date</th>
                                                                <th>Amount</th>
                                                                <th>Status</th>
                                                                <th class="hidden-xs">Download</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="hidden-xs">
                                                                    <div class="checkbox">
                                                                        <label class="form-checkbox form-icon active">
                                                                        <input type="checkbox">
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td> Semantha Armstrong </td>
                                                                <td>3 Jan, 2013</td>
                                                                <td>$239.85</td>
                                                                <td>
                                                                    <div class="label label-table label-info">Block</div>
                                                                </td>
                                                                <td class="hidden-xs">
                                                                    <!--Split Buttons Dropdown--> 
                                                                    <!--===================================================-->
                                                                    <div class="btn-group btn-group-xs">
                                                                        <button class="btn btn-danger">Download</button>
                                                                        <button class="btn btn-danger dropdown-toggle dropdown-toggle-icon" data-toggle="dropdown" type="button"> 
                                                                        <i class="dropdown-caret fa fa-caret-down"></i> 
                                                                        </button>
                                                                        <ul class="dropdown-menu">
                                                                            <li><a href="#">Action</a> </li>
                                                                            <li><a href="#">Another action</a> </li>
                                                                            <li><a href="#">Something else here</a> </li>
                                                                            <li class="divider"></li>
                                                                            <li><a href="#">Separated link</a> </li>
                                                                        </ul>
                                                                    </div>
                                                                    <!--===================================================-->
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">
                                                                    <div class="checkbox">
                                                                        <label class="form-checkbox form-icon active">
                                                                        <input type="checkbox">
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td> Jonathan Smith </td>
                                                                <td>3 Jan, 2013</td>
                                                                <td>$239.85</td>
                                                                <td>
                                                                    <div class="label label-table label-danger">On Hold</div>
                                                                </td>
                                                                <td class="hidden-xs">
                                                                    <!--Split Buttons Dropdown--> 
                                                                    <!--===================================================-->
                                                                    <div class="btn-group btn-group-xs">
                                                                        <button class="btn btn-danger">Download</button>
                                                                        <button class="btn btn-danger dropdown-toggle dropdown-toggle-icon" data-toggle="dropdown" type="button"> 
                                                                        <i class="dropdown-caret fa fa-caret-down"></i> 
                                                                        </button>
                                                                        <ul class="dropdown-menu">
                                                                            <li><a href="#">Action</a> </li>
                                                                            <li><a href="#">Another action</a> </li>
                                                                            <li><a href="#">Something else here</a> </li>
                                                                            <li class="divider"></li>
                                                                            <li><a href="#">Separated link</a> </li>
                                                                        </ul>
                                                                    </div>
                                                                    <!--===================================================-->
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">
                                                                    <div class="checkbox">
                                                                        <label class="form-checkbox form-icon active">
                                                                        <input type="checkbox">
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td> Jacob Armstrong </td>
                                                                <td>3 Jan, 2013</td>
                                                                <td>$1395.85</td>
                                                                <td>
                                                                    <div class="label label-table label-success">Approved</div>
                                                                </td>
                                                                <td class="hidden-xs">
                                                                    <!--Split Buttons Dropdown--> 
                                                                    <!--===================================================-->
                                                                    <div class="btn-group btn-group-xs">
                                                                        <button class="btn btn-danger">Download</button>
                                                                        <button class="btn btn-danger dropdown-toggle dropdown-toggle-icon" data-toggle="dropdown" type="button"> 
                                                                        <i class="dropdown-caret fa fa-caret-down"></i> 
                                                                        </button>
                                                                        <ul class="dropdown-menu">
                                                                            <li><a href="#">Action</a> </li>
                                                                            <li><a href="#">Another action</a> </li>
                                                                            <li><a href="#">Something else here</a> </li>
                                                                            <li class="divider"></li>
                                                                            <li><a href="#">Separated link</a> </li>
                                                                        </ul>
                                                                    </div>
                                                                    <!--===================================================-->
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">
                                                                    <div class="checkbox">
                                                                        <label class="form-checkbox form-icon active">
                                                                        <input type="checkbox">
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td> Sandra Smith </td>
                                                                <td>3 Jan, 2013</td>
                                                                <td>$125.85</td>
                                                                <td>
                                                                    <div class="label label-table label-warning">Pending</div>
                                                                </td>
                                                                <td class="hidden-xs">
                                                                    <!--Split Buttons Dropdown--> 
                                                                    <!--===================================================-->
                                                                    <div class="btn-group btn-group-xs">
                                                                        <button class="btn btn-danger">Download</button>
                                                                        <button class="btn btn-danger dropdown-toggle dropdown-toggle-icon" data-toggle="dropdown" type="button"> 
                                                                        <i class="dropdown-caret fa fa-caret-down"></i> 
                                                                        </button>
                                                                        <ul class="dropdown-menu">
                                                                            <li><a href="#">Action</a> </li>
                                                                            <li><a href="#">Another action</a> </li>
                                                                            <li><a href="#">Something else here</a> </li>
                                                                            <li class="divider"></li>
                                                                            <li><a href="#">Separated link</a> </li>
                                                                        </ul>
                                                                    </div>
                                                                    <!--===================================================-->
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="hidden-xs">
                                                                    <div class="checkbox">
                                                                        <label class="form-checkbox form-icon active">
                                                                        <input type="checkbox">
                                                                        </label>
                                                                    </div>
                                                                </td>
                                                                <td> Sandra </td>
                                                                <td>3 Jan, 2013</td>
                                                                <td>$239.85</td>
                                                                <td>
                                                                    <div class="label label-table label-warning">Pending</div>
                                                                </td>
                                                                <td class="hidden-xs">
                                                                    <!--Split Buttons Dropdown--> 
                                                                    <!--===================================================-->
                                                                    <div class="btn-group btn-group-xs">
                                                                        <button class="btn btn-danger">Download</button>
                                                                        <button class="btn btn-danger dropdown-toggle dropdown-toggle-icon" data-toggle="dropdown" type="button"> 
                                                                        <i class="dropdown-caret fa fa-caret-down"></i> 
                                                                        </button>
                                                                        <ul class="dropdown-menu">
                                                                            <li><a href="#">Action</a> </li>
                                                                            <li><a href="#">Another action</a> </li>
                                                                            <li><a href="#">Something else here</a> </li>
                                                                            <li class="divider"></li>
                                                                            <li><a href="#">Separated link</a> </li>
                                                                        </ul>
                                                                    </div>
                                                                    <!--===================================================-->
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <!--===================================================--> 
                                                    <!--End Hover Rows--> 
                                                </div>
                                            </div>
                                        </div>
                                        <!--===================================================--> 
                                        <!--End Default Tabs (Left Aligned)--> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="panel">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">User Accounts</h3>
                                    </div>
                                    <div class="panel-body">
                                        <!--Hover Rows--> 
                                        <!--===================================================-->
                                        <table class="table table-hover table-vcenter">
                                            <thead>
                                                <tr>
                                                    <th>&nbsp;</th>
                                                    <th>Profile</th>
                                                    <th>User ID</th>
                                                    <th class="hidden-xs">Email Address</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="checkbox">
                                                            <label class="form-checkbox form-icon active">
                                                            <input type="checkbox">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="media-object center"> <img src="<%=request.getContextPath()%>/adminResources/images/av1.png" alt="" class="img-rounded img-sm"> </div>
                                                    </td>
                                                    <td> Semantha Armstrong </td>
                                                    <td class="hidden-xs">semantha@gmail.com</td>
                                                    <td>
                                                        <div class="label label-table label-info">Block</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="checkbox">
                                                            <label class="form-checkbox form-icon active">
                                                            <input type="checkbox">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="media-object center"> <img src="<%=request.getContextPath()%>/adminResources/images/av1.png" alt="" class="img-rounded img-sm"> </div>
                                                    </td>
                                                    <td> Jonathan Smith </td>
                                                    <td class="hidden-xs">jonathan@gmail.com</td>
                                                    <td>
                                                        <div class="label label-table label-danger">On Hold</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="checkbox">
                                                            <label class="form-checkbox form-icon active">
                                                            <input type="checkbox">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="media-object center"> <img src="<%=request.getContextPath()%>/adminResources/images/av1.png" alt="" class="img-rounded img-sm"> </div>
                                                    </td>
                                                    <td> Jacob Armstrong </td>
                                                    <td class="hidden-xs">jacob@gmail.com</td>
                                                    <td>
                                                        <div class="label label-table label-success">Approved</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="checkbox">
                                                            <label class="form-checkbox form-icon active">
                                                            <input type="checkbox">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="media-object center"> <img src="<%=request.getContextPath()%>/adminResources/images/av1.png" alt="" class="img-rounded img-sm"> </div>
                                                    </td>
                                                    <td> Sandra Smith </td>
                                                    <td class="hidden-xs">Sandra@gmail.com</td>
                                                    <td>
                                                        <div class="label label-table label-warning">Pending</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="checkbox">
                                                            <label class="form-checkbox form-icon active">
                                                            <input type="checkbox">
                                                            </label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="media-object center"> <img src="<%=request.getContextPath()%>/adminResources/images/av1.png" alt="" class="img-rounded img-sm"> </div>
                                                    </td>
                                                    <td> Sandra </td>
                                                    <td class="hidden-xs">Sandra@gmail.com</td>
                                                    <td>
                                                        <div class="label label-table label-warning">Pending</div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!--===================================================--> 
                                        <!--End Hover Rows--> 
                                    </div>
                                </div>
                            </div>
                        </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Row selection and deletion (multiple rows) -->
                            <!--===================================================-->
                            <div class="panel">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Row selection and deletion (multiple rows)</h3>
                                </div>
                                <div id="demo-custom-toolbar" class="table-toolbar-left">
                                    <button id="demo-dt-delete-btn" class="btn btn-pink">Delete</button>
                                </div>
                                <div class="panel-body">
                                    <table id="demo-dt-delete" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th class="min-tablet">Office</th>
                                                <th class="min-tablet">Extn.</th>
                                                <th class="min-desktop">Start date</th>
                                                <th class="min-desktop">Salary</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Albert Desouza</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                <td>61</td>
                                                <td>2011/04/25</td>
                                                <td>$320,800</td>
                                            </tr>
                                            <tr>
                                                <td>Melinda</td>
                                                <td>Accountant</td>
                                                <td>Tokyo</td>
                                                <td>63</td>
                                                <td>2011/07/25</td>
                                                <td>$170,750</td>
                                            </tr>
                                            <tr>
                                                <td>Amy Douglas</td>
                                                <td>Junior Technical Author</td>
                                                <td>San Francisco</td>
                                                <td>66</td>
                                                <td>2009/01/12</td>
                                                <td>$86,000</td>
                                            </tr>
                                            <tr>
                                                <td>Kirk Wong</td>
                                                <td>Senior Javascript Developer</td>
                                                <td>Edinburgh</td>
                                                <td>22</td>
                                                <td>2012/03/29</td>
                                                <td>$433,060</td>
                                            </tr>
                                            <tr>
                                                <td>Jamie Vasquez</td>
                                                <td>Accountant</td>
                                                <td>Tokyo</td>
                                                <td>33</td>
                                                <td>2008/11/28</td>
                                                <td>$162,700</td>
                                            </tr>
                                            <tr>
                                                <td>Corina T. Jones</td>
                                                <td>Integration Specialist</td>
                                                <td>New York</td>
                                                <td>61</td>
                                                <td>2012/12/02</td>
                                                <td>$372,000</td>
                                            </tr>
                                            <tr>
                                                <td>Sharon T. Waldron</td>
                                                <td>Sales Assistant</td>
                                                <td>San Francisco</td>
                                                <td>59</td>
                                                <td>2012/08/06</td>
                                                <td>$137,500</td>
                                            </tr>
                                            <tr>
                                                <td>Rhona Davidson</td>
                                                <td>Integration Specialist</td>
                                                <td>Tokyo</td>
                                                <td>55</td>
                                                <td>2010/10/14</td>
                                                <td>$327,900</td>
                                            </tr>
                                            <tr>
                                                <td>Colleen Hurst</td>
                                                <td>Javascript Developer</td>
                                                <td>San Francisco</td>
                                                <td>39</td>
                                                <td>2009/09/15</td>
                                                <td>$205,500</td>
                                            </tr>
                                            <tr>
                                                <td>Sonya Frost</td>
                                                <td>Software Engineer</td>
                                                <td>Edinburgh</td>
                                                <td>23</td>
                                                <td>2008/12/13</td>
                                                <td>$103,600</td>
                                            </tr>
                                            <tr>
                                                <td>Jena Gaines</td>
                                                <td>Office Manager</td>
                                                <td>London</td>
                                                <td>30</td>
                                                <td>2008/12/19</td>
                                                <td>$90,560</td>
                                            </tr>
                                            <tr>
                                                <td>Quinn Flynn</td>
                                                <td>Support Lead</td>
                                                <td>Edinburgh</td>
                                                <td>22</td>
                                                <td>2013/03/03</td>
                                                <td>$342,000</td>
                                            </tr>
                                            <tr>
                                                <td>Charde Marshall</td>
                                                <td>Regional Director</td>
                                                <td>San Francisco</td>
                                                <td>36</td>
                                                <td>2008/10/16</td>
                                                <td>$470,600</td>
                                            </tr>
                                            <tr>
                                                <td>Haley Kennedy</td>
                                                <td>Senior Marketing Designer</td>
                                                <td>London</td>
                                                <td>43</td>
                                                <td>2012/12/18</td>
                                                <td>$313,500</td>
                                            </tr>
                                            <tr>
                                                <td>Tatyana Fitzpatrick</td>
                                                <td>Regional Director</td>
                                                <td>London</td>
                                                <td>19</td>
                                                <td>2010/03/17</td>
                                                <td>$385,750</td>
                                            </tr>
                                            <tr>
                                                <td>Michael Silva</td>
                                                <td>Marketing Designer</td>
                                                <td>London</td>
                                                <td>66</td>
                                                <td>2012/11/27</td>
                                                <td>$198,500</td>
                                            </tr>
                                            <tr>
                                                <td>Paul Byrd</td>
                                                <td>Chief Financial Officer (CFO)</td>
                                                <td>New York</td>
                                                <td>64</td>
                                                <td>2010/06/09</td>
                                                <td>$725,000</td>
                                            </tr>
                                            <tr>
                                                <td>Gloria Little</td>
                                                <td>Systems Administrator</td>
                                                <td>New York</td>
                                                <td>59</td>
                                                <td>2009/04/10</td>
                                                <td>$237,500</td>
                                            </tr>
                                            <tr>
                                                <td>Bradley Greer</td>
                                                <td>Software Engineer</td>
                                                <td>London</td>
                                                <td>41</td>
                                                <td>2012/10/13</td>
                                                <td>$132,000</td>
                                            </tr>
                                            <tr>
                                                <td>Dai Rios</td>
                                                <td>Personnel Lead</td>
                                                <td>Edinburgh</td>
                                                <td>35</td>
                                                <td>2012/09/26</td>
                                                <td>$217,500</td>
                                            </tr>
                                            <tr>
                                                <td>Jenette Caldwell</td>
                                                <td>Development Lead</td>
                                                <td>New York</td>
                                                <td>30</td>
                                                <td>2011/09/03</td>
                                                <td>$345,000</td>
                                            </tr>
                                            <tr>
                                                <td>Yuri Berry</td>
                                                <td>Chief Marketing Officer (CMO)</td>
                                                <td>New York</td>
                                                <td>40</td>
                                                <td>2009/06/25</td>
                                                <td>$675,000</td>
                                            </tr>
                                            <tr>
                                                <td>Caesar Vance</td>
                                                <td>Pre-Sales Support</td>
                                                <td>New York</td>
                                                <td>21</td>
                                                <td>2011/12/12</td>
                                                <td>$106,450</td>
                                            </tr>
                                            <tr>
                                                <td>Doris Wilder</td>
                                                <td>Sales Assistant</td>
                                                <td>Sidney</td>
                                                <td>23</td>
                                                <td>2010/09/20</td>
                                                <td>$85,600</td>
                                            </tr>
                                            <tr>
                                                <td>Angelica Ramos</td>
                                                <td>Chief Executive Officer (CEO)</td>
                                                <td>London</td>
                                                <td>47</td>
                                                <td>2009/10/09</td>
                                                <td>$1,200,000</td>
                                            </tr>
                                            <tr>
                                                <td>Gavin Joyce</td>
                                                <td>Developer</td>
                                                <td>Edinburgh</td>
                                                <td>42</td>
                                                <td>2010/12/22</td>
                                                <td>$92,575</td>
                                            </tr>
                                            <tr>
                                                <td>Jennifer Chang</td>
                                                <td>Regional Director</td>
                                                <td>Singapore</td>
                                                <td>28</td>
                                                <td>2010/11/14</td>
                                                <td>$357,650</td>
                                            </tr>
                                            <tr>
                                                <td>Brenden Wagner</td>
                                                <td>Software Engineer</td>
                                                <td>San Francisco</td>
                                                <td>28</td>
                                                <td>2011/06/07</td>
                                                <td>$206,850</td>
                                            </tr>
                                            <tr>
                                                <td>Fiona Green</td>
                                                <td>Chief Operating Officer (COO)</td>
                                                <td>San Francisco</td>
                                                <td>48</td>
                                                <td>2010/03/11</td>
                                                <td>$850,000</td>
                                            </tr>
                                            <tr>
                                                <td>Shou Itou</td>
                                                <td>Regional Marketing</td>
                                                <td>Tokyo</td>
                                                <td>20</td>
                                                <td>2011/08/14</td>
                                                <td>$163,000</td>
                                            </tr>
                                            <tr>
                                                <td>Michelle House</td>
                                                <td>Integration Specialist</td>
                                                <td>Sidney</td>
                                                <td>37</td>
                                                <td>2011/06/02</td>
                                                <td>$95,400</td>
                                            </tr>
                                            <tr>
                                                <td>Suki Burks</td>
                                                <td>Developer</td>
                                                <td>London</td>
                                                <td>53</td>
                                                <td>2009/10/22</td>
                                                <td>$114,500</td>
                                            </tr>
                                            <tr>
                                                <td>Prescott Bartlett</td>
                                                <td>Technical Author</td>
                                                <td>London</td>
                                                <td>27</td>
                                                <td>2011/05/07</td>
                                                <td>$145,000</td>
                                            </tr>
                                            <tr>
                                                <td>Gavin Cortez</td>
                                                <td>Team Leader</td>
                                                <td>San Francisco</td>
                                                <td>22</td>
                                                <td>2008/10/26</td>
                                                <td>$235,500</td>
                                            </tr>
                                            <tr>
                                                <td>Martena Mccray</td>
                                                <td>Post-Sales support</td>
                                                <td>Edinburgh</td>
                                                <td>46</td>
                                                <td>2011/03/09</td>
                                                <td>$324,050</td>
                                            </tr>
                                            <tr>
                                                <td>Unity Butler</td>
                                                <td>Marketing Designer</td>
                                                <td>San Francisco</td>
                                                <td>47</td>
                                                <td>2009/12/09</td>
                                                <td>$85,675</td>
                                            </tr>
                                            <tr>
                                                <td>Howard Hatfield</td>
                                                <td>Office Manager</td>
                                                <td>San Francisco</td>
                                                <td>51</td>
                                                <td>2008/12/16</td>
                                                <td>$164,500</td>
                                            </tr>
                                            <tr>
                                                <td>Hope Fuentes</td>
                                                <td>Secretary</td>
                                                <td>San Francisco</td>
                                                <td>41</td>
                                                <td>2010/02/12</td>
                                                <td>$109,850</td>
                                            </tr>
                                            <tr>
                                                <td>Vivian Harrell</td>
                                                <td>Financial Controller</td>
                                                <td>San Francisco</td>
                                                <td>62</td>
                                                <td>2009/02/14</td>
                                                <td>$452,500</td>
                                            </tr>
                                            <tr>
                                                <td>Timothy Mooney</td>
                                                <td>Office Manager</td>
                                                <td>London</td>
                                                <td>37</td>
                                                <td>2008/12/11</td>
                                                <td>$136,200</td>
                                            </tr>
                                            <tr>
                                                <td>Jackson Bradshaw</td>
                                                <td>Director</td>
                                                <td>New York</td>
                                                <td>65</td>
                                                <td>2008/09/26</td>
                                                <td>$645,750</td>
                                            </tr>
                                            <tr>
                                                <td>Olivia Liang</td>
                                                <td>Support Engineer</td>
                                                <td>Singapore</td>
                                                <td>64</td>
                                                <td>2011/02/03</td>
                                                <td>$234,500</td>
                                            </tr>
                                            <tr>
                                                <td>Bruno Nash</td>
                                                <td>Software Engineer</td>
                                                <td>London</td>
                                                <td>38</td>
                                                <td>2011/05/03</td>
                                                <td>$163,500</td>
                                            </tr>
                                            <tr>
                                                <td>Sakura Yamamoto</td>
                                                <td>Support Engineer</td>
                                                <td>Tokyo</td>
                                                <td>37</td>
                                                <td>2009/08/19</td>
                                                <td>$139,575</td>
                                            </tr>
                                            <tr>
                                                <td>Thor Walton</td>
                                                <td>Developer</td>
                                                <td>New York</td>
                                                <td>61</td>
                                                <td>2013/08/11</td>
                                                <td>$98,540</td>
                                            </tr>
                                            <tr>
                                                <td>Finn Camacho</td>
                                                <td>Support Engineer</td>
                                                <td>San Francisco</td>
                                                <td>47</td>
                                                <td>2009/07/07</td>
                                                <td>$87,500</td>
                                            </tr>
                                            <tr>
                                                <td>Serge Baldwin</td>
                                                <td>Data Coordinator</td>
                                                <td>Singapore</td>
                                                <td>64</td>
                                                <td>2012/04/09</td>
                                                <td>$138,575</td>
                                            </tr>
                                            <tr>
                                                <td>Zenaida Frank</td>
                                                <td>Software Engineer</td>
                                                <td>New York</td>
                                                <td>63</td>
                                                <td>2010/01/04</td>
                                                <td>$125,250</td>
                                            </tr>
                                            <tr>
                                                <td>Zorita Serrano</td>
                                                <td>Software Engineer</td>
                                                <td>San Francisco</td>
                                                <td>56</td>
                                                <td>2012/06/01</td>
                                                <td>$115,000</td>
                                            </tr>
                                            <tr>
                                                <td>Jennifer Acosta</td>
                                                <td>Junior Javascript Developer</td>
                                                <td>Edinburgh</td>
                                                <td>43</td>
                                                <td>2013/02/01</td>
                                                <td>$75,650</td>
                                            </tr>
                                            <tr>
                                                <td>Cara Stevens</td>
                                                <td>Sales Assistant</td>
                                                <td>New York</td>
                                                <td>46</td>
                                                <td>2011/12/06</td>
                                                <td>$145,600</td>
                                            </tr>
                                            <tr>
                                                <td>Hermione Butler</td>
                                                <td>Regional Director</td>
                                                <td>London</td>
                                                <td>47</td>
                                                <td>2011/03/21</td>
                                                <td>$356,250</td>
                                            </tr>
                                            <tr>
                                                <td>Lael Greer</td>
                                                <td>Systems Administrator</td>
                                                <td>London</td>
                                                <td>21</td>
                                                <td>2009/02/27</td>
                                                <td>$103,500</td>
                                            </tr>
                                            <tr>
                                                <td>Jonas Alexander</td>
                                                <td>Developer</td>
                                                <td>San Francisco</td>
                                                <td>30</td>
                                                <td>2010/07/14</td>
                                                <td>$86,500</td>
                                            </tr>
                                            <tr>
                                                <td>Shad Decker</td>
                                                <td>Regional Director</td>
                                                <td>Edinburgh</td>
                                                <td>51</td>
                                                <td>2008/11/13</td>
                                                <td>$183,000</td>
                                            </tr>
                                            <tr>
                                                <td>Michael Bruce</td>
                                                <td>Javascript Developer</td>
                                                <td>Singapore</td>
                                                <td>29</td>
                                                <td>2011/06/27</td>
                                                <td>$183,000</td>
                                            </tr>
                                            <tr>
                                                <td>Donna Snider</td>
                                                <td>Customer Support</td>
                                                <td>New York</td>
                                                <td>27</td>
                                                <td>2011/01/25</td>
                                                <td>$112,000</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--===================================================-->
                            <!-- End Row selection and deletion (multiple rows) -->

                        </div>
                    </div>
                </div> --%>
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
    <!--Jquery Nano Scroller js [ REQUIRED ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery.nanoscroller.min.js"></script>
    <!--Metismenu js [ REQUIRED ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/metismenu.min.js"></script>
    <!--Switchery [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/switchery.min.js"></script>
    <!--Jquery Steps [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/parsley.min.js"></script>
    <!--Jquery Steps [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery-steps.min.js"></script>
    <!--Bootstrap Select [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-select.min.js"></script>
    <!--Bootstrap Wizard [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery.bootstrap.wizard.min.js"></script>
    <!--Masked Input [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-inputmask.min.js"></script>
    <!--Bootstrap Validator [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/bootstrapValidator.min.js"></script>
    <!--Flot Chart [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery.flot.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery.flot.resize.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery.flot.spline.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/moment.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/moment-range.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery.flot.tooltip.min.js"></script>
    <!--Flot Order Bars Chart [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery.flot.categories.js"></script>
    <!--DataTables [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.responsive.min.js"></script>
    <!--Morris.js [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/morris.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/raphael.min.js"></script>
    <!--Easy Pie Chart [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/jquery.easypiechart.min.js"></script>
    <!--Fullscreen jQuery [ OPTIONAL ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/screenfull.js"></script>
    <!--Form Wizard [ SAMPLE ]-->
    <%-- <script src="<%=request.getContextPath()%>/adminResources/js/index.js"></script>
    <!--Form Wizard [ SAMPLE ]--> --%>
    <script src="<%=request.getContextPath()%>/adminResources/js/wizard.js"></script>
    <!--Form Wizard [ SAMPLE ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/form-wizard.js"></script>
    <!--DataTables Sample [ SAMPLE ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/tables-datatables.js"></script>
    <!--Jasmine Admin [ RECOMMENDED ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>

</body>

</html>