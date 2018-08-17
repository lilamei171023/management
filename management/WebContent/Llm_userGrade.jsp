<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.hellojava.entity.User" %>
<%@page import="org.apache.jasper.JasperException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改信息</title>
<link rel="stylesheet" type="text/css" href="css/jrl_revise.css"/>
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
request.setCharacterEncoding("utf-8");
String userNumber=request.getParameter("userNumber");
String userName=request.getParameter("userName");
String userSex=request.getParameter("userSex");
String userEducation=request.getParameter("userEducation");
String userAge=request.getParameter("userAge");
session.setAttribute("userNumber",userNumber);
session.setAttribute("userName",userName);
session.setAttribute("userSex",userSex);
session.setAttribute("userEducation",userEducation);
session.setAttribute("userAge",userAge);


String userTitle=request.getParameter("userTitle");
String userformerDept=request.getParameter("userformerDept");
String usernowDept=request.getParameter("usernowDept");
double userSalary=Double.valueOf(request.getParameter("userSalary"));
String userTrain=request.getParameter("userTrain");
double userReward=Double.valueOf(request.getParameter("userReward"));
double userGrade=Double.valueOf(request.getParameter("userGrade"));
String plugin=request.getParameter("plugin");
String con=request.getParameter("con");
session.setAttribute("plugin",plugin);
session.setAttribute("con",con);
//int p=Integer.parseInt(request.getParameter("page"));

%>

<div  style=width:97vw;text-align:right><a style="font-size:25px;color:#0000a0;font-weight:bold" href="Llm_login.jsp">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
<div id="div1">
 <form action="Llm_userGradeHandler.jsp" method="get" id="form1">
	<table id="tab" cellspacing="0">
			<tr align="center" id="tabTitle">
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
				<td colspan="2" style="width:80px">是否修改</td>
			</tr>
				
				<tr align="center">
                <td> <input id="gray" style="colour:#6699ee background-colour:#ff0000" type="text" name=userNumber value="<%=userNumber%>" readonly="readonly"></td>
                <td> <input id="gray" type="text" name=userName value="<%=userName%>" readonly="readonly" ></td>
                <td> <input id="gray" type="text" name=userSex value="<%=userSex%>" readonly="readonly" ></td>
                <td> <input id="gray" type="text" name=userEducation value="<%=userEducation%>" readonly="readonly" ></td>
                <td> <input id="gray" type="text" name=userAge value="<%=userAge%>" readonly="readonly" ></td>
                <td> <input id="gray" type="text" name=userformerDept value="<%=userformerDept%>" readonly="readonly" ></td>
                <td> <input id="gray" type="text" name=usernowDept value="<%=usernowDept%>" readonly="readonly" ></td>
                <td> <input id="gray" type="text" name=userTitle value="<%=userTitle%>" readonly="readonly" ></td>
                <td> <input id="gray" type="text" name=userSalary value="<%=userSalary%>" readonly="readonly" ></td>
                <td> <input id="gray" type="text" name=userTrain value="<%=userTrain%>" readonly="readonly" ></td>
                <td> <input id="gray" type="text" name=userReward value="<%=userReward%>" readonly="readonly" ></td>
                <td> <input type="text" name=userGrade value="<%=userGrade%>"></td>
                  <% 
                HttpSession s=request.getSession();
                s.setAttribute("plugin",plugin);
                s.setAttribute("con",con);
                %>
                <td > <button type="submit" id="sub">确认</button></td>	
                <td> <button id ="button" type="reset">取消</button></td>	
				</tr>
			<tr>
			<td colspan="14" align="right" >
			<a href="bf_search.jsp"><button type="button" id="button">  返回 </button></a>
	        </td>
				</tr>		
		</table>
	</form>
		
	</div>

</body>
</html>