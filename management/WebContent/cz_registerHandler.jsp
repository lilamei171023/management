<%@page import="com.hellojava.business.LoginService"%>
<%@page import="com.hellojava.business.UserService"%>
<%@page import="com.hellojava.database.tools.Configuration"%>
<%@page import="com.hellojava.entity.Login" %>
<%@page import="com.hellojava.entity.User" %>
<%@page import="com.hellojava.entity.Manager" %>
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

		//转码(防止中文乱码)
		request.setCharacterEncoding("utf-8");
	    String LoginName=request.getParameter("userName");
		String LoginNumber=request.getParameter("userAccount");
		session.setAttribute("userNumber",LoginNumber);
		String LoginPwd=request.getParameter("userPwd");
		String userSex=request.getParameter("sex");
		String userEducation=request.getParameter("userEducation");
		String userAge=request.getParameter("userAge");
		
		
		Login b=new Login();
		b.setLoginNumber(LoginNumber);
		b.setLoginPwd(LoginPwd);
		
		User u=new User();
		u.setUserNumber(LoginNumber);
		u.setUserName(LoginName);
		u.setUserSex(userSex);
		u.setUserEducation(userEducation);
		u.setUserAge(userAge);
		LoginService LoginService=new LoginService();
		boolean bool=LoginService.save(b);
		
		UserService userService=new UserService();
		boolean bool1=userService.save(u);
		
        response.sendRedirect((bool&&bool1)?"LLM.jsp":"cz_register.jsp");     
%>
</body>
</html>