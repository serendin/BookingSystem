<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!doctype html>
<html>
<head>
<title>旅店预定</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!--meta info-->
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="icon" type="image/ico" href="images/fav.ico">
<!--stylesheet include-->
<link rel="stylesheet" type="text/css" media="all"
	href="css/flexslider.css">
<link rel="stylesheet" type="text/css" media="all"
	href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="all"
	href="css/owl.transitions.css">
<link rel="stylesheet" type="text/css" media="all"
	href="css/jquery.custom-scrollbar.css">
<link rel="stylesheet" type="text/css" media="all"
	href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" media="all" href="css/style.css">
<!--font include-->
<link href="css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	<!--wide layout-->
	<div class="wide_layout relative">

		<!--markup header-->
		<header role="banner">
			<!--header top part-->
			<section class="h_top_part">
				<div class="container">
					<div class="row clearfix">
						<div class="col-lg-4 col-md-4 col-sm-5 t_xs_align_c">
							<ul
								class="d_inline_b horizontal_list clearfix f_size_small users_nav">
								<s:if test="#session.manager==null">
									<li><a href="#" class="default_t_color"
										data-popup="#login_popup">登录</a></li>
								</s:if>
								<s:if test="#session.manager!=null">
									<li><a href="#" class="default_t_color"><s:property
												value="#session.manager.managerid" /></a></li>
									<li><a href="manager_logout" class="default_t_color">退出</a></li>
								</s:if>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!--main menu container-->
			<div class="container">
				<section
					class="menu_wrap type_2 relative clearfix t_xs_align_c m_bottom_20">
					<!--button for responsive menu-->
					<button id="menu_button"
						class="r_corners centered_db d_none tr_all_hover d_xs_block m_bottom_15">
						<span class="centered_db r_corners"></span> <span
							class="centered_db r_corners"></span> <span
							class="centered_db r_corners"></span>
					</button>
					<!--main menu-->
					<nav role="navigation"
						class="f_left f_xs_none d_xs_none t_xs_align_l">
						<ul class="horizontal_list main_menu clearfix">
							<li class="relative current f_xs_none m_xs_bottom_5"><a
								href="manager.jsp"
								class="tr_delay_hover color_light tt_uppercase"><b>首页</b></a></li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="hotel_findall"
								class="tr_delay_hover color_light tt_uppercase"><b>旅店信息</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="user_findall"
								class="tr_delay_hover color_light tt_uppercase"><b>用户信息</b></a>
							</li>

						</ul>
					</nav>
				</section>
			</div>
		</header>
		<!--content-->
		<div class="page_content_offset">
			<div class="container">
				<div class="row clearfix">
					<!--left content column-->
					<section class="col-lg-9 col-md-9 col-sm-9">
						<h2 class="tt_uppercase color_dark m_bottom_30">用户信息</h2>
						<!--orders list table-->
						<table
							class="table_type_3 responsive_table full_width r_corners wrapper shadow bg_light_color_1 m_bottom_30 t_align_l">
							<thead>
								<tr class="f_size_large">
									<!--titles for td-->
									<th>用户名</th>
									<th>姓名</th>
									<th>性别</th>
									<th>邮箱</th>
								</tr>
							</thead>
							<tbody>
							<s:iterator value="#session.userlist" var="u">
								<tr>
									<td data-title="Order Number">
									<s:property value="#u.username"/></td>
									<td data-title="Order Date">
									<s:property value="#u.name"/></td>
									<td data-title="Order Status">
									<s:property value="#u.sex"/></td>
									<td data-title="Total">
									<s:property value="#u.email"/></td>
								</tr>
								</s:iterator>
							</tbody>
						</table>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!--login popup-->
	<div class="popup_wrap d_none" id="login_popup">
		<section class="popup r_corners shadow">
			<button
				class="bg_tr color_dark tr_all_hover text_cs_hover close f_size_large">
				<i class="fa fa-times"></i>
			</button>
			<h3 class="m_bottom_20 color_dark">管理员登录</h3>
			<s:form action="manager_login" method="post" namespace="/">
				<ul>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">用户名</label><br> <input
						type="text" name="user.username" id="username"
						class="r_corners full_width"></li>
					<li class="m_bottom_25"><label for="password"
						class="m_bottom_5 d_inline_b">密码</label><br> <input
						type="password" name="user.password" id="password"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><input type="checkbox" class="d_none"
						id="checkbox_10"><label for="checkbox_10">Remember
							me</label></li>
					<li class="clearfix m_bottom_30"><input type="submit"
						value="登录"
						class="button_type_4 tr_all_hover r_corners f_left bg_scheme_color color_light f_mxs_none m_mxs_bottom_15" />
						<div class="f_right f_size_medium f_mxs_none">
							<a href="#" class="color_dark">忘记密码?</a><br>
						</div></li>
				</ul>
			</s:form>
		</section>
	</div>
	<button class="t_align_c r_corners tr_all_hover type_2 animate_ftl"
		id="go_to_top">
		<i class="fa fa-angle-up"></i>
	</button>
	<!--scripts include-->
	<script src="js/jquery-2.1.0.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/retina.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/jquery.tweet.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.custom-scrollbar.js"></script>
	<script src="js/scripts.js"></script>
	<script src="js/jquery.flexslider-min.js"></script>


</body>
</html>