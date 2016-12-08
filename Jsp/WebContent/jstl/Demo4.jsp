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
	 <hr/>
	 <c:if test="${param.ref=='mldn'}" var="res1" scope="page">
	 	<h3>欢迎${param.ref}光临!</h3>
	 </c:if>
	 <c:if test="${10<30 }" var="res2">
	 	<h3>10比30小!</h3>
	 </c:if>
	  
	  <%
	  	pageContext.setAttribute("num", 10);
	  %>
	  <c:choose>
	  	<c:when test="${num==10 }">
	  		<h3>num1属性的内容是10!</h3>
	  	</c:when>
	  	<c:when test="${num==20 }">
	  		<h3>num1属性的内容是20!</h3>
	  	</c:when>
	  	<c:otherwise>
	  		<h3>没有一个条件满足!</h3>
	  	</c:otherwise>
	  </c:choose>
	  
	  <%//定义数组
	  	String info[]={"pp","plays","yasuo"};
	  	pageContext.setAttribute("ref", info);
	  %>
	  <h3>输出全部:
	  <c:forEach items="${ref }" var="mem">
	  		${mem },
	  </c:forEach></h3>
	  <h3>输出全部（间隔为2）:
	  <c:forEach items="${ref }" var="men" step="2">
	  		${men },
	  </c:forEach></h3>
	   <h3>输出前两个:
	   <c:forEach items="${ref }" var="men" begin="0" end="1">
	   	${men },
	   </c:forEach></h3>
</body>
</html>