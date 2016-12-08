<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    //时间库类
    <%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> --%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>蜻蜓点水飞</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date" scope="page"/>
	<fmt:formatDate value="${date }"/><br/>
	<fmt:formatDate value="${date }" pattern="yyyy/MM/dd HH:mm:ss:sss"/>
	
	<hr color="green"/>
	//使用不同的库类   c    fmt      core-fmt
	<%//定义集合
		List<String> all=new ArrayList<String>();
		all.add("bob");
		all.add("pop");
		all.add("utu");
		pageContext.setAttribute("ref", all);
	%>
	<h3>输出全部</h3>
	<c:forEach items="${ref }" var="mmm">
		${mmm },
	</c:forEach>
</body>
</html>