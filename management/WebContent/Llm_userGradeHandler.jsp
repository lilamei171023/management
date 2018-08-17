<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.hellojava.business.UserService" %>
    <%@page import="com.hellojava.entity.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String userNumber=request.getParameter("userNumber");
String userName=request.getParameter("userName");
String userSex=request.getParameter("userSex");
String userEducation=request.getParameter("userEducation");
String userAge=request.getParameter("userAge");
String userTitle=request.getParameter("userTitle");
String userformerDept=request.getParameter("userformerDept");
String usernowDept=request.getParameter("usernowDept");
double userSalary=Double.valueOf(request.getParameter("userSalary"));
String userTrain=request.getParameter("userTrain");
double userReward=Double.valueOf(request.getParameter("userReward"));
double userGrade=Double.valueOf(request.getParameter("userGrade"));

	
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
	boolean bool=userService.revise(user);
	response.sendRedirect(bool?"LLMG.jsp":"error1.jsp");
    
%>
</body>
</html>