<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.hellojava.database.dao.UserDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>基本信息查询与统计</title>
<link rel="stylesheet" type="text/css" href="css/sxx_basic.css"/>
<style type="text/css">
body{
            background-image:url(images/llm.jpg);
            background-position:center;           
             background-repeat:no-repeat;
             background-size:100% 100% ;
             background-attachment:fixed;
        }

</style>
<script>
var arr = new Array(4);
arr[0] = ["部门","销售部","人事部","设计部"];
arr[1] = ["性别","男","女"];
arr[2] = ["是否培训","培训","未培训"];
arr[3] = ["成绩","90及以上","80-90","60-80","60以下"];

var key=0;
function choose(val){
	key=1;
   var city = document.getElementById("city");
    var cityOp = city.getElementsByTagName("option");
    city.disabled = false;
    for (var i = 0; i < cityOp.length; i++) {
        var op = cityOp[i];
        city.removeChild(op);
        i--;
    }
    
    for (var i = 0; i < arr.length; i++) {
        var arr1 = arr[i];
        var firstVal = arr1[0];
        if(firstVal == val){
            for (var j = 1; j < arr1.length; j++) {
                var value = arr1[j];
                var optionl = document.createElement("option");
                var textl = document.createTextNode(value);
                optionl.appendChild(textl);
                city.appendChild(optionl);
            }
        }
    }
}
     function test(){
               	 var data1=document.getElementById(1);
               	 var data1=document.getElementById(2);
                }
     function refer(){
    	 
    	 
    	 if(key==0){
    		 alert("请选择所查询的属性");
    	 }else{
	        document.testForm.action="sxx_basicHander.jsp";
	        document.testForm.submit();
    	 }
}
function statistics(){
	 
	 if(key==0){
		 alert("请选择所查询的属性");
	 }
	 else{
	document.testForm.action="sxx_statistics.jsp";
	document.testForm.submit();
	 }
}
function back(){
	 
	document.testForm.action="hm_adminInterface.jsp";
	document.testForm.submit();
}

</script>
</head>

<body>

<div  style="width:97vw; text-align:right"><a style="font-size:25px" href="Llm_login.jsp">退出</a></div>
<div id="divtitle"><a id="title" style="font-family:LiSu;font-size:30px; color:#000080; opacity:0.7;">卓普生物科技有限公司</a></div>	
<div id="div1">
 <form name="testForm" action="" method="get">
  <table id="table1">
   <tr>
      <td colspan="2" align="center" style="height:30px"><div></div></td>
  </tr>
  <tr>
      <td colspan="2" align="center"><h2>基本信息查询与统计</h2></td>
  </tr>
    <tr> <td align="center">  
     <select id="province" onchange="choose(this.value)" name="plugin" >
            <option value="0">请选择类别</option>
            <option value="部门">部门</option>
            <option value="性别">性别</option>
            <option value="是否培训">是否培训</option>
            <option value="成绩">成绩</option>
        </select>
        </td>
        
        <td align="center">
        <select id="city" disabled="disabled" name="con">
            <option value="0" >请选择 </option>
        </select>
        </td>
        </tr>
         <tr>
      <td colspan="3" align="center"style="height:25px"><div></div></td>
       </tr>
      <tr>
     <td align="center">
     <input id="Refer" type="Button" value="查询" onClick="refer()">
    </td>
    <td align="center">
   <input id="button" type="Button" value="统计" onClick="statistics()">
   </td>
    </tr>
 <tr>
      <td colspan="2" align="right" style="height:40px">
      <input id="button1" type="Button" value="返回" onClick="back()"> </td>
  </tr>
  <tr>
      <td colspan="2" align="center" style="height:40px"><div></div></td>
  </tr>
</table>
</form>  
</div>


</body>
</html> 
