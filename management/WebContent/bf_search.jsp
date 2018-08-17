
<%@page import="com.hellojava.database.dao.UserDao"%>
<%@page import="com.hellojava.entity.User"%>
<%@page import="com.hellojava.business.UserService"%>
<%@page import="java.util.List "%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示统计数据</title>
<link rel="stylesheet" type="text/css" href="css/bf_search.css"/>
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
<div style=width:97vw;text-align:right><a style="font-size:25px;font-weight:bold" href="Llm_login.jsp">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>		
	<div id="div1">
		<table id="tab" cellspacing="0" >
			<tr align="center" id="colour1">
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
			   <td colspan="2">操作</td>
			</tr>	
				<%   String userName1=(String)session.getAttribute("userName1");
				     String userName2=(String)session.getAttribute("userName2");
				     session.setAttribute("userName1",userName1);
					 session.setAttribute("userName2",userName2);
					 UserService userService=new UserService();

					int pageCount=0;
				    int maxPage=userService.calcMaxPage1(7,userName1,userName2);
					if(request.getParameter("page")!=null){
						int p=Integer.parseInt(request.getParameter("page"));
						if(p<0){
							p=0;
						}
						if(p>maxPage){
							p=maxPage;
						}
						pageCount=p;
					}
					//UserService userService2=new UserService();
                    int id=1;
					List<User> user=userService.loadAllBF(pageCount,userName1,userName2);
					if(user!=null){
					for(User u : user){
				%>

				<tr align="center" id="colour" >
				
					<td><%out.println(u.getUserNumber());%></td>
					<td><%out.println(u.getUserName());%></td>
					<td><%out.println(u.getUserSex());%></td>
					<td><%out.println(u.getUserEducation());%></td>
					<td><%out.println(u.getUserAge());%></td>
					<td><%out.println(u.getUserTitle());%></td>
					<td><%out.println(u.getUserformerDept());%></td>
					<td><%out.println(u.getUsernowDept());%></td>
					<td><%out.println(u.getUserSalary());%></td>
					<td><%out.println(u.getUserTrain() );%></td>
					<td><%out.println(u.getUserReward());%></td>
					<td><%out.println(u.getUserGrade() );%></td>
						<% 
				    session.setAttribute("userNumber", u.getUserNumber());
					session.setAttribute("userName", u.getUserName());
					session.setAttribute("userSex",u.getUserSex());
					session.setAttribute("userEducation",u.getUserEducation());
					session.setAttribute("userAge",u.getUserAge());
					session.setAttribute("userTitle",u.getUserTitle());
					session.setAttribute("userformerDept", u.getUserformerDept());
					session.setAttribute("usernowDept",u.getUsernowDept());
					session.setAttribute("userSalary",u.getUserSalary());
					session.setAttribute("userTrain", u.getUserTrain());
					session.setAttribute("userReward",u.getUserReward());
					session.setAttribute("userGrade",u.getUserGrade());
					%>
					<td>
					<a id="button" style="button" href="jrl_revise.jsp?plugin=<%=userName1%>&con=<%=userName2%>&userNumber=<%=u.getUserNumber()%>&userName=<%=u.getUserName()%>&userSex=<%=u.getUserSex()%>&userEducation=<%=u.getUserEducation()%>&userAge=<%=u.getUserAge()%>&userTitle=<%=u.getUserTitle()%>&userformerDept=<%=u.getUserformerDept()%>&usernowDept=<%=u.getUsernowDept()%>&userSalary=<%=u.getUserSalary() %>&userTrain=<%=u.getUserTrain()%>&userReward=<%=u.getUserReward()%>&userGrade=<%=u.getUserGrade()%>">修改</a>
					   </td> 					
					<td>
					<a id="button" style="button" href="Llm_delete.jsp?plugin=<%=userName1%>&con=<%=userName2%>&userNumber=<%=u.getUserNumber()%>&userName=<%=u.getUserName()%>&userSex=<%=u.getUserSex()%>&userEducation=<%=u.getUserEducation()%>&userAge=<%=u.getUserAge()%>&userTitle=<%=u.getUserTitle()%>&userformerDept=<%=u.getUserformerDept()%>&usernowDept=<%=u.getUsernowDept()%>&userSalary=<%=u.getUserSalary() %>&userTrain=<%=u.getUserTrain()%>&userReward=<%=u.getUserReward()%>&userGrade=<%=u.getUserGrade()%>">删除</a></td>
					
				</tr>
				<%} }
				%>
				
				<tr>
					<td colspan="14" align="right" id="trr">
						<a href="bf_search.jsp?page=0">首页</a>
						<a href="bf_search.jsp?page=<%=pageCount-1%>">上一页</a>
						<a href="bf_search.jsp?page=<%=pageCount+1%>">下一页</a>
						<a href="bf_search.jsp?page=<%=maxPage%>" id="trr">末页</a>
					</td>
				</tr>
		
        <tr> 
           <td colspan="14" align="right">
           <a href="sxx_basic.jsp">
      		<input id="return" type="button" value="返回">
           </a>
         </td>
        </tr>
	
      </table>
  </div>
</body>
</html>
