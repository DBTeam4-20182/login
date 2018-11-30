<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="DB.DB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>login</title>
</head>
<body>
	<%
		//request.setCharacterEncoding("euc=kr"); 
		
		String id= request.getParameter("id");
	    String pw = request.getParameter("password");
	    
	    	DB db = new DB();
		int success = db.login(id, pw);
		
		String msg = "";
		
		if(success == 1) {
			session.setAttribute("userID", id);
			msg = "./index.jsp";
		}
		else {
			msg = "./login.jsp?msg=error";
		}
		
		response.sendRedirect(msg);
	%>
</body>
</html>
