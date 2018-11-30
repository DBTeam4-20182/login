<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<html>

<script language='javascript'>
	function main() {
		location.href = "http://localhost:8080/DB_Project/index.html";
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
    	    alert("이름을 입력하세요");    
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
<!-- Site made with Mobirise Website Builder v4.8.7, https://mobirise.com -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="Mobirise v4.8.7, mobirise.com">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1">
<link rel="shortcut icon" href="assets/images/16-3-463x124.jpg"
	type="image/x-icon">
<meta name="description" content="">
<title>Home</title>
<link rel="stylesheet"
	href="assets/web/assets/mobirise-icons/mobirise-icons.css">
<link rel="stylesheet" href="assets/tether/tether.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/bootstrap/css/bootstrap-grid.min.css">
<link rel="stylesheet"
	href="assets/bootstrap/css/bootstrap-reboot.min.css">
<link rel="stylesheet" href="assets/dropdown/css/style.css">
<link rel="stylesheet" href="assets/socicon/css/styles.css">
<link rel="stylesheet" href="assets/theme/css/style.css">
<link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css"
	type="text/css">


</head>
<body>
	<section class="menu cid-raFTFy3Zrx" once="menu" id="menu2-t">
		<nav
			class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<div class="hamburger">
					<span></span> <span></span> <span></span> <span></span>
				</div>
			</button>
			<div class="menu-logo">
				<div class="navbar-brand">
					<span class="navbar-logo"> <a href="http://www.knu.ac.kr">
							<img src="assets/images/16-3-463x124.jpg" alt="Mobirise" title=""
							style="height: 3.8rem;">
					</a>
					</span>

				</div>
			</div>
		</nav>
	</section>

	<section class="emgine">
		<a href="https://mobirise.info/t">amp template</a>
	</section>
	<section class="cid-r9EOYQMr4N mbr-parallax-background" id="header15-8">
		<div class="mbr-overlay"
			style="opacity: 0.5; background-color: rgb(7, 59, 76);"></div>

		<div class="container align-center">
			<div class="row">
				<div class="mbr-white col-lg-12 col-md-11 center-block">
					<h1
						class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">
						경북대학교 도서관</h1>
					<p class="mbr-text pb-3 mbr-fonts-style display-5">
						KNU Library Service<br>꿈을 클릭하고 미래를 터치하는<br>경북대학교 도서관에 오신
						것을 환영합니다
					</p>
				</div>
			</div>
		</div>
		<div class="mbr-arrow hidden-sm-down" aria-hidden="true">
			<a href="#next"> <i class="mbri-down mbr-iconfont"></i>
			</a>
		</div>
	</section>
	<section>
		<div id="wrap">
			<form name="RegisterInfo" method="post" action="./registerPro.jsp"
				onsubmit="return checkValue()">
				<br>
				<br>
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
				<br> <input type="submit" value="회원가입" /> <input type="button"
					value="메인으로" onclick="main()" />
			</form>
			<%
 
    String msg=request.getParameter("msg");

    if(msg != null && msg.equals("error") == true) {%>
			<script>alert("이미 있는 ID입니다.")</script>
			<%}%>
		</div>
	</section>
	<script src="assets/web/assets/jquery/jquery.min.js"></script>
	<script src="assets/popper/popper.min.js"></script>
	<script src="assets/tether/tether.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/smoothscroll/smooth-scroll.js"></script>
	<script src="assets/dropdown/js/script.min.js"></script>
	<script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
	<script src="assets/parallax/jarallax.min.js"></script>
	<script src="assets/theme/js/script.js"></script>
	<script src="assets/formoid/formoid.min.js"></script>


</body>
</html>