<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.hellojava.entity.Login" %>
<%@page import="com.hellojava.business.LoginService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body> 
      <%
     
        
        
       // String userNumber=(String)session.getAttribute("LoginNumber");
        String usernewPwd=request.getParameter("reuserPwd");
        String useroldPwd=request.getParameter("userOldPwd");
        String userNumber=(String)session.getAttribute("userNumber");
        boolean bool3=true;
        if(usernewPwd.equals(useroldPwd)){
          bool3=false;
        }
     
        Login Login1=new Login();
        Login Login2=new Login();
        
        Login2.setLoginNumber(userNumber);
        Login2.setLoginPwd(useroldPwd);
        LoginService userService2=new LoginService();
        boolean bool2=userService2.checkLogin(Login2);
        
        Login1.setLoginPwd(usernewPwd);
        Login1.setLoginNumber(userNumber);
        LoginService userService1=new LoginService();
        boolean bool1=userService1.revisePwd(Login1);
        response.sendRedirect((bool3&&bool2&&bool1)?"success.jsp ":"cz_revise.jsp");
       
     %>



</body>
</html>