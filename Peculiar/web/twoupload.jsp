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
	smart.initialize(pageContext) ;	// ��ʼ���ϴ�����
	smart.upload() ;			// �ϴ�׼��
	String name = smart.getRequest().getParameter("uname") ;
	IPTimeStamp its = new IPTimeStamp("127.0.0.1") ;	// ȡ�ÿͻ��˵�IP��ַ
	String ext = smart.getFiles().getFile(0).getFileExt() ;	// ��չ����
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
		���⣺<input type="text" name="title" size="53"><br><br><br>
		���ͣ�<input type="checkbox" name="style" value="��Ȼ">��Ȼ
			<input type="checkbox" name="style" value="����">����
			<input type="checkbox" name="style" value="����">����
			<input type="checkbox" name="style" value="��Ϸ">��Ϸ
			<input type="checkbox" name="style" value="����">����
			<input type="checkbox" name="style" value="����">���� <br><br> &nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="style" value="Ӱ��">Ӱ��
			<input type="checkbox" name="style" value="����">����
			<input type="checkbox" name="style" value="�ǿ�">�ǿ�
			<input type="checkbox" name="style" value="����">����
			<input type="checkbox" name="style" value="Ψ��">Ψ��
			<input type="checkbox" name="style" value="����">���� <br> <br><br>
		˵���� <textarea name="body" cols="46" rows="5"></textarea><br><br><br>&nbsp;&nbsp;&nbsp;
		<input type="submit" value="����"> &nbsp;&nbsp;
		<input type="reset" value="����">
	
	</form>

</body>
</html>