<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.hellojava.database.dao.UserDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>统计结果</title>
<link rel="stylesheet" type="text/css" href="css/sxx_statistics.css"/>
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
<div  style=width:97vw;text-align:right><a style="button" href="Llm_login.jsp">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
<center>
<div id="div1">
<table id="table1">
<tr><td style="height:30px"><div></div></td></tr>
<tr><td>
<a id="a1">
<%
        int s=0;
        int c=0;
		String userName=request.getParameter("plugin");
        String userName1=request.getParameter("con");
        UserDao userDao=new UserDao();
        s=userDao.getMaxCount1(userName,userName1);
        out.print(userName1+"总人数:");
        %>
        
   <%
        out.println(s+"人");
 %>
 </a>
 </td>
 </tr>
 <tr>
 <td>
 <a href="sxx_basic.jsp">
 <input id="return" type="button" value="返回">
 </a>
 </td>
 </tr>
<tr><td style="height:30px"><div></div></td></tr>
 </table>
</div>
</center>

</body>
</html>