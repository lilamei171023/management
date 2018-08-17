
$(function(){
	$("#form1").submit(function(){
	        var passValue1=document.getElementById("userOldPwd").value;
            var passValue2=document.getElementById("userNewPwd").value;
            var passValue3=document.getElementById("reuserPwd").value;
            var pass2=document.getElementById("repwdInfo");
            var bool=true;
            if(passValue1=null){
            	  pass2.innerHTML="<font color='red' style='font-size: 20px'>请输入原密码</font>";
            	  bool=false;
            }
            else  if(passValue2=null){
            	  pass2.innerHTML="<font color='red' style='font-size: 20px'>请输入新密码</font>";
            		  bool=false;
            }
            else if(passValue1==passValue2){
                pass2.innerHTML="<font color='red' style='font-size: 20px'>新密码不能与原密码相同，请重新输入</font>";
                	  bool=false;
           }
            else if(passValue3!=passValue2){
                pass2.innerHTML="<font color='red' style='font-size: 20px'>两次密码不一致，请重新输入</font>";
                	  bool=false;
            }
           return bool;
            
	});

});