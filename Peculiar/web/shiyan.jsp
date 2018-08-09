<%@ page language="java" contentType="text/html"
    pageEncoding="GBK"%>
<%@ page import="szw.vo.*,szw.factory.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Insert title here</title>
<style type="text/css">
body {
	background-color: #000;
	color: #FFF;
}
content {
	background-color: #000;
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
.logo #denlu {
	position: fixed;
	left: 70%;
	position: fixed;
	opacity: 0.75;
	top: 0;
}
div.content-left{
	width: 47%;
	clear: none;
	float: left;
	margin-left: 2%;
	height: 2000px;
	clip: rect(30px,auto,auto,auto);
	margin-top: 70px;
}
div.content-right{
	width: 47%;
	float: right;
	margin-right: 2%;
	margin-top: 70px;
	padding: 0px;
}
	
img-bizi {
	border: 1px solid #666;
}
.logo #denlu a {
	color: #FFF;
	background-color: #2A2A2A;
	padding-top: 5px;
	padding-right: 15px;
	padding-bottom: 0px;
	padding-left: 15px;
	margin-left: 10px;
	text-decoration: none;
}
.logo #denlu a:hover {
	color: #6F3;
	background-color: #999999;
	padding-top: 7px;
	padding-right: 17px;
	padding-bottom: 0px;
	padding-left: 13px;
	margin-left: 15px;
	text-decoration: none;
}
.bizicontent {
	display:inline-block;
	width: 32%;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-bottom-color: #696;
	background-position:bottom;
	margin-top: 5px;
	margin-right: 0px;
	margin-bottom: 10px;
	margin-left: 5px;
	background-color: #000;
}
body content {
	float: left;
	border: 1px solid #666;
	width: 90%;
	top: 50px;
	margin-top: 80px;
	margin-right: 5%;
	margin-bottom: 20px;
	margin-left: 5%;
	padding: 0px;
}
</style>
	<script language="JavaScript">
		function open(thisurl){
			window.open(thisurl,"注册页面","scrollbars=yes,rusizable=no");
		}
	
	</script>

</head>
<body>
	<%
	  String get = request.getParameter("type"); 
      String keyWord = request.getParameter("id"); // 接收数据
      if(keyWord == null){
    	  keyWord = "" ;
      }
      List<Bizi> all = BiziDAOFactory.getIBiziDAOInstance().findAll(keyWord); //取出全部记录
      Iterator<Bizi>iter = all.iterator();
      %>
	  
	<div class="logo"> <img src="picture/system-picture/logo.jpg" width="205" height="59" >
    <h4 id="denlu"><a onClick="open('return01.html')">注册</a> 
    			   <a onClick="open('return01.html')">登录</a>
    			   <a onClick="open('upload.html')">上传</a>       </h4> 
    
    </div>
    
	<content>
	<%
	while(iter.hasNext()){
		Bizi bizi = iter.next();
		String id = bizi.getId();
		String style = bizi.getStyle();
		String s[] = style.split(",");
		for(int i =0; i<s.length;i++){
			String a = s[i];
			if(a==get){
				%>
				  <div class="bizicontent"><img src="./bizi/<%=id%>" width=100% >
			      &nbsp;<%= bizi.getTitle() %>
			       </div>
			     <%
			}
		}
	%>
	 
	 <%} %>
	  </content>
</body>
</html>