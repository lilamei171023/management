<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/Llm_fenye.css"/>
 <script>
        var num=3;
        function change(){
            var pic=document.getElementById("pic")
            pic.src="images/"+num+".jpg"
               num++;
            if(num>4){
                num=2;
            }
            setTimeout(change,2000)
        }
    </script>
</head>
<body onload="change()">
    <div id="div1"><img src="images/2.jpg" id="pic"></div>
</body>
</html>