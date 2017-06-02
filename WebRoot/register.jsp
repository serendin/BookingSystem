<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>注册页面</title>
</head>
<body>
	<h1>注册</h1>
	<s:form action="user_register" method="post" namespace="/">
		<table>
			<tr>
				<td>用户名</td>
				<td><s:textfield name="user.username" /></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><s:textfield name="user.name" /></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><s:radio list="{'男','女'}" name="user.sex" /></td>
			</tr>
			<tr>
				<td>邮箱</td>
				<td><s:textfield type="email" name="user.email" /></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><s:password name="user.password"></s:password>
			<tr>
				<td><input type="submit" value="注册" /></td>
			</tr>
		</table>
	</s:form>
</body>
                               
</html>
