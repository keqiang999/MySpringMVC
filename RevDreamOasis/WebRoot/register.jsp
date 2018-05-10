<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<style>
body{
  background:url(img/bg.png) repeat-x;
  min-height: 600px;
  position: relative;

}

 *{font-family:"微软雅黑"; margin:0; padding:0; border:0; font-size:14px;color:white;}
  html,body{height:100%; width:100%;;}

.kuico{
    background:url(img/coolyun.png) no-repeat;
    display: inline-block;
    width:26px;
    height:16px;
    margin-right: 5px;
}
.kuintro{
 color:white;
 padding-right: 5px;
 rgba(255, 255, 255, 0.8);
}

.kutrg{
    background:url(img/triangle.png) no-repeat;
    display: inline-block;
    width:10px;
    height:6px;
   
}
a{
  text-decoration: none;
  color: rgba(255, 255, 255);
  cursor: pointer; 
}

.robot{
    background:url(img/android.png) no-repeat;
    display: inline-block;
    width:18px;
    height:20px;
    padding-right: 5px;
}

.question{
    background:url(img/question.png) no-repeat;
    display: inline-block;
    width:20px;
    height:20px;
    padding-right: 5px;
}

.downIntro,.introYun,.account{
float:left;
margin-right: 25px;
}

.name,.pwd{            
  width: 310px;
  height: 44px;
  line-height: 44px;
  padding-left: 15px;
  outline: none;
  border-radius: 20px;
  background-color: #0A3C78;
  border: 1px solid #329BE0;
}
.name:hover,.pwd:hover,.name:focus,.pwd:focus{

	  background-color: #052b64;
}

#login{

  background: #3fb9ff;
  font-size: 18px;
  width: 329px;
  height: 44px;
  outline: none;
  color: white;
  background: -webkit-linear-gradient(#3fb9ff, #099be7, #229de3);
  background: -o-linear-gradient(#3fb9ff, #099be7, #229de3);
  background: -moz-linear-gradient(#3fb9ff, #099be7, #229de3);
  background: linear-gradient(#3fb9ff, #099be7, #229de3);
  border-radius: 20px;
}
#login:hover{
  background: -webkit-linear-gradient(#229de3, #099be7,#3fb9ff);
  background: -o-linear-gradient(#229de3, #099be7,#3fb9ff);
  background: -moz-linear-gradient(#229de3, #099be7,#3fb9ff);
  background: linear-gradient(#229de3, #099be7,#3fb9ff);
}

#hLeft{
  float: left;
  height: 32px;
  vertical-align: middle;
  line-height: 32px;
  width: 172px;
  text-align: center;
  cursor: pointer;
}

#hright{
   float: right;
   margin-right: 10px;

}
#head{
    height: 50px;
	padding-top: 25px;
	margin-left: 14px;
}
    #middle {
         width:500px;
        height: 550px;
        border: 2px solid #1A74C1;

    }

}
#footer{
  
  text-align: center;
  bottom: 15px;
  position: absolute; 
  width: 100%;
}
#footer a{
	color:black;
}

 #middle li {
 list-style-type:none;
 margin-top: 10px;
 }
 
  #children li {
  list-style-type: none;
  height: 42px;
  line-height: 42px;
  border-bottom: 1px double rgb(5, 33, 113);

 }
 
  #children li a{
   color: rgba(255, 255, 255);
 }
 .register{
   padding-right: 25px;
 }
 
 .downApk{
  background: url(img/android.png) no-repeat 30px;
  text-indent: 25px;
  display: inline-block;
  height: 32px;
  line-height: 32px;
  width: 232px;
  text-align: center;
 
 }
 
  .downApk:hover{ 
    background-color: #354d8d;
    border-radius: 16px;
  }
 
  .introduce{
  
   background: url(img/question.png) no-repeat 20px;
  text-indent: 20px;
  display: inline-block;
  height: 32px;
  line-height: 32px;
  width: 140px;
  text-align: center;
 }
 
  .introduce:hover{
    background-color: #354d8d;
    border-radius: 16px;
   }
 .reg{
  height: 32px;
  line-height: 32px;
  width: 129px;
  display: inline-block;
  text-align: center;
   
   }
   
   .reg:hover{
      background-color: #354d8d;
      border-radius: 16px;
    }
    
    .forgetPwd{
    
          height: 32px;
		  line-height: 32px;
		  width: 129px;
		  display: inline-block;
		  text-align: center;
    }
    
     .forgetPwd:hover{
      background-color: #354d8d;
      border-radius: 16px;
     
     }
 #children{
  position: absolute;
  margin-top: 35px;
  left: 14px;
  width: 172px;
  text-align: center;
  background-color: #1f377f;
  display:none;
 }
