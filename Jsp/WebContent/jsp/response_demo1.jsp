<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>页面到处变化</title>
</head>
<body>
<%-- 	<%!
		int count=0;
	%>
	<%
		response.setHeader("refresh","2");
	%>
<h3>已经访问了<%=count++ %>次!</h3> --%>
<hr color=red/>
<%-- <h3>3秒后跳到hello.html页面,如果没有跳转请按<a href="http://www.acfun.tv/">这里</a></h3>
	<% 	
		//过几秒后跳转
		response.setHeader("refresh","3;URL=http://www.acfun.tv/");
	%> --%>
	<hr color=yellow/>
	<%-- <%
		//直接跳转
		response.sendRedirect("http://www.acfun.tc");
	%> --%>
</body>
</html>