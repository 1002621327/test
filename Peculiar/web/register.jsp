<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="javascript">
	function loadimage() {
		document.getElementById("randImage").src = "image.jsp?" + Math.random();
	}
</script>
<script type="text/javascript"">
	function changePwd(obj) {  
    obj.style.display = "none";  
    if (obj.type == "text") {  
        document.getElementById('pwdtext').style.display = "block";  
        document.getElementById('pwdtext').focus();  
    } else {  
        if (obj.value == "")  
            document.getElementById('pwdshow').style.display = "block";  
        else {  
            obj.style.display = "block";  
        }  
    }  
}
</script>
<script type="text/javascript"">
        function validate2() {
		//var userid=document.forms[0].userid.value;
		var username = document.forms[0].username.value;
		var password1 = document.forms[0].password.value;
		var regExp = new RegExp("\\w+@\\w+\\.\\w+\\.?\\w*");
		var regExp1 = new RegExp("[a-zA-z]{1}\\d+|\\d+[a-zA-z]{1}|[a-zA-z]{1}");
		/* if(id<=0){
			alert("id不能为空，请输入id！");
			return false;
		} */
		if (username.length <= 0) {
			alert("用户名不能为空，请输入姓名！");
			return false;
		}
		if (password1 <= 0) {
			alert("请输入密码！");
			return false;
		}
		
		} else if (!regExp1.test(password1)) {
			alert("密码不能为纯数字！");
			return false;
		} else {
			return true;
		}
	}
</script>

<style type="text/css">
body font {
	font-size: 70px;
}
 

#lay-copyright {
	text-align: center;
	left: 45%;
	height:80px;
	padding-left: 45px;
	 
	 background-color:#d0d0d0;
}
#pwdtext{
display:none;

}
body {
 
min-height:100%;
	margin:0;
	background-image: url("picture/03.jpg");}
table {
	
	
} 
body font {
	font-size: 70px;
}
</style>

</head>

<body>
<font>Peculiar</font>
	<br>
	<center>
		
		<hr>
		<br>
		<table border="1">
			<form action="register_check.jsp" method="post" id="form"
				onSubmit="return validate2()">
				<tr>
					<td><input name="username" type="text" value="User"
							 onfocus="if (value =='User'){value =''}" onblur="if (value ==''){value='User'}" /></td>
				</tr>
				<tr>
					<td><div class="password1">  
    <input type="password" name="password1" id="pwdtext" onblur="changePwd(this);" />  
          <input type="text" id="pwdshow"  value="Password" onfocus="changePwd(this);" />  
</div></td>
				</tr>
				<tr>
							<td colspan="2">请输入下图中的验证码:</td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input
								type="text" name="rand" size="6" style=" float:left;text-decoration:none;">&nbsp;<img alt="code..."
								name="randImage" id="randImage" src="image2.jsp" width="60"
								height="20" border="1" align="absmiddle">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
								href="javascript:loadimage();">看不清,换一张</a></td>
						</tr>
						<tr>
					    <td align="center" colspan="2">
						<a href='login.jsp' style=" float:left;text-decoration:none;" > 返回登录</a>
						<a href='Community.jsp' style=" text-decoration:none;float:right; ">返回首页 </a></td>
				</tr>
						
				<td><input type="submit" class="yu" value="提交注册信息"  style=" background-color:green; border-radius:80; width:180px; position:relative;margin-right:40px; margin-left:40px ;" ></td>

			</form>
		</table>
	</center>
	<div id="lay " style="margin-top:220px;opacity:0.1;backgroud-color:red; height:1px;">
     </div>
	
	<div id="lay-copyright" style="margin-top:220px;">
    <h3 style="line-height:30px;   "> Copyright&copy;2016-2017 Peculiar.CN All Rights Reserved <br>Peculiar工作室</h3></div>
</body>
</html>

