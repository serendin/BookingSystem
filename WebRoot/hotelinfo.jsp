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
									<li><a href=user_logout" class="default_t_color">退出</a></li>
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
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>酒店宾馆</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>客栈民宿</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>青年旅舍</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="#" class="tr_delay_hover color_light tt_uppercase"><b>会场预订</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>我的旅店</b></a>
								 <!--sub menu-->
								<div
									class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
									<ul class="sub_menu">
										<li><a class="color_dark tr_delay_hover"
											href="#">旅店信息</a></li>
										<li><a class="color_dark tr_delay_hover"
											href="user_findById?user.userid=<s:property value="#session.user.userid"/>">预订情况</a></li>
									</ul>
								</div>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="features_shortcodes.html"
								class="tr_delay_hover color_light tt_uppercase"><b>订单</b></a>
							    <!--sub menu-->
								<div
									class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
									<ul class="sub_menu">
										<li><a class="color_dark tr_delay_hover"
											href="#">非会员订单查询</a></li>
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
		<!--slider with banners-->
		<section class="container">
			<div class="row clearfix">
				<!--slider-->
				<div class="col-lg-9 col-md-9 col-sm-9 m_xs_bottom_30">
					<div class="flexslider animate_ftr long">
						<ul class="slides">
							<li><img src="images/hotel_1.jpg" alt=""
								data-custom-thumb="images/slide_01.jpg">
								<section class="slide_caption t_align_c d_xs_none">
								</section></li>
							<li><img src="images/slide_04.jpg" alt=""
								data-custom-thumb="images/slide_03.jpg">
								<section class="slide_caption_2 t_align_c d_xs_none">
								</section></li>
							<li><img src="images/hotel_2.jpg" alt=""
								data-custom-thumb="images/slide_02.jpg">
								<section class="slide_caption_3 t_align_c d_xs_none">
								</section></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-3 t_xs_align_c">
					<aside class="col-lg-4 col-md-4 col-sm-4 m_xs_bottom_30"
						style="width:260px">
						<br>
						<br>
						<h3 class="fw_medium m_bottom_10"> <s:property value="#session.hotel.name" /></h3>
						<table class="about_project full_width m_bottom_10">
							<tr>
								<td>地址：</td>
								<td><s:property value="#session.hotel.address" /></td>
							</tr>
							<tr>
								<td>联系人：</td>
								<td><s:property value="#session.hotel.linkname" /></td>
							</tr>
							<tr>
								<td>联系电话:</td>
								<td><s:property value="#session.hotel.phone" /></td>
							</tr>
							<tr>
								<td>酒店类型:</td>
								<td><s:property value="#session.hotel.type" /></td>
							</tr>
							<tr>
								<td>简介:</td>
								<td><s:property value="#session.hotel.introduction" /></td>
							</tr>
						</table>
					</aside>
				</div>
			</div>
		</section>
		<div class="page_content_offset">
			<div class="container">

				<div class="clearfix">
					<h2 class="color_dark tt_uppercase f_left m_bottom_15 f_mxs_none">房间信息</h2>
					<div
						class="f_right clearfix nav_buttons_wrap f_mxs_none m_mxs_bottom_5">
						<button
							class="button_type_7 bg_cs_hover box_s_none f_size_ex_large t_align_c bg_light_color_1 f_left tr_delay_hover r_corners rp_prev">
							<i class="fa fa-angle-left"></i>
						</button>
						<button
							class="button_type_7 bg_cs_hover box_s_none f_size_ex_large t_align_c bg_light_color_1 f_left m_left_5 tr_delay_hover r_corners rp_next">
							<i class="fa fa-angle-right"></i>
						</button>
					</div>
				</div>
				<div class="related_projects product_full_width m_bottom_15">
					<s:iterator value="#session.roomlist" var="r">
					<figure
						class="r_corners photoframe shadow relative d_inline_b d_md_block d_xs_inline_b tr_all_hover">
						<!--product preview-->
						<a href="#" class="d_block relative pp_wrap"> <!--sale product-->
							<span class="hot_stripe type_2"><img
								src="images/sale_product_type_2.png" alt=""></span> <img
							src="images/room_1.jpg" class="tr_all_hover" alt="">
							<span data-popup="#quick_view_product"
							class="button_type_5 box_s_none color_light r_corners tr_all_hover d_xs_none">
							<s:property value="#r.name" /></span>
						</a>
						<!--description and price of product-->
						<figcaption class="t_xs_align_l">
							<h5 class="m_bottom_10">
								<a href="#" class="color_dark ellipsis"><s:property value="#r.name" /></a>
							</h5>
							<div class="clearfix">
								<p class="scheme_color f_left f_size_large m_bottom_15">
									<s class="default_t_color m_right_5">$<s:property value="#r.price" /></s>$<s:property value="#r.salePrice" />
								</p>
							</div>
							<a href="room_findToOrder?room.roomid=<s:property value="#r.roomid"/>"
								class="button_type_4 bg_scheme_color r_corners tr_all_hover color_light mw_0">预订</a>
						</figcaption>
					</figure>
					</s:iterator>
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
	<!--custom popup-->
	<div class="popup_wrap d_none" id="quick_view_product">
		<section class="popup r_corners shadow">
			<button
				class="bg_tr color_dark tr_all_hover text_cs_hover close f_size_large">
				<i class="fa fa-times"></i>
			</button>
			<div class="clearfix">
				<div class="custom_scrollbar">
					<!--left popup column-->
					<div class="f_left half_column">
						<div class="relative d_inline_b m_bottom_10 qv_preview">
							<span class="hot_stripe"><img
								src="images/sale_product.png" alt=""></span> <img
								src="images/quick_view_img_1.jpg" class="tr_all_hover" alt="">
						</div>
						<!--carousel-->
						<div class="relative qv_carousel_wrap m_bottom_20">
							<button
								class="button_type_11 t_align_c f_size_ex_large bg_cs_hover r_corners d_inline_middle bg_tr tr_all_hover qv_btn_prev">
								<i class="fa fa-angle-left "></i>
							</button>
							<ul class="qv_carousel d_inline_middle">
								<li data-src="images/quick_view_img_1.jpg"><img
									src="images/quick_view_img_4.jpg" alt=""></li>
								<li data-src="images/quick_view_img_2.jpg"><img
									src="images/quick_view_img_5.jpg" alt=""></li>
								<li data-src="images/quick_view_img_3.jpg"><img
									src="images/quick_view_img_6.jpg" alt=""></li>
								<li data-src="images/quick_view_img_1.jpg"><img
									src="images/quick_view_img_4.jpg" alt=""></li>
								<li data-src="images/quick_view_img_2.jpg"><img
									src="images/quick_view_img_5.jpg" alt=""></li>
								<li data-src="images/quick_view_img_3.jpg"><img
									src="images/quick_view_img_6.jpg" alt=""></li>
							</ul>
							<button
								class="button_type_11 t_align_c f_size_ex_large bg_cs_hover r_corners d_inline_middle bg_tr tr_all_hover qv_btn_next">
								<i class="fa fa-angle-right "></i>
							</button>
						</div>
						<div class="d_inline_middle">Share this:</div>
						<div class="d_inline_middle m_left_5">
							<!-- AddThis Button BEGIN -->
							<div
								class="addthis_toolbox addthis_default_style addthis_32x32_style">
								<a class="addthis_button_preferred_1"></a> <a
									class="addthis_button_preferred_2"></a> <a
									class="addthis_button_preferred_3"></a> <a
									class="addthis_button_preferred_4"></a> <a
									class="addthis_button_compact"></a> <a
									class="addthis_counter addthis_bubble_style"></a>
							</div>
							<!-- AddThis Button END -->
						</div>
					</div>
					<!--right popup column-->
					<div class="f_right half_column">
						<!--description-->
						<h2 class="m_bottom_10">
							<a href="#" class="color_dark fw_medium">Eget elementum vel</a>
						</h2>
						<div class="m_bottom_10">
							<!--rating-->
							<ul
								class="horizontal_list d_inline_middle type_2 clearfix rating_list tr_all_hover">
								<li class="active"><i
									class="fa fa-star-o empty tr_all_hover"></i> <i
									class="fa fa-star active tr_all_hover"></i></li>
								<li class="active"><i
									class="fa fa-star-o empty tr_all_hover"></i> <i
									class="fa fa-star active tr_all_hover"></i></li>
								<li class="active"><i
									class="fa fa-star-o empty tr_all_hover"></i> <i
									class="fa fa-star active tr_all_hover"></i></li>
								<li class="active"><i
									class="fa fa-star-o empty tr_all_hover"></i> <i
									class="fa fa-star active tr_all_hover"></i></li>
								<li><i class="fa fa-star-o empty tr_all_hover"></i> <i
									class="fa fa-star active tr_all_hover"></i></li>
							</ul>
							<a href="#"
								class="d_inline_middle default_t_color f_size_small m_left_5">1
								Review(s) </a>
						</div>
						<hr class="m_bottom_10 divider_type_3">
						<table class="description_table m_bottom_10">
							<tr>
								<td>Manufacturer:</td>
								<td><a href="#" class="color_dark">Chanel</a></td>
							</tr>
							<tr>
								<td>Availability:</td>
								<td><span class="color_green">in stock</span> 20 item(s)</td>
							</tr>
							<tr>
								<td>Product Code:</td>
								<td>PS06</td>
							</tr>
						</table>
						<h5 class="fw_medium m_bottom_10">Product Dimensions and
							Weight</h5>
						<table class="description_table m_bottom_5">
							<tr>
								<td>Product Length:</td>
								<td><span class="color_dark">10.0000M</span></td>
							</tr>
							<tr>
								<td>Product Weight:</td>
								<td>10.0000KG</td>
							</tr>
						</table>
						<hr class="divider_type_3 m_bottom_10">
						<p class="m_bottom_10">Ut tellus dolor, dapibus eget,
							elementum vel, cursus eleifend, elit. Aenean auctor wisi et urna.
							Aliquam erat volutpat. Duis ac turpis. Donec sit amet eros. Lorem
							ipsum dolor sit amet, consecvtetuer adipiscing elit.</p>
						<hr class="divider_type_3 m_bottom_15">
						<div class="m_bottom_15">
							<s class="v_align_b f_size_ex_large">$152.00</s><span
								class="v_align_b f_size_big m_left_5 scheme_color fw_medium">$102.00</span>
						</div>
						<table class="description_table type_2 m_bottom_15">
							<tr>
								<td class="v_align_m">Size:</td>
								<td class="v_align_m">
									<div
										class="custom_select f_size_medium relative d_inline_middle">
										<div class="select_title r_corners relative color_dark">s</div>
										<ul class="select_list d_none"></ul>
										<select name="product_name">
											<option value="s">s</option>
											<option value="m">m</option>
											<option value="l">l</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td class="v_align_m">Quantity:</td>
								<td class="v_align_m">
									<div
										class="clearfix quantity r_corners d_inline_middle f_size_medium color_dark">
										<button class="bg_tr d_block f_left" data-direction="down">-</button>
										<input type="text" name="" readonly value="1" class="f_left">
										<button class="bg_tr d_block f_left" data-direction="up">+</button>
									</div>
								</td>
							</tr>
						</table>
						<div class="clearfix m_bottom_15">
							<button
								class="button_type_12 r_corners bg_scheme_color color_light tr_delay_hover f_left f_size_large">Add
								to Cart</button>
							<button
								class="button_type_12 bg_light_color_2 tr_delay_hover f_left r_corners color_dark m_left_5 p_hr_0">
								<i class="fa fa-heart-o f_size_big"></i><span
									class="tooltip tr_all_hover r_corners color_dark f_size_small">Wishlist</span>
							</button>
							<button
								class="button_type_12 bg_light_color_2 tr_delay_hover f_left r_corners color_dark m_left_5 p_hr_0">
								<i class="fa fa-files-o f_size_big"></i><span
									class="tooltip tr_all_hover r_corners color_dark f_size_small">Compare</span>
							</button>
							<button
								class="button_type_12 bg_light_color_2 tr_delay_hover f_left r_corners color_dark m_left_5 p_hr_0 relative">
								<i class="fa fa-question-circle f_size_big"></i><span
									class="tooltip tr_all_hover r_corners color_dark f_size_small">Ask
									a Question</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
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
						type="text" name="user.username" id="username" class="r_corners full_width">
					</li>
					<li class="m_bottom_25"><label for="password"
						class="m_bottom_5 d_inline_b">密码</label><br> <input
						type="password" name="user.password" id="password" class="r_corners full_width"></li>
					<li class="m_bottom_15"><input type="checkbox" class="d_none"
						id="checkbox_10"><label for="checkbox_10">Remember
							me</label></li>
					<li class="clearfix m_bottom_30">
						<input type="submit" value="登录"
							class="button_type_4 tr_all_hover r_corners f_left bg_scheme_color color_light f_mxs_none m_mxs_bottom_15"/>
						<div class="f_right f_size_medium f_mxs_none">
							<a href="#" class="color_dark">忘记密码?</a><br>
						</div>
					</li>
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