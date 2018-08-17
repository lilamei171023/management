<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录界面</title>
<link rel="stylesheet" type="text/css" href="css/Llm_login.css"/>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/Llm_login.js"></script>

<style type="text/css">
body{
            position:relative;
            background-image:url(images/login.jpg);
            background-position:center;           
            background-repeat:repeat-x;
            background-size:100% 100% ;
            background-attachment:fixed;
            background:rgba(0,0,0,0.0.2);

        }

</style>
</head>
<body>
<div id="divtitle"><a id="title">卓普生物科技有限公司</a></div>
<div id="logindiv">
		<form action="Llm_loginHandler.jsp" id="form1" method="get">
			<table id="logintable">
			<tr style="height:20px"> <td colspan="3"><div></div></td> </tr>
			<tr id="tt"> <td colspan="3" align=center><h1>登  录</h1></td> </tr>
				<tr style="height:30px" >
					<td align="center" id="colour">账号:</td>
					<td>
						<input type="text" name="userNumber" />
					</td>
					<td >
						<span id="unameInfo"><font color="red"></font></span>
					</td>
				</tr>
				
				<tr style="height:30px" >
					<td align="center" id="colour">密码:</td>
					<td>
						<input type="password" name="userPwd" />
					</td>
					<td>
						<span id="upwdInfo"><font color="red"></font></span>
					</td>
				</tr>
				<tr style="height:30px">
				    <td colspan="3" align="center" id="colour">
		   <input type="radio" name="person" checked="checked" value="user" id="user" >员工
		      <input type="radio" name="person" value="manager" id="manager" > 管理员
				    </td>
				</tr>
		<tr style="height:30px"> <td colspan="3" align="center"><a href="cz_register.jsp" >我要注册</a></td> </tr>
				
				<tr style="height:20px">
					<td colspan="3" align="center">
							<input id="button" type="submit" style="font-color:white" value="登录"/>
				            <input id="button" type="reset" value="取消"/>
			         </td>
				</tr>
     <tr style="height:35px"> <td colspan="3"><div></div></td> </tr>
				
			</table>
		</form>
	</div>
</body>
</html>