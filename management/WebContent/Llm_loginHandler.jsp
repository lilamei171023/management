<%@page import="com.hellojava.business.LoginService"%>
<%@page import="com.hellojava.business.ManagerService"%>
<%@page import="com.hellojava.database.tools.Configuration"%>
<%@page import="com.hellojava.entity.Login" %>
<%@page import="com.hellojava.entity.Manager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/Llm_login.css"/>
</head>
<body>
	<%
		String userNumber=request.getParameter("userNumber");
	    session.setAttribute("userNumber",userNumber);
	    String userPwd=request.getParameter("userPwd");
	    String identity=request.getParameter("person");
	    
	   
	    boolean bool;
	    if(identity!=null&&!identity.equals("")){
	    	if(identity.equals("user")){
	    		    Login Login=new Login();
	    		    Login.setLoginNumber(userNumber);
	    		    Login.setLoginPwd(userPwd);
	    		    LoginService LoginService=new LoginService();
	    		    bool=LoginService.checkLogin(Login);	
	    		    response.sendRedirect(bool?"cz_index.jsp":"Llm_login.jsp");
	    	}
	    	else
	    	{     Manager manager=new Manager();
		          manager.setManagerNumber(userNumber); 
		          manager.setManagerPwd(userPwd);
		          ManagerService managerService=new ManagerService();
		          bool=managerService.checkManager(manager);	 
	    		 response.sendRedirect(bool?"LLM2.jsp":"Llm_login.jsp");
	    	}
	    }
	 
	   
	%>
</body>
</html>