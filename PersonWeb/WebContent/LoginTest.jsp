<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="Js/jquery.min.js"  type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/my.css"></link>
<title>登录界面</title>
</head>
<body style="background-image: url('image/bb.jpg');    background-size:100%; background-repeat:no-repeat;">
	<center>
		<form action="login/LoginReceive.jsp" method="post" name="form" >
				<span>账户名:</span>
				<input type="text" name="userName" size="32" title="输入账户名"/><span  border="1" color="blue" width="30px" height="30px">账户名为数字和英文字母！</span><br/>
				<span>密码名:</span>
				<input type="password" name="psw" size="32" title="输入密码"/><br/>
				<input type="submit" value="登录提交"/>&nbsp; &nbsp;&nbsp;
				<input type="reset" value="登录重新"/>
		</form>
	</center>
</body>
</html>