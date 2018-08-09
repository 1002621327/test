<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
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
	position: absolute;
	width: 350px;
	left: 60px;
	top: 150px;
	line-height: 22px;
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
			window.open(thisurl,"弹出页面","scrollbars=yes,rusizable=no");
		}
	</script>

</head>
<body>
	<br><br>
	<div class="logo"> <img src="picture/system-picture/logo.jpg" width="205" height="59" > 
						<%
    			if(session.getAttribute("userid")!=null){
    			%>	
    				<a onClick="fun('Personal-imformation.jsp')"><h5>
    					&nbsp;欢迎“<%= session.getAttribute("userid") %>”用户</h5></a>
    			<% 
    				session.setAttribute("userid",session.getAttribute("userid"));
    				}else{  	
    			%>
    				<a onClick="fun('login.jsp')">请登录！</a>
    			<% }%>  
    </div>
	<%
	
	response.setCharacterEncoding("GBK");
	request.setCharacterEncoding("GBK");
	Connection conn = null;
	Statement stat = null;
	//String sql = "select userid,name,age,city,sex,profession,personalnote from biziinformation where userid = ?";
	Class.forName("org.gjt.mm.mysql.Driver");
	String url = "jdbc:mysql://localhost:3306/peculiar";
	String user = "root";
	String password = "admin";
	conn = DriverManager.getConnection(url, user, password);
	stat = conn.createStatement();
	ResultSet result = null;
    result = stat.executeQuery("select * from userinformation");
    
    while(result.next()){//判断是否还有下一行  
    	String userid = result.getString("userid");
    	if(userid.equals(session.getAttribute("userid"))){
        	String name = result.getString("name");//获取数据库person表中name字段的值  
        	int age = result.getInt("age");
        	String city = result.getString("city");
        	String sex = result.getString("sex");
        	String profession = result.getString("profession");
        	String personalnote = result.getString("personalnote");
        	%>
        	<form>
			用&nbsp;户&nbsp;名：<%= session.getAttribute("userid") %><br><br>
			名&nbsp;&nbsp;&nbsp;&nbsp;字：<%= name %><br><br>
			性&nbsp;&nbsp;&nbsp;&nbsp;别：<%= sex %><br><br>
			年&nbsp;&nbsp;&nbsp;&nbsp;龄：<%= age %><br><br>
			居&nbsp;住&nbsp;地：<%= city %><br><br>
			职&nbsp;&nbsp;&nbsp;&nbsp;业：<%= profession %><br><br>
			个人说明：<%= personalnote %><br><br>
			</form>
    		<% 
    	}
    }
    result.close();  
    stat.close();  
    conn.close(); 
	
	
	%>	

		
		
		
		
	


</body>
</html>