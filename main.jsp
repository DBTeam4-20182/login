<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script language='javascript'>
	function login() {
		location.href = "http://localhost:8080/DB_Project/login.jsp";
	}
	function register() {
		location.href = "http://localhost:8080/DB_Project/register.jsp";
	}
	function logout() {
		location.href = "http://localhost:8080/DB_Project/logoutPro.jsp";
	}
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>main</title>
</head>
<body>
	<form>
	<% if(session.getAttribute("sessionID") == null) {%>
		<input type='button' value='�α���' onclick='login()'> 
		<input type='button' value='ȸ������' onclick='legister()'>
	<%} 
	else {%>
	<h2>
	 <font color="red"><%=session.getAttribute("sessionID") %></font>
        �� �α��εǾ����ϴ�.
	</h2>
	<br>
    <input type="button" value="�α׾ƿ�" onclick="logout()" />
    <%} %>    
	</form>
</body>
</html>