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
    	    alert("���̵� �Է��ϼ���");    
        	inputForm.id.focus();
       	 	return false;
   		}
    	if(!inputForm.password.value) {
        	alert("��й�ȣ�� �Է��ϼ���");    
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
                    <td bgcolor="skyblue">���̵�</td>
                    <td><input type="text" name="id" maxlength="20"></td>
                </tr>
                <tr>
                    <td bgcolor="skyblue">��й�ȣ</td>
                    <td><input type="password" name="password" maxlength="20"></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="�α���"/>
            <input type="button" value="ȸ������" onclick="register()" />
    </form>
  	<%
    String msg=request.getParameter("msg");

    if(msg != null && msg.equals("error") == true) {%>
    	<script>alert("id�� ��й�ȣ�� Ȯ�����ּ���")</script>
    <%}%>
	</div>	
</body>
</html>