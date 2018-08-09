<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="GBK"%>
<%@ page import="szw.factory.*,szw.vo.*,szw.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="org.lxh.smart.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<% request.setCharacterEncoding("GBK"); %>
</head>
<body>
<%	
	String inst[] = request.getParameterValues("style");
	String style = null;
	String sum = "" ;
	//request.setCharacterEncoding("GBK");
	String filename = request.getParameter("fileName");
	String title = request.getParameter("title");
	String body = request.getParameter("body");
	%>
	<%
		if(inst != null){
		%>
		<h3>ÐËÈ¤£º
		<%
		for(int x=0;x<inst.length;x++){
			style=inst[x];
			sum = sum+style+",";
			%>
			
		<%
		}
		%>
		</h3>
		<%} %>
	<%
	Bizi bizi= new Bizi();   //ÊµÀý»¯¶ÔÏó
	bizi.setId(filename) ;
	bizi.setTime(new java.util.Date()) ;
	bizi.setTitle(title);
	bizi.setBody(body);
	bizi.setStyle(sum);
	bizi.setUserid(10004);
try{
	if(BiziDAOFactory.getIBiziDAOInstance().doCreate(bizi)){
%>
	<h3>³É¹¦chenggon</h3>
<%
	}else{
%>
	<h3>Ê§°Üshibai</h3>
<%
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>