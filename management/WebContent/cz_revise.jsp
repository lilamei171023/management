<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码</title>
<link rel="stylesheet" type="text/css" href="css/cz_revise.css"/>
<script type="text/javascript" src="js/cz_revise.js"></script>


<style type="text/css">
body{
          background-image:url(images/login.jpg);
            background-position:center;           
             background-repeat:no-repeat;
             background-size:100% 100% ;
             background-attachment:fixed;
        }

</style>
</head>

<body>
<div  style=width:97vw;text-align:right><a style="font-size:25px;text-decoration:none" href="Llm_login.jsp" id="button">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
<div id="revisediv">
    
		<form action="cz_reviseHandler2.jsp" id="form1" method="get">
			<table id="revisetable">
			<tr>
					<td colspan="3" style="height:20px"><div></div>
					</td>
				</tr>
				<tr>
				  <td colspan="3" align="center">
				       <h2 id="h2">修 改 密 码</h2>
				  </td>
				  <% String userNumber=(String)session.getAttribute("userNumber");
				       	session.setAttribute("userNumber",userNumber);
				       	%>
				</tr>
				
				<tr>
				<td align="right" id="td1">输入原密码:</td>
					<td id="td1">
						<input type="password" name="userOldPwd" id="userOldPwd"/>
					</td>
					<td id="td1" align="left">
						<span id="unewpwdInfo1"><font color="red"></font></span>
					</td>
				
				</tr>
				
				<tr>
					<td align="right" id="td1">输入新密码:</td>
					<td id="td1">
						<input type="password" name="userNewPwd" id="userNewPwd"/>
					</td>
					<td id="td1">
						<span id="unewpwdInfo"><font color="red"></font></span>
					</td>
				</tr>
				   <tr>
					<td align="right" id="td1">再次确认:</td>
					<td id="td1">
						<input type="password" name="reuserPwd" id="reuserPwd" onblur="checkPassword2()"/>
					</td>
					<td id="td1">
						<span id="repwdInfo"><font color="red"></font></span>
					</td>
				</tr>			
				<tr>
					<td colspan="3" align="center">
						<input type="submit" id="button" value="提交"/>
					
					</td>
				</tr>
				<tr>
					<td colspan="3" style="height:35px"><div></div>
					</td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>