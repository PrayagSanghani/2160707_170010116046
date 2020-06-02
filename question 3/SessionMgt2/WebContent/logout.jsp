<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.getSession().setAttribute("username", null);
	request.getSession().invalidate();
	response.sendRedirect("index.jsp");
	

%>
