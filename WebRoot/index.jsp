<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.bean.User"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<title>旅店预定</title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!--meta info-->
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="icon" type="image/png" href="images/favicon.png">


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/dateRange.js"></script>
<link rel="stylesheet" type="text/css" href="css/dateRange.css" />

<script type="text/javascript" src="js/monthPicker.js"></script>
<link rel="stylesheet" type="text/css" href="css/monthPicker.css" />

<!--stylesheet include-->

<link rel="stylesheet" type="text/css" media="all"
	href="css/jackbox.min.css">
<link rel="stylesheet" type="text/css" media="all"
	href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="all"
	href="css/settings.css">
<link rel="stylesheet" type="text/css" media="all"
	href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" media="all"
	href="css/owl.transitions.css">
<link rel="stylesheet" type="text/css" media="all"
	href="css/jquery.custom-scrollbar.css">
<link rel="stylesheet" type="text/css" media="all" href="css/style.css">
<!--font include-->
<link href="css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	<!--boxed layout-->
	<div class="wide_layout relative w_xs_auto">
		<!--markup header-->
		<header role="banner" class="type_5">
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
									<li><a href="#" class="default_t_color"
									    data-popup="#register_popup">注册</a></li>
								</s:if>
								<s:if test="#session.user!=null">
									<li><a href="#" class="default_t_color"><s:property
												value="#session.user.username" /></a></li>
									<li><a href="user_logout" class="default_t_color">退出</a></li>
									<li><a href="#" class="default_t_color" data-popup="#hotel_popup">发布旅店</a></li>
								</s:if>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!--header bottom part-->
			<section class="h_bot_part">
				<div class="menu_wrap">
					<div class="container">
						<div class="clearfix row">
							<div class="col-lg-2 t_md_align_c m_md_bottom_15"></div>
							<div class="col-lg-10 clearfix t_sm_align_c">
								<div
									class="clearfix t_sm_align_l f_left f_sm_none relative s_form_wrap m_sm_bottom_15 p_xs_hr_0 m_xs_bottom_5">
									<!--button for responsive menu-->
									<button id="menu_button"
										class="r_corners centered_db d_none tr_all_hover d_xs_block m_xs_bottom_5">
										<span class="centered_db r_corners"></span> <span
											class="centered_db r_corners"></span> <span
											class="centered_db r_corners"></span>
									</button>
									<!--main menu-->
									<nav data-role="navigation"
										class="f_left f_xs_none d_xs_none m_right_35 m_md_right_30 m_sm_right_0">
										<ul class="horizontal_list main_menu type_2 clearfix">
											<li
												class="current relative f_xs_none m_xs_bottom_5 m_left_10 m_xs_left_0"><a
												href="success.jsp"
												class="tr_delay_hover color_dark tt_uppercase r_corners"><b>首页</b></a></li>
											<li
												class="relative f_xs_none m_xs_bottom_5 m_left_10 m_xs_left_0"><a
												href="#"
												class="tr_delay_hover color_dark tt_uppercase r_corners"><b>酒店宾馆</b></a>
											</li>
											<li
												class="relative f_xs_none m_xs_bottom_5 m_left_10 m_xs_left_0"><a
												href="#"
												class="tr_delay_hover color_dark tt_uppercase r_corners"><b>客栈民宿</b></a>
											</li>
											<li
												class="relative f_xs_none m_xs_bottom_5 m_left_10 m_xs_left_0"><a
												href="#"
												class="tr_delay_hover color_dark tt_uppercase r_corners"><b>青年旅舍</b></a>
											</li>
											<li
												class="relative f_xs_none m_xs_bottom_5 m_left_10 m_xs_left_0"><a
												href="#"
												class="tr_delay_hover color_dark tt_uppercase r_corners"><b>会场预订</b></a>
											</li>
											<li
												class="relative f_xs_none m_xs_bottom_5 m_left_10 m_xs_left_0"><a
												href="#"
												class="tr_delay_hover color_dark tt_uppercase r_corners"><b>我的旅店</b></a>
												<!--sub menu-->
												<div
													class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
													<ul class="sub_menu">
														<li><a class="color_dark tr_delay_hover"
															href="hotel_findByUser?hotel.linkid=<s:property value="#session.user.username"/>">旅店信息</a></li>
														<li><a class="color_dark tr_delay_hover"
															href="hotel_findOrder">预订情况</a></li>
													</ul>
												</div></li>
											<li
												class="relative f_xs_none m_xs_bottom_5 m_left_10 m_xs_left_0"><a
												href="#"
												class="tr_delay_hover color_dark tt_uppercase r_corners"><b>订单</b></a>
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
											<li
												class="relative f_xs_none m_xs_bottom_5 m_left_10 m_xs_left_0"><a
												href="contact.jsp"
												class="tr_delay_hover color_dark tt_uppercase r_corners"><b>联系我们</b></a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<hr class="divider_type_6">
				</div>
			</section>
		</header>

		<!--slider-->
		<section class="revolution_slider">
			<div class="r_slider">
				<ul>
					<li class="f_left" data-transition="curtain-1" data-slotamount="7"
						data-custom-thumb="images/slide_02.jpg"><img
						src="images/fw_slide_02.jpg" alt="" data-bgrepeat="no-repeat"
						data-bgfit="cover" data-bgposition="center center">
						<div
							class="caption sfl str f_size_large color_light tt_uppercase slider_title_3"
							data-x="736" data-y="97" data-speed="500" data-start="2500">在远方</div>
						<div
							class="caption lft stb color_light slider_title tt_uppercase t_align_c"
							data-x="588" data-y="140" data-speed="1500"
							data-easing="easeOutBounce">
							<b>寻找另一个小家</b>
						</div></li>
					<li class="f_left" data-transition="cube" data-slotamount="7"
						data-custom-thumb="images/slide_01.jpg"><img
						src="images/fw_slide_01.jpg" alt="" data-bgrepeat="no-repeat"
						data-bgfit="cover" data-bgposition="center center">
						<div class="caption lft ltt" data-x="center" data-y="58"
							data-speed="1500" data-start="1200" data-easing="easeOutBounce">
							<img src="images/slider_layer_img.png" alt="">
						</div>
						<div
							class="caption sfb stb color_light slider_title tt_uppercase t_align_c"
							data-x="center" data-y="246" data-speed="1000" data-easing="ease"
							data-start="2500">
							<b class="color_red">up to 70% off</b>
						</div></li>
					<li class="f_left" data-transition="cube" data-slotamount="7"
						data-custom-thumb="images/slide_03.jpg"><img
						src="images/fw_slide_03.jpg" alt="" data-bgrepeat="no-repeat"
						data-bgfit="cover" data-bgposition="center center">
						<div
							class="caption lft ltb color_light slider_title tt_uppercase t_align_c"
							data-x="95" data-y="170" data-speed="500" data-easing="ease"
							data-start="1400">
							<b><span class="scheme_color">过个好新年</span></b>
						</div></li>
				</ul>
			</div>
		</section>
		<!--content-->
		<hr class="divider_type_4 m_bottom_25">
		<div class="container">
			<div class="row clearfix">
				<div class="col-lg-6 col-md-6 col-sm-6 m_bottom_20 m_xs_bottom_30">
					<h3 class="color_light_2 d_inline_middle m_md_bottom_15 d_xs_block"></h3>
					<s:form action="hotel_find" method="post" namespace="/">
						<table>
							<tr>
								<td><s:textfield type="text" placeholder="目的地城市"
										style="margin:0 0 0 200px"
										class="r_corners f_size_medium w_sm_auto m_mxs_bottom_15"
										name="hotel.city" /></td>
								<td><div
										style="width:100px;text-align:center;padding:8px;margin:0 0 0 15px">入住时间</div></td>
								<td>
									<div class="ta_date" id="div_date1" style="width:250px">
										<span class="date_title" id="date1"></span> <a class="opt_sel"
											id="input_trigger1" href="#"> <i class="i_orderd"></i>
										</a>
									</div>
									<div id="datePicker1"></div> <br /> <script
										type="text/javascript">
										var dateRange1 = new pickerDateRange(
												'date1',
												{
													isTodayValid : true,
													startDate : '2017-01-01',
													endDate : '2017-02-02',
													needCompare : false,
													defaultText : ' 至 ',
													autoSubmit : true,
													inputTrigger : 'input_trigger1',
													theme : 'ta',
													success : function(obj) {
													}
												});
									</script>
								</td>
								<td><input type="submit" style="margin:0 50px" value="搜索"
									class="button_type_8 r_corners bg_scheme_color color_light tr_all_hover m_left_5 m_mxs_left_0" /></td>
							</tr>
						</table>
					</s:form>
				</div>
			</div>
		</div>
	</div>
	<footer id="footer">
		<div class="footer_top_part p_vr_0">
			<div class="container">
				<div class="row clearfix">
					<div class="col-lg-3 col-md-3 col-sm-3 m_xs_bottom_30 m_bottom_40">
						<h3 class="color_light_2 m_bottom_20">About</h3>
						<p class="m_bottom_15">Ut pharetra augue nec augue. Nam elit
							agna, endrerit sit amet, tincidunt ac, viverra sed, nulla. Donec
							porta diam eu massa. Quisque diam lorem, interdum vitae, dapibus
							ac, scelerisque.</p>
						<a href="#" class="color_light">Read More <i
							class="fa fa-angle-right m_left_5"></i></a>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 m_xs_bottom_30 m_bottom_40">
						<h3 class="color_light_2 m_bottom_20">The Service</h3>
						<ul class="vertical_list">
							<li><a class="color_light tr_delay_hover" href="#">My
									account<i class="fa fa-angle-right"></i>
							</a></li>
							<li><a class="color_light tr_delay_hover" href="#">Order
									history<i class="fa fa-angle-right"></i>
							</a></li>
							<li><a class="color_light tr_delay_hover" href="#">Wishlist<i
									class="fa fa-angle-right"></i></a></li>
							<li><a class="color_light tr_delay_hover" href="#">Categories<i
									class="fa fa-angle-right"></i></a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 m_xs_bottom_30 m_bottom_40">
						<h3 class="color_light_2 m_bottom_20">Information</h3>
						<ul class="vertical_list">
							<li><a class="color_light tr_delay_hover" href="#">About
									us<i class="fa fa-angle-right"></i>
							</a></li>
							<li><a class="color_light tr_delay_hover" href="#">Delivery<i
									class="fa fa-angle-right"></i></a></li>
							<li><a class="color_light tr_delay_hover" href="#">Privacy
									policy<i class="fa fa-angle-right"></i>
							</a></li>
							<li><a class="color_light tr_delay_hover" href="#">Terms
									&amp; condition<i class="fa fa-angle-right"></i>
							</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-3 m_bottom_40 m_xs_bottom_30">
						<h3 class="color_light_2 m_bottom_20">Catalog</h3>
						<ul class="vertical_list">
							<li><a class="color_light tr_delay_hover" href="#">New
									collection<i class="fa fa-angle-right"></i>
							</a></li>
							<li><a class="color_light tr_delay_hover" href="#">Best
									sellers<i class="fa fa-angle-right"></i>
							</a></li>
							<li><a class="color_light tr_delay_hover" href="#">Specials<i
									class="fa fa-angle-right"></i></a></li>
							<li><a class="color_light tr_delay_hover" href="#">Manufacturers<i
									class="fa fa-angle-right"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<hr class="divider_type_4 m_bottom_25">
			<div class="container">
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 m_bottom_20 m_xs_bottom_30">
						<h3
							class="color_light_2 d_inline_middle m_md_bottom_15 d_xs_block">Newsletter</h3>
						<form id="newsletter"
							class="d_inline_middle m_left_5 subscribe_form_2 m_md_left_0">
							<input type="email" placeholder="Your email address"
								class="r_corners f_size_medium w_sm_auto m_mxs_bottom_15"
								name="newsletter-email">
							<button type="submit"
								class="button_type_8 r_corners bg_scheme_color color_light tr_all_hover m_left_5 m_mxs_left_0">Subscribe</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</footer>
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
				<a href="#" data-role="button" data-popup="#register_popup"
					class="tr_all_hover r_corners button_type_4 bg_dark_color bg_cs_hover color_light d_inline_middle m_mxs_left_0">创建一个账号</a>
			</footer>
		</section>
	</div>
	<!--register popup-->
	<div class="popup_wrap d_none" id="register_popup">
		<section class="popup r_corners shadow">
			<button
				class="bg_tr color_dark tr_all_hover text_cs_hover close f_size_large">
				<i class="fa fa-times"></i>
			</button>
			<h3 class="m_bottom_20 color_dark">注册</h3>
			<s:form action="user_register" method="post" namespace="/">
				<ul>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">用户名</label><br> <input
						type="text" name="user.username" id="username"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">姓名</label><br> <input
						type="text" name="user.name" 
						class="r_corners full_width"></li>
					<li class="m_bottom_25"><label for="password"
						class="m_bottom_5 d_inline_b">密码</label><br> <input
						type="password" name="user.password" id="password"
						class="r_corners full_width"></li>	
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">邮箱</label><br> <input
						type="email" name="user.email"
						class="r_corners full_width"></li>
					<li class="clearfix m_bottom_30"><input type="submit"
						value="注册"
						class="button_type_4 tr_all_hover r_corners f_left bg_scheme_color color_light f_mxs_none m_mxs_bottom_15" />
						
				</ul>
			</s:form>
			
		</section>
	</div>
	<!--hotel popup-->
	<div class="popup_wrap d_none" id="hotel_popup">
		<section class="popup r_corners shadow">
			<button
				class="bg_tr color_dark tr_all_hover text_cs_hover close f_size_large">
				<i class="fa fa-times"></i>
			</button>
			<h3 class="m_bottom_20 color_dark">发布旅店</h3>
			<s:form action="hotel_save" method="post" namespace="/">
				<ul>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">旅店名称</label><br> <input
						type="text" name="hotel.name"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">旅店类型</label><br> <input
						type="text" name="hotel.type"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">所在城市</label><br> <input
						type="text" name="hotel.city"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">联系电话</label><br> <input
						type="text" name="hotel.phone"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">联系人</label><br> <input
						type="text" name="hotel.linkname"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">地址</label><br> <input
						type="text" name="hotel.address"
						class="r_corners full_width"></li>
					<li class="m_bottom_15"><label for="username"
						class="m_bottom_5 d_inline_b">简介</label><br> <input
						type="text" name="hotel.introduction"
						class="r_corners full_width"></li>
					<li class="clearfix m_bottom_30"><input type="submit"
						value="申请"
						class="button_type_4 tr_all_hover r_corners f_left bg_scheme_color color_light f_mxs_none m_mxs_bottom_15" />
				</ul>
			</s:form>
		</section>
	</div>
	<button class="t_align_c r_corners type_2 tr_all_hover animate_ftl"
		id="go_to_top">
		<i class="fa fa-angle-up"></i>
	</button>
	<!--scripts include-->
	<script src="js/jquery-2.1.0.min.js"></script>
	<script src="js/retina.js"></script>
	<script src="js/jquery.themepunch.plugins.min.js"></script>
	<script src="js/jquery.themepunch.revolution.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.tweet.min.js"></script>
	<script src="js/jquery.custom-scrollbar.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>