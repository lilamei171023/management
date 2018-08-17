<%@page import="com.hellojava.business.UserService"%>
<%@page import="com.hellojava.database.tools.Configuration"%>
<%@page import="com.hellojava.entity.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/hm_index.css">
<style type="text/css">
body{
            background-image:url(images/photo1.jpg);
            background-position:center;           
             background-repeat:no-repeat;
             background-size:100% 100% ;
             background-attachment:fixed;
        }

</style>
</head>
<body>
<div  style=width:100vw;text-align:right><a style="font-size:25px" href="Llm_login.jsp">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>		
	<%
		String userNumber=request.getParameter("number"); 
	
	    
	    User user=null;
	   
	    UserService userService=new UserService();
	    user=userService.loadOne(userNumber);
	   if(user!=null){%>
	     <div id="div1">
			<table id="tab" cellspacing="0">
				<tr align="center" id="tabTitle" style=" font-size:22px;padding: 10px;color:#000080">
					<td>员工号</td>
					<td>员工姓名</td>
					<td>原部门</td>
					<td>现部门</td>
				</tr>
	            <tr align="center">
					<td><%out.println(user.getUserNumber());%></td>
					<td><%out.println(user.getUserName());%></td>
					<td><%out.println(user.getUserformerDept());%></td>
					<td><%out.println(user.getUsernowDept());%></td>		
				</tr>
					<tr id="tabTitle">
						<td colspan="5" align="right">
							<a href="hm_remove.jsp">返回</a>			
						</td>
					</tr>
			</table>
	     </div>  
	<% 	   
	   }else{%>
	 <h2> 员工号输入错误,点击 <a href="hm_remove.jsp" style="color:red;font-size:25px">   返回</a>重新输入</h2>
	   <% } %>
</body>
</html>