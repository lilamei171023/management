<%@page import="com.hellojava.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.hellojava.business.UserService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工调动信息</title>
<link rel="stylesheet" type="text/css" href="css/hm_index.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/hm_index.js"></script>

<style type="text/css">
body{
             background-image:url(images/photo1.jpg);
             background-position:center;           
             background-repeat:no-repeat;
             background-size:100% 100% ;
             background-attachment:fixed;
             background:rgba(0,0,0,0.0.2);
        }

</style></head>
<body>
<div  style=width:97vw;text-align:right><a style="font-size:25px" href="Llm_login.jsp">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
	<div id="div1">
		<table id="tab" cellspacing="0">
			<tr align="center" id="colour1">
				<td>员工号</td>
				<td>员工姓名</td>
				<td>原部门</td>
				<td>现部门</td>
			</tr>
				<%
					UserService userService=new UserService();
					int pageCount=0;
				    int maxPage=userService.calcMaxPage(7);
					if(request.getParameter("page")!=null){
						int p=Integer.parseInt(request.getParameter("page"));
						if(p<0){
							p=maxPage;
						}
						if(p>maxPage){
							p=0;
						}
						pageCount=p;
					}
					
					List<User> user=userService.loadAll(pageCount);
					for(User u : user){
				%>
				<tr align="center" id="colour">
					<td><%out.println(u.getUserNumber());%>	</td>
					<td><%out.println(u.getUserName());%></td>
					<td><%out.println(u.getUserformerDept());%></td>
					<td><%out.println(u.getUsernowDept());%></td>
				</tr>
				<%} %>
				
				<tr>
					<td colspan="5" align="right">
						<a href="hm_index.jsp?page=0">首页</a>
						<a href="hm_index.jsp?page=<%=pageCount-1%>">上一页</a>
						<a href="hm_index.jsp?page=<%=pageCount+1%>">下一页</a>
						<a href="hm_index.jsp?page=<%=maxPage%>">末页</a>
					</td>
				</tr>
				<tr>
				<td id="div2" colspan="4" align="right">
			<button id="return1" >返回</button>
		</td>
		</tr>
		</table>
	</div>
</body>
</html>