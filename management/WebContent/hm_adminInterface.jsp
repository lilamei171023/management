<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员主界面</title>
<link rel="stylesheet" type="text/css" href="css/hm_adminInterface.css"/>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/hm_adminInterface.js"></script>
<style type="text/css">
body{
            background-image:url(images/hnn.jpg);
            background-position:center;           
             background-repeat:no-repeat;
             background-size:100% 100% ;
             background-attachment:fixed;
        }


</style>
</head>
<body>
<div  style=width:97vw;text-align:right><a style="font-size:25px" href="Llm_login.jsp">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
	<div id="ldiv">
		<table id="ltable" >
		    <tr id="thead" align="center">
		    	<td colspan='2' style="	padding-right: 20px">人事管理</td>
		    </tr>
		    <tr  >
		    	<td colspan='2'><hr></td>
		    </tr>
			<tr>
			    <td align="center"><a href='hm_remove.jsp'>员工调动</a></td>
			    <td align="center"><a href='sxx_basic.jsp'>基本信息</a></td>
			</tr>
			
			<tr>
			    <td align="center"><a href='Llm_userGradeIndex.jsp'>员工考评</a></td>
			    <td align="center"><a href='sxx_basic.jsp'>人员调薪</a></td>
			  </tr>
			
			<tr>
			    <td align="center"><a href='sxx_basic.jsp'>职称评定</a></td>
                <td align="center"><a href='sxx_basic.jsp'>培训管理</a></td>			  
			</tr>
			
			<tr >
		    	<td colspan='2'><hr></td>
		    </tr>	
		    
			<tr>
			    <td colspan='2'>
			        <div id="div2">
			             <a id="return1" href="Llm_login.jsp">返回</a>
		            </div>
		        </td>
			</tr>
		</table>
	</div>
    


    
</body>
</html>