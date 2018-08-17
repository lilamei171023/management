<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.hellojava.business.UserService" %>
    <%@page import="com.hellojava.entity.User" %>
     <%@page import="com.hellojava.business.LoginService" %>
    <%@page import="com.hellojava.entity.Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String userNumber=(String)session.getAttribute("userNumber");
String userName=(String)session.getAttribute("userName");
String userSex=(String)session.getAttribute("userSex");
String userEducation=request.getParameter("userEducation");
String userAge=request.getParameter("userAge");
String userTitle=(String)session.getAttribute("userTitle");
String userformerDept=(String)session.getAttribute("userformerDept");
String usernowDept=(String)session.getAttribute("usernowDept");
double userSalary=(double)session.getAttribute("userSalary");
String userTrain=(String)session.getAttribute("userTrain");
double userReward=(double)session.getAttribute("userReward");
double userGrade=(double)session.getAttribute("userGrade");
String plugin=request.getParameter("plugin");
String con=request.getParameter("con");
session.setAttribute("plugin",plugin);
session.setAttribute("con",con);
//int p=Integer.parseInt(request.getParameter("page"));

	
	User user=new User();
	user.setUserNumber(userNumber);
	user.setUserName(userName);
	user.setUserSex(userSex);
	user.setUserEducation(userEducation);
	user.setUserAge(userAge);
	user.setUserTitle(userTitle);
	user.setUserformerDept(userformerDept);
	user.setUsernowDept(usernowDept);
	user.setUserSalary(userSalary);
	user.setUserTrain(userTrain);
	user.setUserReward(userReward);
	user.setUserGrade(userGrade); 
	UserService userService=new UserService();
	boolean bool=userService.delete(user);
	Login userlogin=new Login();
	userlogin.setLoginNumber(userNumber);
	LoginService userloginService=new LoginService();
	boolean bool1=userloginService.delete(userlogin);
	boolean bool2=bool&&bool1;
	out.print(bool);
	out.print(bool1);
	out.print(bool2);

	response.sendRedirect(bool2?"LLM3.jsp":"error.jsp");

%>
</body>
</html>