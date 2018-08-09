<%@ page language="java" contentType="text/html"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Insert title here</title>
<style type="text/css">
body {
	color: #FFF;
	background-color: #000;
	background-image: url(picture/system-picture/benbenla-06c.jpg);
	background-repeat: no-repeat;
	background-position: right top;
}
div.logo{
	height: 40px;
	width: 100%;
	position: fixed;
	opacity: 0.85;
	top: 0;
	color: #FFF;
	background-color: #000;
	border-bottom-width: 2px;
	border-bottom-color: #666;
	border-bottom-style: solid;
	clear: none;
	float: left;
}
body form textarea {
	color: #FFF;
	background-color: #000;
}
body form {
	color: #FFF;
	margin-bottom: 5%;
	margin-left: 10%;
}
body form input {
	color: #FFF;
	background-color: #000;
}
body form checkbox {
	color: #FFF;
	
}
</style>

</head>
<body>
	<br><br>
	<div class="logo"><img src="picture/system-picture/logo.jpg" width="205" height="59" /> 
    </div>
	
	<form action="twoupload.jsp" method="post" enctype="multipart/form-data">
		<img src= "picture/system-picture/benbenla-06c.jpg"  width="400" height="200" ><br><br>
		请选择图片：<input type="file" name="pic"><br><br><br>
		

		<input type="submit" value="确认"> &nbsp;&nbsp;
		<input type="reset" value="重置">
	
	</form>

</body>
</html>