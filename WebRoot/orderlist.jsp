<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.bean.User"%>
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/dateRange.js"></script>
<link rel="stylesheet" type="text/css" href="css/dateRange.css" />

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
								<s:if test="#session.user==null">
									<li><a href="#" class="default_t_color"
										data-popup="#login_popup">登录</a></li>
									<li><a href="register.jsp" class="default_t_color">注册</a></li>
								</s:if>
								<s:if test="#session.user!=null">
									<li><a href="#" class="default_t_color"><s:property
												value="#session.user.username" /></a></li>
									<li><a href="user_logout" class="default_t_color">退出</a></li>
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
								href="success.jsp"
								class="tr_delay_hover color_light tt_uppercase"><b>首页</b></a></li>
							<li class="relative f_xs_none m_xs_bottom_5"><a href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>酒店宾馆</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>客栈民宿</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>青年旅舍</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>特价酒店</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>会场预订</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="#" class="tr_delay_hover color_light tt_uppercase"><b>我的旅店</b></a>
								<!--sub menu-->
								<div
									class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
									<ul class="sub_menu">
										<li><a class="color_dark tr_delay_hover"
											href="hotel_findByUser">旅店信息</a></li>
										<li><a class="color_dark tr_delay_hover"
											href="hotel_findOrder">预订情况</a></li>
									</ul>
								</div></li>
							<li class="relative current f_xs_none m_xs_bottom_5"><a href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>订单</b></a> <!--sub menu-->
								<div
									class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
									<ul class="sub_menu">
										<li><a class="color_dark tr_delay_hover" href="#">非会员订单查询</a></li>
										<li><a class="color_dark tr_delay_hover"
											href="order_findByUser">会员订单</a></li>
									</ul>
								</div></li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="contact.jsp"
								class="tr_delay_hover color_light tt_uppercase"><b>联系我们</b></a></li>
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
						<h2 class="tt_uppercase color_dark m_bottom_30">我的订单</h2>
						<!--orders list table-->
						<table
							class="table_type_3 responsive_table full_width r_corners wrapper shadow bg_light_color_1 m_bottom_30 t_align_l">
							<thead>
								<tr class="f_size_large">
									<!--titles for td-->
									<th>订单号</th>
									<th>入住日期</th>
									<th>下单时间</th>
									<th style="width:150px">酒店名称</th>
									<th style="width:150px">房间</th>
									<th>价格</th>
									<th style="width:100px">留言</th>
									<th style="width:150px">订单状态</th>
								</tr>
							</thead>
							<tbody>
							<s:iterator value="#session.orderlist" var="o">
								<tr>
									<!--order number-->
									<td data-title="Order Number"><a href="#"
										class="color_dark"><s:property value="#o.orderid"/></a></td>
									<!--order date-->
									<td data-title="Order Date"><s:property value="#o.checkinDate"/></td>
									<td data-title="Order Date"><s:property value="#o.orderDate"/></td>
									<!--order status-->
									<td data-title="Order Status"><s:property value="#o.room.hotel.name"/></td>
									<td data-title="Order Status"><s:property value="#o.room.name"/></td>
									<!--quanity-->
									<td data-title="Total"><span
										class="f_size_large fw_medium scheme_color"><s:property value="#o.price"/></span></td>
									<td data-title="Order Status"><s:property value="#o.leaveWord"/></td>
									<td data-title="Order Status"><s:property value="#o.status"/></td>
								</tr>
								</s:iterator>
							</tbody>
						</table>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!--social widgets-->
	<ul class="social_widgets d_xs_none">
		<!--contact form-->
		<li class="relative">
			<button class="sw_button t_align_c contact">
				<i class="fa fa-envelope-o"></i>
			</button>
			<div class="sw_content">
				<h3 class="color_dark m_bottom_20">Contact Us</h3>
				<p class="f_size_medium m_bottom_15">Lorem ipsum dolor sit amet,
					consectetuer adipis mauris</p>
				<form id="contactform" class="mini">
					<input class="f_size_medium m_bottom_10 r_corners full_width"
						type="text" name="cf_name" placeholder="Your name"> <input
						class="f_size_medium m_bottom_10 r_corners full_width"
						type="email" name="cf_email" placeholder="Email">
					<textarea class="f_size_medium r_corners full_width m_bottom_20"
						placeholder="Message" name="cf_message"></textarea>
					<button type="submit"
						class="button_type_4 r_corners mw_0 tr_all_hover color_dark bg_light_color_2">Send</button>
				</form>
			</div>
		</li>
	</ul>
	<!--login popup-->
	<div class="popup_wrap d_none" id="login_popup">
		<section class="popup r_corners shadow">
			<button
				class="bg_tr color_dark tr_all_hover text_cs_hover close f_size_large">
				<i class="fa fa-times"></i>
			</button>
			<h3 class="m_bottom_20 color_dark">登录</h3>
			<s:form action="user_login" method="post" namespace="/">
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
			<footer class="bg_light_color_1 t_mxs_align_c">
				<h3 class="color_dark d_inline_middle d_mxs_block m_mxs_bottom_15">新用户？</h3>
				<a href="register。jsp" data-role="button"
					class="tr_all_hover r_corners button_type_4 bg_dark_color bg_cs_hover color_light d_inline_middle m_mxs_left_0">创建一个账号</a>
			</footer>
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