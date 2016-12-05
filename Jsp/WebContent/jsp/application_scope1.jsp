<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>应用的对象</title>
</head>
<body>
	<%
		application.setAttribute("name", "铁头的小舅子");
		application.setAttribute("birthday", new Date());
	%>
	<!-- 通过超链接跳转后 地址栏改变  属于客服端的跳转 -->
	<a href="application_scope2.jsp">点我包礼物</a>
</body>
</html>