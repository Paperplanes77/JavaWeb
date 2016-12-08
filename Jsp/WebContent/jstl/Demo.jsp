<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="javabean.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jstl测试</title>
</head>
<body>
	<c:out value="helloworld!"></c:out>
	<%
		BookBean bb=new BookBean();
		pageContext.setAttribute("bName", bb);
	%>
	<c:set target="${bName}" property="bookName">JavaWeb!</c:set>
	<h3>属性内容:${bName.bookName}</h3>
	<hr color="red"/>
	<%-- <jsp:useBean id="bb" class="javabean.BookBean"  ></jsp:useBean>
	<c:set value="javascript!" target="${bb}" property="bookName"/>
	<h3>属性内容:${bb.bookName}</h3>
	<!-- 属性值定义在外面 -->
	<c:set target="${bb}" property="bookName">JavaWeb!</c:set>
	<h3>属性内容:${bb.bookName}</h3> --%>
</body>
</html>