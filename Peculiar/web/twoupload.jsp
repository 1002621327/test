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
}
body form input {
	color: #FFF;
	background-color: #000;
}
body form checkbox {
	color: #FFF;
	
}
</style>
<% 
	SmartUpload smart = new SmartUpload() ;
	smart.initialize(pageContext) ;	// 初始化上传操作
	smart.upload() ;			// 上传准备
	String name = smart.getRequest().getParameter("uname") ;
	IPTimeStamp its = new IPTimeStamp("127.0.0.1") ;	// 取得客户端的IP地址
	String ext = smart.getFiles().getFile(0).getFileExt() ;	// 扩展名称
	String fileName = its.getIPTimeRand() + "." + ext ;
	smart.getFiles().getFile(0).saveAs(this.getServletContext().getRealPath("/")
			+"bizi"+java.io.File.separator + fileName) ;
	%>
	<%=smart.getFiles().getFile(0).getFileName().matches("^\\w+.(jpg|gif|jpeg)$")%>
		

</head>
<body>
	<div class="logo"><img src="picture/system-picture/logo.jpg" width="205" height="59" /> 
    </div>
	
	<form action="Bizi_insert.jsp" method="post">
		<input type="hidden" name="fileName" value="<%=fileName%>">
		<img src= "./bizi/<%=fileName%>" ><br><br>
		主题：<input type="text" name="title" size="53"><br><br><br>
		类型：<input type="checkbox" name="style" value="自然">自然
			<input type="checkbox" name="style" value="动漫">动漫
			<input type="checkbox" name="style" value="汽车">汽车
			<input type="checkbox" name="style" value="游戏">游戏
			<input type="checkbox" name="style" value="动物">动物
			<input type="checkbox" name="style" value="建筑">建筑 <br><br> &nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="style" value="影视">影视
			<input type="checkbox" name="style" value="创意">创意
			<input type="checkbox" name="style" value="星空">星空
			<input type="checkbox" name="style" value="人物">人物
			<input type="checkbox" name="style" value="唯美">唯美
			<input type="checkbox" name="style" value="其他">其他 <br> <br><br>
		说明： <textarea name="body" cols="46" rows="5"></textarea><br><br><br>&nbsp;&nbsp;&nbsp;
		<input type="submit" value="发表"> &nbsp;&nbsp;
		<input type="reset" value="重置">
	
	</form>

</body>
</html>