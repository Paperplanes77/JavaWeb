<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	Map<String,String> map=new HashMap<String,String>();
	map.put("11","mm");
	map.put("22","cc");
	map.put("33","nn");
	pageContext.setAttribute("tmap",map);
	%>
	<p>${'${'}tmap}: </p> ${tmap};
	<p>${'${'}tmap[0]}:</p>${tmap[0]}
	<p>${'${'}tmap['11']}:</p>${tmap['22'] };
	 
</body>
</html>