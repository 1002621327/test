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
.logo #denlu select {
	
	margin-bottom: 10px;
	color: #FFF;
	background-color: #000;
}
.logo #denlu select:hover {
	opacity: 0.5;
}
</style>
	<script language="JavaScript">
		function fun(thisurl){
			window.open(thisurl,"ע��ҳ��","scrollbars=yes,rusizable=no");
		}
	
	</script>

</head>
<body>
	<%
	  request.setCharacterEncoding("GBK");
	  String get = request.getParameter("type"); 
      String keyWord = request.getParameter("id"); // ��������
      
      
      if(keyWord == null){
    	  keyWord = "" ;
      }
      List<Bizi> all = BiziDAOFactory.getIBiziDAOInstance().findAll(keyWord); //ȡ��ȫ����¼
      Iterator<Bizi>iter = all.iterator();
      %>
	  
	<div class="logo"> <img src="picture/system-picture/logo.jpg" width="205" height="59" >
    <h4 id="denlu">
    			<form action="Find.jsp" method="post" onchange="submit()">
    			<select name="type" >
    				<option value="ȫ��" >ȫ��</option>
    				<option value="��Ȼ" >��Ȼ</option>
    				<option value="����" >����</option>
    				<option value="����" >����</option>
    				<option value="��Ϸ" >��Ϸ</option>
    				<option value="����" >����</option>
    				<option value="����" >����</option>
    				<option value="Ӱ��" >Ӱ��</option>
    				<option value="����" >����</option>
    				<option value="�ǿ�" >�ǿ�</option>
    				<option value="����" >����</option>
    				<option value="Ψ��" >Ψ��</option>
    				<option value="����" >����</option>
    			</select>
    			<a onClick="fun('register.html')">ע��</a> 
    			<a onClick="fun('login.jsp')">��¼</a>
    			<a onClick="fun('oneupload.jsp')">�ϴ�</a>        </h4> </form>
    
    </div>
    
	<content>
	<%
	while(iter.hasNext()){
		Bizi bizi = iter.next();
		String id = bizi.getId();
		String style = bizi.getStyle();
		String s[] = style.split(",");
		String getid = id;
		String b = "ȫ��" ;
		if(b.equals(get)){
			/* response.sendRedirect("/Community.jsp"); 
			ServletContext sc = getServletContext();
			RequestDispatcher rd = null;   
			rd = sc.getRequestDispatcher("/Community.jsp"); //�����ҳ��   
			rd.forward(request, response);  */
			
			%>
			  <div class="bizicontent"><img src="./bizi/<%=id%>" width=100% onClick="submit()">
		      	&nbsp;<%= bizi.getTitle() %>
		      </div>
			 <%
		}else{
			for(int i =0; i<s.length;i++){
				String a = s[i];
				
				if(a.equals(get)){
					%>
					
					  <div class="bizicontent">
					  <form action="Bizi-imformation.jsp" method="post" onClick="submit()">
					  <img src="./bizi/<%=id%>" width=100% >		
				      &nbsp;<%= bizi.getTitle() %>
				      <input type="hidden" name="getid" value="<%=getid%>">
				      </form></div>
					 <%
				}
			}
		}
		
		
	} %>
	  </content>
</body>
</html>