#hLeft:hover{
  background-color: #1f377f;
  border-radius: 16px;

}

#children li:hover{
  background-color: #354d8d;

}
#cloud{
  background: url(img/cloud.png) repeat;
  width: 100%;
  height: 356px;
  position: absolute;
  bottom: 0px;
  -webkit-animation: cloud 60s linear infinite alternate;
  -moz-animation: clouds 60s linear infinite alternate;
 
   
  z-index: -10;

}

 @-webkit-keyframes cloud { 
    0%{background-position:top left} 
    100%{background-position:top right} 
 }
 
 @-moz-keyframes clouds { 
    0%{background-position:top left} 
    100%{background-position:top right} 
 }
   
   #err{
     display:none;
     color:red;
   }
   #sky{
  background: url(img/sky.png) repeat;
  width: 100%;
  heigth: 462px;
  z-index: -20;
  height: 462px;
  position: absolute;
  top: 0px;
   }
   
   #valid {
  height: 44px;
  width: 150px;
  text-indent: 1em;
  vertical-align: middle;
  line-height: 46px;
  outline: none;
  border-radius: 20px;
  background-color: #0A3C78;
  border: 1px solid #329BE0;
}

 #validcode {
  display: inline-block;
  width: 100px;
  height: 30px;
  margin-left: 5px;
  vertical-align: middle;
}

#changeimg {
  margin-left: 15px;
  cursor: pointer;
}
#tlogin:focus{outline:none;}

footer {
	 width: 100%; height: 120px; text-align: center; line-height: 28px;padding-top: 35px;
}
</style>
</head>
<body>
    <div id="sky"></div>
    <div id="head"></div>
    <center>

                <div id="middle" margin:20px auto;>
                    <form action="register" method="post">
                        <ul style="text-align: center;">
                            <li style="font-size: 45px">启梦</li>
                            <li style="font-size: 20px"> 我们来到你的地方，只为与你一同欢笑</li><br/>
                            <li>&nbsp;&nbsp;&nbsp;登录名：&nbsp;<input class="name" name="username" placeholder=""></li> 
                            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：&nbsp;<input id="MiMa1" type="password" name="password" class="pwd" placeholder=""></li>
                            <li>确认密码：&nbsp;<input id="MiMa2" type="password" name="password2" class="pwd" placeholder="与密码相同"><p style="color:red" id="CuoWu"></p></li>
                            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：&nbsp;<input name="email" class="pwd" placeholder=""></li>
                            <li>手机号码：&nbsp;<input name="phone" class="pwd" placeholder=""></li>
                            <li id="verifyCode" style="display: block;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="valid" name="rand" placeholder="请输入验证码" maxlength="4">
                                <span id="validcode">
                                    <img id="verifyCodePic" src="/img/img1.jpg">
                                </span>

                                <span id="validcode">
                                    换一张
                                </span>
                            </li>
                            <li><button id="login" style="font-size: 20px">立即注册</button></li>
                        </ul>
                    </form>
                </div>
        </center>
            <div id="cloud"></div>
            <script src="js/jquery-2.1.1.js" type="text/javascript" charset="UTF-8"></script>
            <script language='javascript' type='text/javascript'>
                $(document).ready(function () {
                    init();

                });
                function init() {

                    $(".name,.pwd,#valid").keyup(function (event) {
                        if (event.keyCode == 13) {
                            $('#login').click();
                        }

                    });
                    $("form").submit(function (event) {
                        var account = $(".name").val();
                        var pwd = $(".pwd").val();
                        if (!account || !pwd) {
                            $("#err").css("display", "inline-block");
                            $("#err").text("请输入用户名或密码");
                            return false;
                        }
                        var code = $("#valid").val().toLocaleLowerCase();
                        code = $.trim(code);
                        if (code.length < 4) {
                            $("#err").css("display", "inline-block");
                            $("#err").text("验证码错误");
                            return false;
                        }
                    });
                    $('#changeimg').click(function () {
                        $('#verifyCodePic')[0].src = '/jcaptcha.jpg?' + Math.random();
                        return false;
                    });
                }
                var MiMa1 = document.getElementById('MiMa1');
			var MiMa2 = document.getElementById('MiMa2');
			var CuoWu = document.getElementById('CuoWu');
			var text = document.createTextNode('两次输入密码不符!');
			var denglu = document.getElementById('login');
				
				denglu.onclick = function panduan () {
				
					if(MiMa1.value != MiMa2.value){
						CuoWu.appendChild(text);
					}else{
						CuoWu.removeChild(text);
						
					}
					
				}
                
            </script>


</body>
</html>