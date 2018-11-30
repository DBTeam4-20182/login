<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import='DB.DB' %>
<%@ page import='Data.rentalData' %>
<%@ page import='java.util.ArrayList' %>

<script language='javascript'>
	function returnto(bid) {
		location.href = "./RentalReturn.jsp?flag=1&bid=" + bid;
	}
</script>

<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.8.8, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.8.8, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/title_logo.jpg" type="image/x-icon">
  <meta name="description" content="Website Builder Description">
  <title>myPage</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/datatables/data-tables.bootstrap4.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
<section class="menu cid-raFQyi5aXb" once="menu" id="menu2-s">
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="index.jsp">
                        <img src="assets/images/16-3-463x124.jpg" alt="Mobirise" title="" style="height: 3.8rem;">
                    </a>
                </span>
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">

            <div class="navbar-buttons mbr-section-btn">
                <a class="btn btn-sm btn-primary display-4" href="logoutPro.jsp">
                    <span class="mbri-users mbr-iconfont mbr-iconfont-btn"></span>
                    로그아웃</a></div>
        </div>
    </nav>
</section>

<section class="mbr-section content5 cid-raFZrLIv7I mbr-parallax-background" id="content5-x">



    <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(35, 35, 35);">
    </div>

    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-2">My page</h2>

            </div>
        </div>
    </div>
</section>

<section style="padding-top: 45px;padding-bottom: 0px; background-color: #ffffff">

    <div class="container">
        <h3 class="mbr-section-title mbr-fonts-style align-center pb-3">
            이용자 정보
        </h3>
        <div class="media-container-row">
            <div class="card p-3 col-8 col-md-8 col-lg-8">

                <div class="card-box">
                    </h4>
                    <!--p class="mbr-text mbr-fonts-style display-7">
                       Mobirise is an easy website builder - just drop site elements to your page, add content and style it to look the way you like.
                    </p-->
                    <table class="table table-user-information">
                        <tbody>
                        <tr>
                            <td>account</td>
                            <td><%=session.getAttribute("userID")%></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <!-- a태그 삭제해도 무방 -->
                            <td><a href="mailto:kdhong@knu.ac.kr">kdhong@knu.ac.kr</a></td>
                        </tr>
                        <tr>
                            <td>Phone Number</td>
                            <td>010-0000-0000
                        </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>

    </div>

</section>

<section style="padding-top: 45px;padding-bottom: 90px;background-color: #ffffff;" >
  <div class="container container-table">
      <h3 class="mbr-section-title mbr-fonts-style align-center pb-3">
          도서예약정보
      </h3>

      <div class="table-wrapper">

        <div class="container" style="max-width: 900px;">
          <table class="table isSearch" cellspacing="0" >
            <thead>
              <tr class="table-heads">
                  <th class="head-item mbr-fonts-style display-7 align-center">
                      순번
                  </th>
                  <th class="head-item mbr-fonts-style display-7 align-center">
                      도서명
                  </th>
                  <th class="head-item mbr-fonts-style display-7 align-center">
                  취소
                  </th>
              </tr>
            </thead>
			<tbody class="panel">
            <%
				DB db = new DB();
				ArrayList<rentalData> result = db.searchRental((String)session.getAttribute("userID"));
				
				if(result.size() > 0) {
					for(int i = 0; i < result.size(); i++) { 
						int cnt = i + 1;
						String bid = '"' + result.get(i).getbook_id() + '"';%>
						<tr data-toggle="collapse" data-target="#demo<%=i%>"
						data-parent="#resultTable">
						<td><%=cnt%></td>
						<td><%=result.get(i).getbook_name()%></td>
						<td><input type='button' value='반납' onclick='returnto(<%=bid%>)'></td>
					</tr>
					<%}
				}		
				%>
				</tbody>

          </table>
        </div>

      </div>
    </div>
    <%
    String msg=request.getParameter("msg");

    if(msg != null && msg.equals("returnsuccess") == true) {%>
    	<script>alert("정상적으로 취소 되었습니다.")</script>
    <%}
 	%>
</section>


  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/parallax/jarallax.min.js"></script>
  <script src="assets/datatables/jquery.data-tables.min.js"></script>
  <script src="assets/datatables/data-tables.bootstrap4.min.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
</body>
</html>
