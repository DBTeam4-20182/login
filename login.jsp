<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
  <%
        request.setCharacterEncoding("euc-kr"); 
  %>
<script language='javascript'>
	function checkValue()
	{
    	inputForm = eval("document.LoginInfo");
	    if(!inputForm.id.value) {
    	    alert("아이디를 입력하세요");    
        	inputForm.id.focus();
       	 	return false;
   		}
    	if(!inputForm.password.value) {
        	alert("비밀번호를 입력하세요");    
        	inputForm.password.focus();
        	return false;
    	}
	}
	function register() {
		location.href = "http://localhost:8080/DB_Project/register.jsp";
	}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
	<form name="loginInfo" method="post" action="./loginPro.jsp" 
                onsubmit="return checkValue()">
            <br><br>           
            <table>
                <tr>
                    <td bgcolor="skyblue">아이디</td>
                    <td><input type="text" name="id" maxlength="20"></td>
                </tr>
                <tr>
                    <td bgcolor="skyblue">비밀번호</td>
                    <td><input type="password" name="password" maxlength="20"></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="로그인"/>
            <input type="button" value="회원가입" onclick="register()" />
    </form>
  	<%
    String msg=request.getParameter("msg");

    if(msg != null && msg.equals("error") == true) {%>
    	<script>alert("id나 비밀번호를 확인해주세요")</script>
    <%}%>
	</div>	
</body>
</html>