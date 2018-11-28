<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script language='javascript'>
	function main() {
		location.href = "http://localhost:8080/DB_Project/main.jsp";
	}
	function checkValue()
	{
    	inputForm = eval("document.RegisterInfo");
	    if(!inputForm.id.value) {
    	    alert("아이디를 입력하세요");    
        	inputForm.id.focus();
       	 	return false;
   		}
	    if(!inputForm.name.value) {
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
</script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
	<form name="RegisterInfo" method="post" action="./registerPro.jsp" 
                onsubmit="return checkValue()">
            <br><br>           
            <table>
                <tr>
                    <td bgcolor="skyblue">아이디</td>
                    <td><input type="text" name="id" maxlength="20"></td>
                </tr>
                <tr>
                    <td bgcolor="skyblue">이름</td>
                    <td><input type="text" name="name" maxlength="20"></td>
                </tr>
                <tr>
                    <td bgcolor="skyblue">비밀번호</td>
                    <td><input type="password" name="password" maxlength="20"></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="회원가입"/>
            <input type="button" value="메인으로" onclick="main()" />
    </form>
    <%
 
    String msg=request.getParameter("msg");

    if(msg != null && msg.equals("error") == true) {%>
    	<script>alert("이미 있는 ID입니다.")</script>
    <%}%>
   	</div>
</body>
</html>