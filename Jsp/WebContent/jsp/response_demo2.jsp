<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>风一样的浪子</title>
</head>
<body>
	<%
		//先运行这个 在运行表示
		Cookie c1=new Cookie("sq","ss");
		Cookie c2=new Cookie("tt","ss");
		response.addCookie(c1);
		response.addCookie(c2);
	%>
</body>
</html>