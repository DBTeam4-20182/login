<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="DB.DB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>register</title>
</head>
<body>
	<%
		//request.setCharacterEncoding("euc=kr"); 
		
		String id= request.getParameter("id");
		String name = request.getParameter("name");
	    String pw = request.getParameter("password");
	    
		DB db = new DB();
		int success = db.register(id, name, pw);
		
		String msg = "";
		
		if(success == 1) {
			msg = "./login.jsp?";
		}
		else {
			msg = "./register.jsp?msg=error";	
		}
		
		response.sendRedirect(msg);
	%>
</body>
</html>
