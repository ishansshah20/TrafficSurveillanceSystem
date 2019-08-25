<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Staff |Traffic Surveillance System</title>
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
        <!--Bootstrap Table [ OPTIONAL ]-->
        <link href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/adminResources/css/dataTables.responsive.css" rel="stylesheet">
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
                    <div class="pageheader hidden-xs">
                        <h3><i class="fa fa-home"></i>Manage Staff</h3>
                        <div class="breadcrumb-wrapper">
                            <span class="label">You are here:</span>
                            <ol class="breadcrumb">
                                <li> <a href="#"> Home </a> </li>
                                <li> <a href="#"> Manage Staff </a> </li>
                                <li class="active">View Staff </li>
                            </ol>
                        </div>
                    </div>
                    <!--Page content-->
                    <!--===================================================-->
                    <div id="page-content">
                       <div class="row">
                             <div class="col-md-12">

                        <!-- Basic Data Tables -->
                        <!--===================================================-->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Staff Details</h3>
                            </div>
                            <div class="panel-body">
                                <table id="demo-dt-basic" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>First Name</th>
                                            <th class="min-tablet">Last Name</th>
                                            <th class="min-tablet">Email</th>
                                            <th class="min-desktop">Gender</th>
                                            <th class="min-desktop">Phone No</th>
                                            <th class="min-desktop">Area</th>
                                            <th class="min-desktop">Address</th>
                                            <th class="min-desktop">Action</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                   	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
                                   	
                                   	<c:forEach items="${staffList}" var="i" varStatus="j">
                                   		<tr>
                                   			<td>${j.count}</td>
                                   			<td>${i.firstName}</td>
                                   			<td>${i.lastName}</td>
                                   			<td>${i.loginVO.username}</td>
                                   			<td>${i.gender}</td>
                                   			<td>${i.phoneNO}</td>
                                   			<td>${i.areaVO.areaName}</td>
											<td>${i.address}</td>
											<td>
												<c:if test="${i.loginVO.enabled eq '1' }">
													<a href="blockStaff?id=${i.loginVO.loginId}"><font color="red">Block</font></a>
												</c:if>
												<c:if test="${i.loginVO.enabled eq '0'}">
													<a href="unblockStaff?id=${i.loginVO.loginId}"><font color="green">Unblock</font></a>
												</c:if>
												
											</td>
													                                   		
                                   		</tr>
                                   	
                                   	</c:forEach> 
                                   </tbody>
                                </table>
                            </div>
                        </div>
					</div>
				</div>
                        <!--===================================================-->
                        <!-- End Striped Table -->
                        <!-- Row selection (single row) -->
                        <!--===================================================-->
                        <!--===================================================-->
                        <!-- End Row selection (single row) -->
                        <!-- Row selection and deletion (multiple rows) -->
                        <!--===================================================-->
                        
                        <!--===================================================-->
                        <!-- End Row selection and deletion (multiple rows) -->
                        <!-- Add Row -->
                        <!--===================================================-->
                        
                        <!--===================================================-->
                        <!-- End Add Row -->
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
        <!--DataTables [ OPTIONAL ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap.js"></script>
        <script src="<%=request.getContextPath()%>/adminResources/js/dataTables.responsive.min.js"></script>
        <!--Fullscreen jQuery [ OPTIONAL ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/screenfull.js"></script>
        <!--DataTables Sample [ SAMPLE ]-->
        <script src="<%=request.getContextPath()%>/adminResources/js/tables-datatables.js"></script>
    </body>
</html>