<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<title>Insert title here</title>
</head>
<body>
<%
		response.setCharacterEncoding("GBK");
		request.setCharacterEncoding("GBK");
		Connection conn = null;
		Statement stat = null;
		
		if(session.getAttribute("userid")!=null){
			session.setAttribute("userid",session.getAttribute("userid"));
		}
		
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String city = request.getParameter("city");
		String profession = request.getParameter("profession");
		String personalnote = request.getParameter("personalnote");
		Class.forName("org.gjt.mm.mysql.Driver");
		String url = "jdbc:mysql://localhost:3306/peculiar";
		String user = "root";
		String password = "admin";
		conn = DriverManager.getConnection(url, user, password);
		stat = conn.createStatement();
		String sql = "insert into userinformation(userid,name,age,city,sex,profession,personalnote) values('"+ session.getAttribute("userid") + "','"
				+ name + "','" + age + "','"+ city + "','"+ sex + "','"+ profession + "','"
				+ personalnote + "')";
		int i = stat.executeUpdate(sql);
	%>
		<center>
		<%
			if (i != 0) {
		%>
		<center>
			<h3>��Ϣ��д�ɹ�</h3>
			<h5>
				3����Զ���ת����½ҳ�棡,���޷���ת�밴<a href="login.jsp">����</a>��
			</h5>
			<%
				response.setHeader("refresh", "3;URL=login.jsp");
			%>
		</center>
		<%
			} else {
		%>
		<center>
			<h3>��Ϣ��дʧ��</h3>
			<h5>
				3����Զ���ת��ע��ҳ�棡,���޷���ת�밴<a href="User-information.jsp">����</a>��
			</h5>
			<%
				response.setHeader("refresh", "3;URL=User-information.jsp");
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