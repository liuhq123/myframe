<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sitemesh"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>myframe框架:<sitemesh:title /></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<link type="image/x-icon" href="${ctx}/static/images/favicon.ico"
	rel="shortcut icon">
<link href="${ctx}/static/bootstrap/2.3.2/css/bootstrap.min.css"
	type="text/css" rel="stylesheet" />
<link href="${ctx}/static/styles/default.min.css" type="text/css"
	rel="stylesheet" />
<script src="${ctx}/static/jquery/jquery-1.9.1.min.js"
	type="text/javascript"></script>

<sitemesh:head />

<!--  -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/css/cloud-admin.css">
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/css/themes/default.css" id="skin-switcher">
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/css/responsive.css">
<!-- STYLESHEETS -->
<!--[if lt IE 9]><script src="${ctx}/cloud/js/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
<link href="${ctx}/cloud/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- ANIMATE -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/css/animatecss/animate.min.css" />
<!-- DATE RANGE PICKER -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
<!-- TODO -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/js/jquery-todo/css/styles.css" />
<!-- FULL CALENDAR -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/js/fullcalendar/fullcalendar.min.css" />
<!-- GRITTER -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/js/gritter/css/jquery.gritter.css" />
<!-- FONTS -->
<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700'
	rel='stylesheet' type='text/css'>

</head>

<body>
	<div class="container">
		<%@ include file="/WEB-INF/layouts/header.jsp"%>
		<div class="row">
			<%@ include file="/WEB-INF/layouts/left.jsp"%>
			<div id="main" class="span10">
				<sitemesh:body />
			</div>
		</div>
		<%@ include file="/WEB-INF/layouts/footer.jsp"%>
	</div>
	<script src="${ctx}/static/bootstrap/2.3.2/js/bootstrap.min.js"
		type="text/javascript"></script>

	<!--  -->
	<!-- JAVASCRIPTS -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- JQUERY -->
	<script src="${ctx}/js/jquery/jquery-2.0.3.min.js"></script>
	<!-- JQUERY UI-->
	<script
		src="${ctx}/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
	<!-- BOOTSTRAP -->
	<script src="${ctx}/bootstrap-dist/js/bootstrap.min.js"></script>


	<!-- DATE RANGE PICKER -->
	<script src="${ctx}/js/bootstrap-daterangepicker/moment.min.js"></script>

	<script
		src="${ctx}/js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript"
		src="${ctx}/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript"
		src="${ctx}/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
	<script type="text/javascript"
		src="${ctx}/js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
	<!-- BLOCK UI -->
	<script type="text/javascript"
		src="${ctx}/js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
	<!-- SPARKLINES -->
	<script type="text/javascript"
		src="${ctx}/js/sparklines/jquery.sparkline.min.js"></script>
	<!-- EASY PIE CHART -->
	<script src="${ctx}/js/jquery-easing/jquery.easing.min.js"></script>
	<script type="text/javascript"
		src="${ctx}/js/easypiechart/jquery.easypiechart.min.js"></script>
	<!-- FLOT CHARTS -->
	<script src="${ctx}/js/flot/jquery.flot.min.js"></script>
	<script src="${ctx}/js/flot/jquery.flot.time.min.js"></script>
	<script src="${ctx}/js/flot/jquery.flot.selection.min.js"></script>
	<script src="${ctx}/js/flot/jquery.flot.resize.min.js"></script>
	<script src="${ctx}/js/flot/jquery.flot.pie.min.js"></script>
	<script src="${ctx}/js/flot/jquery.flot.stack.min.js"></script>
	<script src="${ctx}/js/flot/jquery.flot.crosshair.min.js"></script>
	<!-- TODO -->
	<script type="text/javascript"
		src="${ctx}/js/jquery-todo/js/paddystodolist.js"></script>
	<!-- TIMEAGO -->
	<script type="text/javascript"
		src="${ctx}/js/timeago/jquery.timeago.min.js"></script>
	<!-- FULL CALENDAR -->
	<script type="text/javascript"
		src="${ctx}/js/fullcalendar/fullcalendar.min.js"></script>
	<!-- COOKIE -->
	<script type="text/javascript"
		src="${ctx}/js/jQuery-Cookie/jquery.cookie.min.js"></script>
	<!-- GRITTER -->
	<script type="text/javascript"
		src="${ctx}/js/gritter/js/jquery.gritter.min.js"></script>
	<!-- CUSTOM SCRIPT -->
	<script src="${ctx}/js/script.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.setPage("index"); //Set current page
			App.init(); //Initialise plugins and elements
		});
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>