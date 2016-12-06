<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜鸟教程</title>
</head>
<body>
		<h2>Jsp使用JavaBean实例</h2>
		<!-- //第一种方法 -->
		<<%-- jsp:useBean id="test" class="javabean.BookBean"/> --%>
		<%-- 		<jsp:setProperty property="bookName" value="菜鸟教程" name="test"/>
 --%>	
 		<!-- //第儿种方法	 -->
		<jsp:useBean id="test" class="javabean.BookBean" >
			<jsp:setProperty name="test" property="bookName" value="智障的天空" />
		</jsp:useBean>
		<p>输出信息</p>
		<jsp:getProperty property="bookName" name="test"/>
</body>
</html>