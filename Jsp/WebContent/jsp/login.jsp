<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>天助自助者</title>
</head>
<body>
	<form action="login.jsp">
		用户名:<input type="text" name="uname"/><br/>
		密&nbsp;&nbsp;码:<input type="password" name="upass"/><br/>
		<input type="submit" value="登录"/>
		<input type="reset" value="重置">
	</form>
	<%
		String name=request.getParameter("uname");
		String password=request.getParameter("upass");
		if(!(name==null||"".equals(name)||password==null||"".equals(password))){
			if("sq".equals(name)&&"tt".equals(password)){
				response.setHeader("refresh","2;URL=welcome.jsp");
				session.setAttribute("userid", name);//将登录的用户名保存在session中
	%>
		<h3>用户登录成功,两秒后跳转到欢迎!</h3>
		<h3>如果没有跳装,请按<a href="welcome.jsp">这里</a></h3>
	<%
			}else{
	%>	
		<h3>错误的用户名或密码</h3>
	<% 
			}		
		}
	%>
</body>
</html>