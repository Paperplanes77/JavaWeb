<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="javabean.*" %>
<<jsp:useBean id="book" class="javabean.BookBean">
	<jsp:setPropertyname="book" property="bookName"/>
	<jsp:setPropertyname="book" property="bookNum"/>
</jsp:useBean>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>里面的页面</title>
</head>
<head><title>图书订购</title></head>
<body>
	<p>订购图书清单</p>
	<hr/>
	书名:<%=book.getBookName()%><br/>
	数量:<%=book.getBookNum()%><br/>
</body>
</html>