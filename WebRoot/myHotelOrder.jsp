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
								<s:if test="#session.user==null">
									<li><a href="#" class="default_t_color"
										data-popup="#login_popup">登录</a></li>
									<li><a href="#" class="default_t_color">注册</a></li>
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
							<li class="relative f_xs_none m_xs_bottom_5"><a
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
								class="tr_delay_hover color_light tt_uppercase"><b>会场预订</b></a>
							</li>
							<li
								class="relative current f_xs_none m_xs_bottom_5"><a
								href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>我的旅店</b></a>
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
							<li
								class="relative f_xs_none m_xs_bottom_5"><a
								href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>订单</b></a>
								<!--sub menu-->
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
						<h2 class="tt_uppercase color_dark m_bottom_30">未入住的订单</h2>
						<!--orders list table-->
						<table style="width:1100px"
							class="table_type_3 responsive_table full_width r_corners wrapper shadow bg_light_color_1 m_bottom_30 t_align_l">
							<thead>
								<tr class="f_size_large">
									<!--titles for td-->
									<th style="width:50px">订单号</th>
									<th style="width:100px">房间</th>
									<th style="width:150px">入住日期</th>
									<th style="width:150px">联系电话</th>
									<th style="width:50px">天数</th>
									<th style="width:50px">房数</th>
									<th style="width:50px">价格</th>
									<th>留言</th>
									<th style="width:150px">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="#session.bookorderlist" var="b">
									<tr>
										<td><s:property value="#b.orderid" /></td>
										<td><s:property value="#b.room.name" /></td>
										<td><s:property value="#b.checkinDate" /></td>
										<td><s:property value="#b.phone" /></td>
										<td><s:property value="#b.day" /></td>
										<td><s:property value="#b.count" /></td>
										<td><s:property value="#b.price" /></td>
										<td><s:property value="#b.leaveWord" /></td>
										<td><a
											href="order_live.action?order.orderid=<s:property value="#b.orderid" />"
											class="button_type_8 r_corners bg_scheme_color color_light tr_all_hover m_left_5 m_mxs_left_0">已入住</a></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</section>
					<section class="col-lg-9 col-md-9 col-sm-9">
						<h2 class="tt_uppercase color_dark m_bottom_30">已入住的订单</h2>
						<!--orders list table-->
						<table style="width:1100px"
							class="table_type_3 responsive_table full_width r_corners wrapper shadow bg_light_color_1 m_bottom_30 t_align_l">
							<thead>
								<tr class="f_size_large">
									<!--titles for td-->
									<th style="width:50px">订单号</th>
									<th style="width:100px">房间</th>
									<th style="width:150px">入住日期</th>
									<th style="width:150px">联系电话</th>
									<th style="width:50px">天数</th>
									<th style="width:50px">房数</th>
									<th style="width:50px">价格</th>
									<th>留言</th>
									<th style="width:150px">操作</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="#session.liveorderlist" var="b">
									<tr>
										<td><s:property value="#b.orderid" /></td>
										<td><s:property value="#b.room.name" /></td>
										<td><s:property value="#b.checkinDate" /></td>
										<td><s:property value="#b.phone" /></td>
										<td><s:property value="#b.day" /></td>
										<td><s:property value="#b.count" /></td>
										<td><s:property value="#b.price" /></td>
										<td><s:property value="#b.leaveWord" /></td>
										<td><a
											href="order_left.action?order.orderid=<s:property value="#b.orderid" />"
											class="button_type_8 r_corners bg_scheme_color color_light tr_all_hover m_left_5 m_mxs_left_0">已离店</a></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</section>
					<section class="col-lg-9 col-md-9 col-sm-9">
						<h2 class="tt_uppercase color_dark m_bottom_30">已离店的订单</h2>
						<!--orders list table-->
						<table style="width:1100px"
							class="table_type_3 responsive_table full_width r_corners wrapper shadow bg_light_color_1 m_bottom_30 t_align_l">
							<thead>
								<tr class="f_size_large">
									<!--titles for td-->
									<th style="width:50px">订单号</th>
									<th style="width:100px">房间</th>
									<th style="width:150px">入住日期</th>
									<th style="width:150px">联系电话</th>
									<th style="width:50px">天数</th>
									<th style="width:50px">房数</th>
									<th style="width:50px">价格</th>
									<th>留言</th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="#session.leftorderlist" var="b">
									<tr>
										<td><s:property value="#b.orderid" /></td>
										<td><s:property value="#b.room.name" /></td>
										<td><s:property value="#b.checkinDate" /></td>
										<td><s:property value="#b.phone" /></td>
										<td><s:property value="#b.day" /></td>
										<td><s:property value="#b.count" /></td>
										<td><s:property value="#b.price" /></td>
										<td><s:property value="#b.leaveWord" /></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</section>
				</div>
			</div>
		</div>
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