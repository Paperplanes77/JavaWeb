<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<% request.setCharacterEncoding("UTF-8");%>
<body>
	<h2>session属性:<%=session.getAttribute("name") %></h2>
	<h2>request属性:<%=request.getAttribute("info") %></h2>
	<h2>application:<%=application.getAttribute("info") %></h2>
</body>
</html>