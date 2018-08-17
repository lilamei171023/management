<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.hellojava.entity.User" %>
<%@page import="org.apache.jasper.JasperException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/Llm_delete.css"/>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/hm_remove.js"></script>
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
<%
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
String plugin=request.getParameter("plugin");
String con=request.getParameter("con");
//session.setAttribute("plugin",plugin);
//session.setAttribute("con",con);

%>

<div  style=width:100vw;text-align:right><a style="font-size:25px" href="Llm_login.jsp">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
<div id="div1">
 <form action="Llm_deleteHander.jsp" method="get" id="form1">
	<table id="tab" cellspacing="0">
			<tr align="center" id="colour1">
				<td>员工号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>学历</td>
			    <td>年龄</td>
				<td>职位</td>
				<td>原部门</td>
				<td>现部门</td>
				<td>工资</td>
				<td>是否培训</td>
				<td>奖罚</td>
				<td>评分</td>		
				<td colspan="2">是否删除</td>
			</tr>
				
				<tr align="center" id="colour">
                    <td><%out.println(userNumber);%></td>
					<td><%out.println(userName);%></td>
					<td><%out.println(userSex);%></td>
					<td><%out.println(userEducation);%></td>
					<td><%out.println(userAge);%></td>
					<td><%out.println(userTitle);%></td>
					<td><%out.println(userformerDept);%></td>
					<td><%out.println(usernowDept);%></td>
					<td><%out.println(userSalary);%></td>
					<td><%out.println(userTrain);%></td>
					<td><%out.println(userReward);%></td>
					<td><%out.println(userGrade);%></td>
					
                  <% 
                    session.setAttribute("userNumber", userNumber);
					session.setAttribute("userName", userName);
					session.setAttribute("userSex",userSex);
					session.setAttribute("userEducation",userEducation);
					session.setAttribute("userAge",userAge);
					session.setAttribute("userTitle",userTitle);
					session.setAttribute("userformerDept", userformerDept);
					session.setAttribute("usernowDept",usernowDept);
					session.setAttribute("userSalary",userSalary);
					session.setAttribute("userTrain", userTrain);
					session.setAttribute("userReward",userReward);
					session.setAttribute("userGrade",userGrade);
                    HttpSession s=request.getSession();
                    s.setAttribute("plugin",plugin);
                    s.setAttribute("con",con);
                %>
                <td> <button type="submit" id="sub">确认</button></td>	
                <td><a href="bf_search.jsp"><button type="button" id="button1">取消 </button></a>
</td>	
				</tr>
				
		</table>
	</form>
		
	</div>

</body>
</html>