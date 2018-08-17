<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="1;http://localhost:8080/management/cz_index.jsp">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<style type="text/css">
body{
             background-image:url(images/login.jpg);
             background-position:center;           
             background-repeat:no-repeat;
             background-size:100% 100% ;
             background-attachment:fixed;
             background:rgba(0,0,0,0.0.2);
        }

</style>

</head>
<body>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
<h2>注册成功,正在跳转.....</h2>
<%
   String userNumber=(String)session.getAttribute("userNumber");
	session.setAttribute("userNumber",userNumber);
%>
</body>
</html>