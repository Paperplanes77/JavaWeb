<h1>b.jsp</h1>
<% 
	String username=request.getParameter("name");
	String password=request.getParameter("password");
	out.print(username+"   " +password);
%>
<%=username   %><%=password   %>