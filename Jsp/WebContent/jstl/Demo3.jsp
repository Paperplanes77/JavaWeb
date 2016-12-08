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
	 <c:set  var ="name2" scope="page">100</c:set><br/>
	 ${'${'}name2 }:${name2}<br/>
	 <c:remove var="name2"/>
	 ${'${'}name2 }:${name2 }<br/>
	 <hr color="green"/>
	 <c:catch var="errMsg">
	 	${param.a+1 }
	 </c:catch>
	 <c:out value="${errMsg}"></c:out>
	 
</body>
</html>