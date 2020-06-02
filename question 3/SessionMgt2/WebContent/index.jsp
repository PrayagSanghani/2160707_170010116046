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
	String error = (String)request.getAttribute("ERROR");
	if(error!=null)
		out.println(error);
%>

	<form action="authentication" method="post">
		Username : <br>
		<input type="text" name="username">
		<br>
		Password : <br>
		<input type="password" name="password">
		<br>
		<input type="submit" value="submit">
	
	</form>
</body>
</html>