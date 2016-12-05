<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>不是这么想我</title>
</head>
<body>
	<%
		Cookie coo[]=request.getCookies();
		for(int x=0;x<coo.length;x++){
	%>
		<% 	
		//过几秒后跳转
		response.setHeader("refresh","3;URL=http://www.acfun.tv/");
	    %>
			 <h3><%=coo[x].getName() %>--><%=coo[x].getValue() %></h3>
	<% 	
		}
	%>
</body>
</html>