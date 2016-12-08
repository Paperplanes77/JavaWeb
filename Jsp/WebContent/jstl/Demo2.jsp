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
	 <c:catch var="errmsg">
	 	<c:set var="count" value="${param.c+1}" scope="page"/><br/>
	 	<!-- 下面的count需要用el表达式包裹     同时变量可以用？c=赋值-->
	 	<c:out value="${count}"></c:out>
	 	<%
	 		/* float a=15.6f;
	 		float c=a/0; */
	 		int result=10/0; 
	 	%>/
	 </c:catch>
	 <h3>异常信息:${errmsg}</h3>
</body>
</html>