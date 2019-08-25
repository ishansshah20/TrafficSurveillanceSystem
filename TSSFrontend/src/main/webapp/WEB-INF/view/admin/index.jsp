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
	<script src="<%=request.getContextPath()%>/adminResources/js/highcharts.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/exporting.js"></script>


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
               <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-body">
                                    
								<div id="graph_container" style="min-width: 200%; height: 400px; margin: 0 auto"></div>
							
								<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

								<c:forEach items="${vehicleList}" var="i" >
									<input type="hidden" name="xvalue" value="${i.startTime}-${i.endTime}" />
									<input type="hidden" name="yvalue" value="${i.vehicleCount}" />
								</c:forEach>

                                </div>
                            </div>
                        </div>
				 </div>
				 
				 <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-body">
                                    
								<div id="graph_container2" style="min-width: 200%; height: 400px; margin: 0 auto"></div>
							
								<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

								<c:forEach items="${vehicleList2}" var="i">
									<input type="hidden" name="xvalue2" value="${i.startTime}-${i.endTime}" />
									<input type="hidden" name="yvalue2" value="${i.vehicleCount}" />
								</c:forEach>

                                </div>
                            </div>
                        </div>
				 </div>
				 
				 <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-body">
                                    
								<div id="graph_container3" style="min-width: 200%; height: 400px; margin: 0 auto"></div>
							
								<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

								<c:forEach items="${vehicleList3}" var="i">
									<input type="hidden" name="xvalue3" value="${i.startTime}-${i.endTime}" />
									<input type="hidden" name="yvalue3" value="${i.vehicleCount}" />
								</c:forEach>

                                </div>
                            </div>
                        </div>
				 </div>
				 
				 <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-body">
                                    
								<div id="graph_container4" style="min-width: 200%; height: 400px; margin: 0 auto"></div>
							
								<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

								<c:forEach items="${vehicleList4}" var="i">
									<input type="hidden" name="xvalue4" value="${i.startTime}-${i.endTime}" />
									<input type="hidden" name="yvalue4" value="${i.vehicleCount}" />
								</c:forEach>

                                </div>
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
  <%--   <script src="<%=request.getConteFxtPath()%>/adminResources/js/index.js"></script>
   --%>  <!--Form Wizard [ SAMPLE ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/wizard.js"></script>
    <!--Form Wizard [ SAMPLE ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/form-wizard.js"></script>
    <!--DataTables Sample [ SAMPLE ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/tables-datatables.js"></script>
    <!--Jasmine Admin [ RECOMMENDED ]-->
    <script src="<%=request.getContextPath()%>/adminResources/js/scripts.js"></script>


<script>

/* Graph for signal 1 */
var xvalue= document.getElementsByName("xvalue");
var xdata = [];
var yvalue= document.getElementsByName("yvalue");
var ydata = [];
for(var i=0;i<xvalue.length;i++)
{
	xdata.push(xvalue[i].value);
	ydata.push(parseFloat(yvalue[i].value));
}

Highcharts.chart({
    chart: {
	renderTo:"graph_container",

        type: 'column'
    },
    title: {
        text: 'Vehicle count at Signal-1'
    },
    subtitle: {
        text: 'IIM ROAD'
    },
    xAxis: {
        categories: xdata,
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Number of Vehicle'
        }
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Vehicles',
        data: ydata

    }]
});

/* Graph for signal 2 */
var xvalue2= document.getElementsByName("xvalue2");
var xdata2 = [];
var yvalue2= document.getElementsByName("yvalue2");
var ydata2 = [];
for(var i=0;i<xvalue2.length;i++)
{
	xdata2.push(xvalue2[i].value);
	ydata2.push(parseFloat(yvalue2[i].value));
}
Highcharts.chart({
    chart: {
	renderTo:"graph_container2",

        type: 'column'
    },
    title: {
        text: 'Vehicle count at Signal-2'
    },
    subtitle: {
        text: 'IIM ROAD'
    },
    xAxis: {
        categories: xdata2,
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Number of Vehicles'
        }
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Vehicles',
        data: ydata2

    }]
});

/* Graph for signal 3 */
var xvalue3= document.getElementsByName("xvalue3");
var xdata3 = [];
var yvalue3= document.getElementsByName("yvalue3");
var ydata3 = [];
for(var i=0;i<xvalue3.length;i++)
{
	xdata3.push(xvalue3[i].value);
	ydata3.push(parseFloat(yvalue3[i].value));
}
Highcharts.chart({
    chart: {
	renderTo:"graph_container3",

        type: 'column'
    },
    title: {
        text: 'Vehicle count at Signal-3'
    },
    subtitle: {
        text: 'IIM ROAD'
    },
    xAxis: {
        categories: xdata3,
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Number of Vehicle'
        }
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Vehicles',
        data: ydata3

    }]
});

/* Graph for signal 4 */
var xvalue4= document.getElementsByName("xvalue4");
var xdata4 = [];
var yvalue4= document.getElementsByName("yvalue4");
var ydata4 = [];
for(var i=0;i<xvalue4.length;i++)
{
	xdata4.push(xvalue4[i].value);
	ydata4.push(parseFloat(yvalue4[i].value));
}
Highcharts.chart({
    chart: {
	renderTo:"graph_container4",

        type: 'column'
    },
    title: {
        text: 'Vehicle count at Signal-4'
    },
    subtitle: {
        text: 'IIM ROAD'
    },
    xAxis: {
        categories: xdata4,
        crosshair: true
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Number of Vehicle'
        }
    },
    plotOptions: {
        column: {
            pointPadding: 0.2,
            borderWidth: 0
        }
    },
    series: [{
        name: 'Vehicles',
        data: ydata4

    }]
});

</script>


</body>

</html>