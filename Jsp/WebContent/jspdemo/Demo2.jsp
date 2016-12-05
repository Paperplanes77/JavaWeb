<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%! int day=3; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <h3>switch case实例</h3>
	 <% 
	 switch(day){
	 	case 1:
	 %>
	 		<p>今天是周末</p>
	 <% 
	 		break;
	 	case 7:
	 %>
	 		<p>今天是周末</p>
	 <% 
	 		break;
	 	default:
	 %>
	 		<p>今天不是周末</p>
	 <%
	 		break;
	 }
	 %>
</body>
</html>