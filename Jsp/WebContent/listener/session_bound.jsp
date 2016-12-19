<%@page import="listener.LoginUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除session属性</title>
</head>
<body>
	<%
		LoginUser user=new LoginUser("mldn");
		session.setAttribute("info",user);
	%>
</body>
</html>