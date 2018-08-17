<%@page import="com.hellojava.business.UserService"%>
<%@page import="com.hellojava.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	    String userName1=request.getParameter("plugin");
	    String userName2=request.getParameter("con");
	    session.setAttribute("userName1",userName1);
	    session.setAttribute("userName2",userName2);
		response.sendRedirect("bf_search.jsp");
	%>
</body>
</html>