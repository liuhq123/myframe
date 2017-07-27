<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page
	import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.LockedAccountException "%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>登录页</title>
<script
	src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js"
	type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js"
	type="text/javascript"></script>
<link href="${ctx}/static/jquery-validation/1.11.1/validate.css"
	type="text/css" rel="stylesheet" />
<!--  -->
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- STYLESHEETS -->
<!--[if lt IE 9]><script src="${ctx}/cloud/js/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/css/cloud-admin.css">

<link href="${ctx}/cloud/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- DATE RANGE PICKER -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
<!-- UNIFORM -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/js/uniform/css/uniform.default.min.css" />
<!-- ANIMATE -->
<link rel="stylesheet" type="text/css"
	href="${ctx}/cloud/css/animatecss/animate.min.css" />
<!-- FONTS -->
<link href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700'
	rel='stylesheet' type='text/css'>
</head>

<body class="login">
	<h1>登录页</h1>
	<form id="loginForm" action="${ctx}/login" method="post">
		<%
			String error = (String) request
					.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
			if (error != null) {
		%>
		<div class="alert alert-error controls input-large">
			<button class="close" data-dismiss="alert">×</button>
			<%
				if (error.contains("DisabledAccountException")) {
						out.print("用户已被屏蔽,请登录其他用户.");
					} else {
						out.print("登录失败，请重试.");
					}
			%>
		</div>
		<%
			}
		%>
		<!-- PAGE -->
		<section id="page">
			<!-- HEADER -->
			<header>
				<!-- NAV-BAR -->
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div id="logo">
								<a href="${ctx}/cloud/index.html"><img
									src="${ctx}/cloud/img/logo/logo-alt.png" height="40"
									alt="logo name" /></a>
							</div>
						</div>
					</div>
				</div>
				<!--/NAV-BAR -->
			</header>
			<!--/HEADER -->
			<!-- LOGIN -->
			<section id="login" class="visible">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<form role="form">
									<div class="control-group">
										<label for="username" class="control-label">用户名</label>
										<div class="controls">
											<input type="text" id="username" name="username"
												value="${username}" class="input-medium required" />
										</div>
									</div>
									<div class="control-group">
										<label for="password" class="control-label">密码</label><i
											class="fa fa-lock"></i>
										<div class="controls">
											<input type="password" id="password" name="password"
												class="input-medium required" />
										</div>
									</div>

									<div class="form-actions">
										<label class="checkbox"><input type="checkbox"
											id="rememberMe" name="rememberMe" />记住我</label> <input
											id="submit_btn" class="btn btn-danger" type="submit"
											value="登录" />
									</div>
								</form>
								<!-- SOCIAL LOGIN -->
								<div class="divide-20"></div>
								<div class="center">
									<strong>Or login using your social account</strong>
								</div>
								<div class="divide-20"></div>
								<div class="social-login center">
									<a class="btn btn-primary btn-lg"> <i
										class="fa fa-facebook"></i>
									</a> <a class="btn btn-info btn-lg"> <i class="fa fa-twitter"></i>
									</a> <a class="btn btn-danger btn-lg"> <i
										class="fa fa-google-plus"></i>
									</a>
								</div>
								<!-- /SOCIAL LOGIN -->
								<div class="login-helpers">
									<a href="#" onclick="swapScreen('forgot');return false;">Forgot
										Password?</a> <br> Don't have an account with us? <a href="#"
										onclick="swapScreen('register');return false;">Register
										now!</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--/LOGIN -->
			<!-- REGISTER -->
			<section id="register">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<h2 class="bigintro">Register</h2>
								<div class="divide-40"></div>
								<form role="form">
									<div class="form-group">
										<label for="exampleInputName">Full Name</label> <i
											class="fa fa-font"></i> <input type="text"
											class="form-control" id="exampleInputName">
									</div>
									<div class="form-group">
										<label for="exampleInputUsername">Username</label> <i
											class="fa fa-user"></i> <input type="text"
											class="form-control" id="exampleInputUsername">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Email address</label> <i
											class="fa fa-envelope"></i> <input type="email"
											class="form-control" id="exampleInputEmail1">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Password</label> <i
											class="fa fa-lock"></i> <input type="password"
											class="form-control" id="exampleInputPassword1">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword2">Repeat Password</label> <i
											class="fa fa-check-square-o"></i> <input type="password"
											class="form-control" id="exampleInputPassword2">
									</div>
									<div class="form-actions">
										<label class="checkbox"> <input type="checkbox"
											class="uniform" value=""> I agree to the <a href="#">Terms
												of Service</a> and <a href="#">Privacy Policy</a></label>
										<button type="submit" class="btn btn-success">Sign Up</button>
									</div>
								</form>
								<!-- SOCIAL REGISTER -->
								<div class="divide-20"></div>
								<div class="center">
									<strong>Or register using your social account</strong>
								</div>
								<div class="divide-20"></div>
								<div class="social-login center">
									<a class="btn btn-primary btn-lg"> <i
										class="fa fa-facebook"></i>
									</a> <a class="btn btn-info btn-lg"> <i class="fa fa-twitter"></i>
									</a> <a class="btn btn-danger btn-lg"> <i
										class="fa fa-google-plus"></i>
									</a>
								</div>
								<!-- /SOCIAL REGISTER -->
								<div class="login-helpers">
									<a href="#" onclick="swapScreen('login');return false;">
										Back to Login</a> <br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!--/REGISTER -->
			<!-- FORGOT PASSWORD -->
			<section id="forgot">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<div class="login-box-plain">
								<h2 class="bigintro">Reset Password</h2>
								<div class="divide-40"></div>
								<form role="form">
									<div class="form-group">
										<label for="exampleInputEmail1">Enter your Email
											address</label> <i class="fa fa-envelope"></i> <input type="email"
											class="form-control" id="exampleInputEmail1">
									</div>
									<div class="form-actions">
										<button type="submit" class="btn btn-info">Send Me
											Reset Instructions</button>
									</div>
								</form>
								<div class="login-helpers">
									<a href="#" onclick="swapScreen('login');return false;">Back
										to Login</a> <br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- FORGOT PASSWORD -->
		</section>
		<!--/PAGE -->

	</form>

	<script>
		$(document).ready(function() {
			$("#loginForm").validate();
		});
	</script>

	<!-- JAVASCRIPTS -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- JQUERY -->
	<script src="${ctx}/cloud/js/jquery/jquery-2.0.3.min.js"></script>
	<!-- JQUERY UI-->
	<script
		src="${ctx}/cloud/js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
	<!-- BOOTSTRAP -->
	<script src="${ctx}/cloud/bootstrap-dist/js/bootstrap.min.js"></script>


	<!-- UNIFORM -->
	<script type="text/javascript"
		src="${ctx}/cloud/js/uniform/jquery.uniform.min.js"></script>
	<!-- CUSTOM SCRIPT -->
	<script src="${ctx}/cloud/js/script.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.setPage("login"); //Set current page
			App.init(); //Initialise plugins and elements
		});
	</script>
	<script type="text/javascript">
		function swapScreen(id) {
			jQuery('.visible').removeClass('visible animated fadeInUp');
			jQuery('#' + id).addClass('visible animated fadeInUp');
		}
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>
