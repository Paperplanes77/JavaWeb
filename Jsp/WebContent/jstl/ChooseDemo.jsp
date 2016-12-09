<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="conditon1">
			标签体
		</c:when>
		<c:when test="condition2">
			标签体2
		</c:when>
		<c:otherwise>
			标签体三
		</c:otherwise>
	</c:choose>
	<c:if test="conditon" var="name" scope=""/>//自闭和
	<c:if test="conditon" var="name" scope="">不是自闭和</c:if>
</body>
</html>