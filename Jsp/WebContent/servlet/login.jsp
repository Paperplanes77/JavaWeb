<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<H2>请输入用户信息:</H2>
	<br>
	<Form method="post" action="<%=request.getContextPath()%>/servlet/MyLoginServletDemo" >
		<Lable>用户名:</Lable><Input type="text" name="username"/><br>
		<Lable>密码:</Lable><Input type="password" name="password"/><br>
		<p>
			<Input type="submit" value="提交">
			<Input type="reset" value="重置"><br>
	</Form>
	//action="<%=request.getContextPath() %>/servlet/MyLoginServerDemo">
</body>
</html>