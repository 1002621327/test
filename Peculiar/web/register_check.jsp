<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String rand = (String) session.getAttribute("rand");
	String input = request.getParameter("rand");
	if (rand.equals(input)) {
	} else {
		out.print("<script>alert('请输入正确的验证码！');location.href='register.jsp';</script>");
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<style type="text/css">
body {
	background-color: #456456;
	font-size: 12px;
}

table {
	font-size: 12px;
	background-color: gray;
}
</style>

<head>
<base href="<%=basePath%>">

<title>注册信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<body>
	<%
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		//String userid = request.getParameter("userid");
		String username = request.getParameter("username");
		String password1 = request.getParameter("password1");
		Connection conn = null;
		Statement stat = null;

		Class.forName("org.gjt.mm.mysql.Driver");
		String url = "jdbc:mysql://localhost:3306/peculiar";
		String user = "root";
		String password = "admin";
		conn = DriverManager.getConnection(url, user, password);
		stat = conn.createStatement();
		String sql = "insert into user(username,password1) values('"
				+ username + "','" + password1 + "')";
		int i = stat.executeUpdate(sql);
	%>

	<center>
		<%
			if (i != 0) {
		%>
		<center>
			<h3>注册成功</h3>
			<h5>
				3秒后将自动跳转到登陆页面！,如无法跳转请按<a href="login.jsp">这里</a>！
			</h5>
			<%
				response.setHeader("refresh", "3;URL=login.jsp");
			%>
		</center>
		<%
			} else {
		%>
		<center>
			<h3>注册失败</h3>
			<h5>
				3秒后将自动跳转到注册页面！,如无法跳转请按<a href="register.jsp">这里</a>！
			</h5>
			<%
				response.setHeader("refresh", "3;URL=register.jsp");
			%>
		</center>
		<%
			}
		%>
	</center>
	<%
		if (stat != null) {
			stat.close();
		}
		if (conn != null) {
			conn.close();
		}
	%>
</body>
</html>
