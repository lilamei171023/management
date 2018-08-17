<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工调动</title>
<link rel="stylesheet" type="text/css" href="css/hm_remove.css"/>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/hm_remove.js"></script>
<style type="text/css">
body{       position:relative;
            background-image:url(images/llm.jpg);
            background-position:center;           
            background-repeat:repeat-x;
            background-size:100% 100% ;
            background-attachment:fixed;
            background:rgba(0,0,0,0.0.2);
        }

</style>
</head>
<body>
<div  style=width:97vw;text-align:right><a style="font-size:25px" href="Llm_login.jsp">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
	<div id="rdiv">
		<form action="hm_removeHandler.jsp" method="post" id="form1">
		<center>
			<table id="rtable">
			<tr>
					<td colspan='3' style="height:15px"><div></div></td>
				</tr>
				<tr id="thead">
					<td colspan='3' align="center"><h3>查看员工调动信息</h3></td>
				</tr>
				<tr>
					<td colspan="2"><input type="text" placeholder="请输入员工号"  name="number"/></td>
					<td><button type="submit" id="button">查找</button></td>
				</tr>
				<tr style="height:40px">
		    		<td colspan='3'><div> </div></td>
		   		</tr>
				<tr >
					<td align="left"><a href='hm_index.jsp'>查看所有员工调动信息</a></td>
				
				<td  colspan='2'align="right">
			             <a href="hm_adminInterface.jsp">返回</a>
		        </td></tr>
				<tr style="height:50px">
		    		<td colspan='3'><div> </div></td>
		   		</tr>
			</table>
			</center>
		</form>
	</div>
</body>
</html>