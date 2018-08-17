<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="css/cz_register.css"/>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/cz_register.js"></script>
<script type="text/javascript">


</script>

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

		<%
			//String name=(String)session.getAttribute("userName");
		%>
		<div  style=width:97vw;text-align:right><a style="font-size:25px;text-decoration:none" href="Llm_login.jsp" id="button">退出</a></div>
	<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
      <div id="registerdiv">
		<form action="cz_registerHandler.jsp" id="form1" method="post">
			<table id="registertable">
			<tr> <td colspan="3" align=center><div style="height:20px"></div></td> </tr>
			
			<tr style="height:40px"> <td colspan="3" align=center><h2 >欢迎注册</h2></td> </tr>
				
				   <tr id="colour">
					<td align="right">姓名:</td>
					<td>
						<input type="text" name="userName" id="userName"/>
					</td>
					<td>
						<span id="unameInfo"><font color="red"></font></span>
					</td>
				</tr>
				   <tr id="colour">
					<td align="right">性别:</td>
					<td colspan=2>
						<input type="radio" checked="checked" name="sex" value="男" id="man"/>男
					    <input type="radio" name="sex" value="女" id="woman"/>女
					</td>
				</tr>
				<tr id="colour">
					<td align="right">学历:</td>
					<td>
						<input type="text" name="userEducation" id="userEducation"/>
					</td>
					<td>
						<span id="unameInfo"><font color="red"></font></span>
					</td>
				</tr>	
				<tr id="colour">
					<td align="right">年龄:</td>
					<td>
						<input type="text" name="userAge" id="userAge"/>
					</td>
					<td>
						<span id="unameInfo"><font color="red"></font></span>
					</td>
				</tr>
				<tr id="colour">
					<td align="right">帐号:</td>
					<td>
						<input type="text" name="userAccount" id="userAccount"/>
					</td>
					<td>
						<span id="uaccountInfo"><font color="red"></font></span>
					</td>
				</tr>
				<tr id="colour">
					<td align="right">密码:</td>
					<td>
						<input type="password" name="userPwd" id="userPwd"/>
					</td>
					<td>
						<span id="upwdInfo"><font color="red"></font></span>
					</td>
				</tr>			
				<tr>
					<td colspan="3" align="center">
						<input type="submit" id="button" value="提交"/>
						<input type="reset" id="button" value="取消"/>
					</td>
				</tr>
				<tr> <td colspan="3" align=center><div style="height:40px"></div></td> </tr>
			</table>
		</form>
	</div>

</body>
</html>