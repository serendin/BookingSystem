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
									<li><a href="#" class="default_t_color" data-popup="#register_popup">注册</a></li>
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
								href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>特价酒店</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="#" class="tr_delay_hover color_light tt_uppercase"><b>会场预订</b></a>
							</li>
							<li class="relative f_xs_none m_xs_bottom_5"><a
								href="#"
								class="tr_delay_hover color_light tt_uppercase"><b>订单</b></a> <!--sub menu-->
								<div
									class="sub_menu_wrap top_arrow d_xs_none type_2 tr_all_hover clearfix r_corners">
									<ul class="sub_menu">
										<li><a class="color_dark tr_delay_hover"
											href="#">非会员订单查询</a></li>
										<li><a class="color_dark tr_delay_hover"
											href="#">会员订单</a></li>
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
						<h2 class="tt_uppercase color_dark m_bottom_25">预订信息</h2>
						<!--order info tables-->
						<s:form action="order_save" method="post" namespace="/">
						<s:hidden name="order.checkinDate" id="start"/>
						<s:hidden name="order.day" id="day"/>
						<s:hidden name="order.price" id="price"/>
							<table
								class="table_type_6 responsive_table full_width r_corners shadow m_bottom_45 t_align_l">
								<tr>
									<td class="f_size_large d_xs_none">房型信息</td>
									<td data-title="Order Number"><s:property
											value="#session.room.name" /></td>
								</tr>
								<tr>
									<td class="f_size_large d_xs_none">入住时间</td>
									<td><div class="ta_date" id="div_date1"
											style="width:250px">
											<span class="date_title" id="date1"></span> <a
												class="opt_sel" id="input_trigger1" href="#"> <i
												class="i_orderd"></i>
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
															document.getElementById("start").value=obj.startDate.toString();
															    var separator = '-'; //日期分隔符  
															    var startDates = obj.startDate.split(separator);  
															    var endDates = obj.endDate.split(separator);  
															    var startDatess = new Date(startDates[0], startDates[1]-1, startDates[2]);  
															    var endDatess = new Date(endDates[0], endDates[1]-1, endDates[2]);  
															    var days=parseInt(Math.abs(endDatess - startDatess ) / 1000 / 60 / 60 /24);
															
															document.getElementById("day").value=days.toString();
															var obj=document.getElementById("roomcount");
															var days=document.getElementById("day").value;
															var prices= "<s:property value="#session.room.salePrice"/>";
															var i;var s="";
															for (i = 1; i < obj.value; i++) {
																s+="<input type='text' name='livename' style='margin-right:10px;float:left;'/>";
															}
															document.getElementById("livename").innerHTML=s;
															var total=parseInt(days)*parseInt(obj.value)*parseInt(prices);
															document.getElementById("price").value=total.toString();
															document.getElementById("orderprice").innerHTML=total.toString();
														}
													});
										</script></td>
								</tr>
								<tr>
									<td class="f_size_large d_xs_none">房间数量</td>
									<td data-title="Order Status">
									<span style="border:2px solid #C0C0C0;position:absolute; overflow:hidden">
									<select name="order.count" id="roomcount" style="width:50px" onchange="aan();">
											<option value="1" selected="selected">&nbsp;&nbsp;&nbsp;1</option>
											<option value="2">&nbsp;&nbsp;&nbsp;2</option>
											<option value="3">&nbsp;&nbsp;&nbsp;3</option>
											<option value="4">&nbsp;&nbsp;&nbsp;4</option>
											<option value="5">&nbsp;&nbsp;&nbsp;5</option>
											<option value="6">&nbsp;&nbsp;&nbsp;6</option>
											<option value="7">&nbsp;&nbsp;&nbsp;7</option>
											<option value="8">&nbsp;&nbsp;&nbsp;8</option>
									</select></span>
									<script type="text/javascript">
										function aan() {
											var obj=document.getElementById("roomcount");
											var days=document.getElementById("day").value;
											var prices= "<s:property value="#session.room.salePrice"/>";
											var i;var s="";
											for (i = 1; i < obj.value; i++) {
												s+="<input type='text' name='livename' style='margin-right:10px;float:left;'/>";
											}
											document.getElementById("livename").innerHTML=s;
											var total=parseInt(days)*parseInt(obj.value)*parseInt(prices);
											document.getElementById("price").value=total.toString();
											document.getElementById("orderprice").innerHTML=total.toString();
										}
									</script> </td>
								</tr>
								<tr>
									<td class="f_size_large d_xs_none">入住人</td>
									<td data-title="Last Update"><input type="text" name="livename">
										<div id="livename" style="display:inline" ></div></td>
								</tr>
								<tr>
									<td class="f_size_large d_xs_none">联系电话</td>
									<td data-title="Shipment"><s:textfield type="text"
											name="order.phone"/></td>
								</tr>
								<tr>
									<td class="f_size_large d_xs_none">留言</td>
									<td data-title="Payment"><s:textfield type="text"
											name="order.leaveWord" /></td>
								</tr>
								<tr>
									<td class="f_size_large d_xs_none">总计</td>
									<td data-title="Total"><p
											class="fw_medium f_size_large scheme_color">$
											<span id="orderprice"></span> </p></td>
								</tr>
							</table>
							<input type="submit" style="margin:0 50px" value="提交订单"
								class="button_type_8 r_corners bg_scheme_color color_light tr_all_hover m_left_5 m_mxs_left_0" />
						</s:form>
					</section>
					<!--right column-->
					<aside class="col-lg-3 col-md-3 col-sm-3">
						<figure class="widget shadow r_corners wrapper m_bottom_30">
							<figcaption>
								<h3 class="color_light">房间信息</h3>
							</figcaption>
							<div class="widget_content">
								<h3 class="fw_medium m_bottom_10">
									<s:property value="#session.hotel.name" />
								</h3>
								<table class="about_project full_width m_bottom_10">
									<tr>
										<td>地址：</td>
										<td><s:property value="#session.hotel.address" /></td>
									</tr>
									<tr>
										<td>联系电话：</td>
										<td><s:property value="#session.hotel.phone" /></td>
									</tr>
									<tr>
										<td>房型:</td>
										<td><s:property value="#session.room.name" /></td>
									</tr>
									<tr>
										<td>床型:</td>
										<td><s:property value="#session.room.bedType" /></td>
									</tr>
									<tr>
										<td>房费单价:</td>
										<td><p class="fw_medium f_size_large scheme_color">
												$
												<s:property value="#session.room.salePrice" />
											</p></td>
									</tr>
								</table>
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