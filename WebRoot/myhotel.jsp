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
							<li class="relative current f_xs_none m_xs_bottom_5"><a
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
							<li class="relative f_xs_none m_xs_bottom_5"><a href="#"
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
						<h2 class="tt_uppercase color_dark m_bottom_25">我的旅店</h2>
						<table
							class="table_type_6 responsive_table full_width r_corners shadow m_bottom_45 t_align_l">
							<tr>
								<td class="f_size_large d_xs_none">旅店名称</td>
								<td><s:property value="#session.myhotel.name" /></td>
							</tr>
							<tr>
								<td class="f_size_large d_xs_none">旅店类型</td>
								<td><s:property value="#session.myhotel.type" /></td>
							</tr>
							<tr>
								<td class="f_size_large d_xs_none">所在城市</td>
								<td><s:property value="#session.myhotel.city" /></td>
							</tr>
							<tr>
								<td class="f_size_large d_xs_none">联系人姓名</td>
								<td><s:property value="#session.myhotel.linkname" /></td>
							</tr>
							<tr>
								<td class="f_size_large d_xs_none">联系电话</td>
								<td><s:property value="#session.myhotel.phone" /></td>
							</tr>
							<tr>
								<td class="f_size_large d_xs_none">地址</td>
								<td><s:property value="#session.myhotel.address" /></td>
							</tr>
							<tr>
								<td class="f_size_large d_xs_none">简介</td>
								<td><s:property value="#session.myhotel.introduction" /></td>
							</tr>
							<tr>
								<td class="f_size_large d_xs_none">申请状态</td>
								<td><s:property value="#session.myhotel.isopen" /></td>
							</tr>
						</table>
					</section>
					<section class="col-lg-9 col-md-9 col-sm-9">
						<h2 class="tt_uppercase color_dark m_bottom_30">房间信息</h2>
						<!--orders list table-->
						<table
							class="table_type_3 responsive_table full_width r_corners wrapper shadow bg_light_color_1 m_bottom_30 t_align_l">
							<thead>
								<tr class="f_size_large">
									<!--titles for td-->
									<th style="width:200px">房间名称</th>
									<th style="width:150px">房间数量</th>
									<th style="width:150px">床型</th>
									<th style="width:150px">价格</th>
									<th style="width:150px">优惠价格</th>
								</tr>
							</thead>
							<tbody>
							<s:iterator value="#session.myroomlist" var="h">
								<tr>
									<td>
									<s:property value="#h.name"/></td>
									<td>
									<s:property value="#h.count"/></td>
									<td>
									<s:property value="#h.bedType"/></td>
									<td>
									<s:property value="#h.price"/></td>
									<td><s:property value="#h.salePrice"/></td>
								</tr>
								</s:iterator>
							</tbody>
						</table>
					</section>
					<!--right column-->
					<aside class="col-lg-3 col-md-3 col-sm-3">
						<figure class="widget shadow r_corners wrapper m_bottom_30">
							<figcaption>
								<h3 class="color_light">操作</h3>
							</figcaption>
							<div class="widget_content">
								<h3 class="fw_medium m_bottom_10"></h3>
								<a
									href="#" data-popup="#room_popup"
									class="button_type_8 r_corners bg_scheme_color color_light tr_all_hover m_left_5 m_mxs_left_0">添加房间</a>

							</div>
						</figure>
					</aside>
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
	<!--room popup-->
	<div class="popup_wrap d_none" id="room_popup">
		<section class="popup r_corners shadow">
			<button
				class="bg_tr color_dark tr_all_hover text_cs_hover close f_size_large">
				<i class="fa fa-times"></i>
			</button>
			<h3 class="m_bottom_20 color_dark">添加房间</h3>
			<s:form action="room_save" method="post" namespace="/">
				<ul>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">房间名称</label><br> <input
						type="text" name="room.name"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">房间数量</label><br> <input
						type="text" name="room.count"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">床型</label><br> <input
						type="text" name="room.bedType"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">价格</label><br> <input
						type="text" name="room.price"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">优惠价格</label><br> <input
						type="text" name="room.salePrice"
						class="r_corners full_width"></li>
					<li class="clearfix m_bottom_30"><input type="submit"
						value="添加"
						class="button_type_4 tr_all_hover r_corners f_left bg_scheme_color color_light f_mxs_none m_mxs_bottom_15" />
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