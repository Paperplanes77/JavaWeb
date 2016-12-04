<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
</head>
<body>
	<center>
		<form action="LoginReceive.jsp" method="post" name="form">
				<span>账户名:</span>
				<input type="text" name="userName" size="32" title="输入账户名"/><br/>
				<span>密码名:</span>
				<input type="password" name="psw" size="32" title="输入密码"/><br/>
				<input type="submit" value="登录提交"/> 
				<input type="reset" value="登录重新"/>
		</form>
	</center>
</body>
</html>