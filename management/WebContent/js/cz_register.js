
$(function(){
	$("#form1").submit(function(){
		var bool=false;
		var uname=$("#userName").val();
		var upwd=$("#userPwd").val();
		var number=$("#userAccount").val();
		var reg=/^\w{3,}$/;
		
		if(  reg.test(number) &&reg1.test(uname) &&reg.test(upwd) ){
			bool=true;
		}else{
			if(!reg.test(number)){
				$("#uaccountInfo").html("<font color='red' size='-1'>账号必须三位以上</font>");
			}
			 if(!reg.test(uname)){
				$("#unameInfo").html("<font color='red' size='-1'>用户名必须三位以上</font>");
			} 
			if(!reg.test(upwd)){
				$("#upwdInfo").html("<font color='red' size='-1'>密码必须三位以上</font>");
			}
			
		}
		return bool;
		
	});
});