<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	

	String username = (String)request.getSession().getAttribute("username");
	String rusername = new StringBuffer(username).reverse().toString();
	//if(username=!null){
	//	response.sendRedirect("index.jsp");
	//}
	
	response.setContentType("text/html");
    PrintWriter out1 = response.getWriter();
            
            
	String ua = request.getHeader("user-agent");
	String msg;
	if (!ua.contains("MSIE")){
		out1.print("User not using Internet Explorer");
	    
	}
%>
<br>
Welcome <%=username%>
<br>
Reverse is <%=rusername %>
<a href="logout.jsp">Logout</a>

</body>
</html>