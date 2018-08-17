<%@page import="com.hellojava.entity.User" %>
<%@page import="java.util.List"%>
<%@page import="com.hellojava.business.UserService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户信息</title>
<link rel="stylesheet" type="text/css" href="css/cz_index.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/cz_index.js"></script>
<style type="text/css">
body{
            background-image:url(images/hnn.jpg);
            background-position:center;           
             background-repeat:no-repeat;
             background-size:100% 100% ;
             background-attachment:fixed;
        }
        </style>
</head>
<body>
<div  style=width:97vw;text-align:right><a style="font-size:25px" href="Llm_login.jsp">退出</a></div>	
	<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
	<div id="div1">
		<table id="tab" cellspacing="0" >
			<tr align="center" id="colour">
				<td>账号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>学历</td>
				<td>年龄</td>
				<td>职位</td>
				<td>原部门</td>
				<td>现部门</td>
				<td>工资</td>
				<td>参加培训</td>
				<td>奖金</td>
				<td>评分</td>
			</tr>
			<tr>
			  <td colspan="12"><hr id="br"></td>
			</tr>	
				<% 
				    String userNumber=(String)session.getAttribute("userNumber");
			      	session.setAttribute("userNumber",userNumber);
			      	//User user1=new User();
			      	//user1.setUserNumber(userNumber);
				    UserService userService=new UserService();
				  
				    List<User> user= userService.loadAllUser(userNumber);
				    //out.println(user);
				    for(User b : user){
				%>
			
				<tr align="center"  id="colour">
					<td><%out.println(b.getUserNumber());%></td>
					<td><%out.println(b.getUserName());%></td>
					<td><%out.println(b.getUserSex());%></td>
					<td><%out.println(b.getUserEducation());%></td>
					<td><%out.println(b.getUserAge());%></td>
					<td><%out.println(b.getUserTitle());%></td>
					<td><%out.println(b.getUserformerDept());%></td>
					<td><%out.println(b.getUsernowDept());%></td>
					<td><%out.println(b.getUserSalary());%></td>
					<td><%out.println(b.getUserTrain() );%></td>
					<td><%out.println(b.getUserReward());%></td>
					<td><%out.println(b.getUserGrade() );%></td>
				</tr>
			<%} %>
		<tr>
	       <td colspan="12" align="right">	
			<button id="bu_add" type="button" onclick="window.location='cz_revise.jsp'">更改密码</button>
	      </td>
	   </tr>
			
		</table>

	</div>
</body>
</html>