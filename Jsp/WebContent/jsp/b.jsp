<h1>b.jsp</h1>
<% 
	//获得请求参数
	String username=request.getParameter("name");
	String password=request.getParameter("password");
	out.print(username+"   " +password);
%>
<%=username   %><%=password   %>