<%@ page language="java" contentType="text/html"
    pageEncoding="GBK"%>
<%@ page import="szw.factory.*,szw.vo.*,szw.util.*" %>
<%@ page import="org.lxh.smart.*" %>
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
	margin-left: 10%;
	margin-top: 100px;
}
body form input {
	color: #FFF;
	background-color: #000;
}
body form checkbox {
	color: #FFF;
	
}
.logo a h5 {
	font-size: 15px;
	position: absolute;
	left: 15%;
	clear: none;
	float: none;
	top: 19px;	
}
</style>
	<script language="JavaScript">
		function fun(thisurl){
			window.open(thisurl,"����ҳ��","scrollbars=yes,rusizable=no");
		}
	</script>

</head>
<body>
	<div class="logo"> <img src="picture/system-picture/logo.jpg" width="205" height="59" > 
						<%
    			if(session.getAttribute("userid")!=null){
    			%>	
    				<a onClick="fun('Personal-information.jsp')"><h5>
    					&nbsp;��ӭ��<%= session.getAttribute("userid") %>���û�</h5></a>
    			<% 
    				session.setAttribute("userid",session.getAttribute("userid"));
    				}else{  	
    			%>
    				<a onClick="fun('login.jsp')">���¼��</a>
    			<% }%>  
    </div>
	
	<form action="User-insert.jsp" method="post">
		
		��&nbsp;&nbsp;����<input type="text" name="name" size="53"><br><br><br>
		��&nbsp;&nbsp;�䣺<input type="text" name="age" size="53"><br><br><br>
		��&nbsp;&nbsp;��<input type="radio" name="sex" value="��" checked>��&nbsp;&nbsp;
			 			   <input type="radio" name="sex" value="Ů">Ů<br><br><br>
		ְ&nbsp;&nbsp;ҵ��<input type="text" name="profession" size="53"><br><br><br>
		��&nbsp;&nbsp;�У�<input type="text" name="city" size="53"><br><br><br>
		����˵���� <textarea name="personalnote" cols="46" rows="5"></textarea><br><br><br>&nbsp;&nbsp;&nbsp;
		<input type="submit" value="�ύ"> &nbsp;&nbsp;
		<input type="reset" value="����">
	
	</form>

</body>
</html>