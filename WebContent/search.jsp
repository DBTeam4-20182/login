<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
 <%@ page import='DB.DB_conn' %>	
 <%@ page language="java" import="java.sql.*"  %>
 <%
 
    request.setCharacterEncoding("UTF-8");
 
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="Mobirise v4.8.7, mobirise.com">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1">
<link rel="shortcut icon" href="assets/images/16-3-463x124.jpg"
	type="image/x-icon">
<meta name="description" content="Web Page Builder Description">
<title>search</title>
<link rel="stylesheet"
	href="assets/web/assets/mobirise-icons/mobirise-icons.css">
<link rel="stylesheet" href="assets/tether/tether.min.css">
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/bootstrap/css/bootstrap-grid.min.css">
<link rel="stylesheet"
	href="assets/bootstrap/css/bootstrap-reboot.min.css">
<link rel="stylesheet"
	href="assets/datatables/data-tables.bootstrap4.min.css">
<link rel="stylesheet" href="assets/dropdown/css/style.css">
<link rel="stylesheet" href="assets/theme/css/style.css">
<link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css"
	type="text/css">
<title>Insert title here</title>
</head>
<body>
	<section class="menu cid-r9ELV3hTIq" once="menu" id="menu2-b">

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
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
					<li class="nav-item"><a
						class="nav-link link text-black display-4"
						href="https://mobirise.co"> Services </a></li>
					<li class="nav-item"><a
						class="nav-link link text-black display-4"
						href="https://mobirise.co"> About Us </a></li>
				</ul>
				<div class="navbar-buttons mbr-section-btn">
					<a class="btn btn-sm btn-primary display-4"
						href="tel:+1-234-567-8901"> <span
						class="btn-icon mbri-mobile mbr-iconfont mbr-iconfont-btn">
					</span> +1-234-567-8901
					</a>
				</div>
			</div>
		</nav>
	</section>

	<section class="engine">
		<a href="https://mobirise.info/g">build your own site for free</a>
	</section>
	<section
		class="mbr-section content5 cid-r9KxNNR91J mbr-parallax-background"
		id="content5-g">



		<div class="mbr-overlay"
			style="opacity: 0.6; background-color: rgb(35, 35, 35);"></div>

		<div class="container">
			<div class="media-container-row">
				<div class="title col-12 col-md-8">
					<h2
						class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-2">검색
						결과</h2>



				</div>
			</div>
		</div>
	</section>
	<section class="mbr-section form3 cid-r9ESfQ4DRl"
		style="padding-top: 30px; padding-bottom: 30px">
		<div class="container">
			<form action="search.jsp" method="post">
			<div class="row py-2 justify-content-center">
				<div class="col-12 col-sm-8 col-lg-9" data-form-type="formoid">
						<div class="mbr-subscribe input-group">
							<div class="dropdown" style="padding-right: 0px">
							<select name="filter">
                            	<option value="1">도서명</option>
                            	<option value="2">저자</option>
                            	<option value="3">출판사</option>
                            </select>
							</div>
							<!--이 input form에 입력한 값을 받아와서 검색으로 사용할 수 있습니다. 옆은 버튼입니다. -->
							<input class="form-control" type="text" name="name" placeholder="소장자료 검색">
                        	<input type="submit"><span class="input-group-btn"><button href="" type="submit" class="btn btn-primary display-4">검색</button></span>
						</div>
				</div>
			</div>
			</form>
		</div>
	</section>
	<!--게시판 테이블 출력 부분-->
	<section class="mbr-section form3 cid-r9ESfQ4DRl"
		style="padding-top: 0px">

		<div class="container scroll">
			<table class="table table-hover" cellspacing="0" id="resultTable">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>저자</th>
						<th>출판년도</th>
						<th>위치</th>
						<th>재고</th>
					</tr>
				</thead>
				<tbody class="panel">
					<!--//실제 출력될 데이터 목록 입니다. <td></td> 사이에 목록 순서대로 입력하면되요-->
					<!--  <tr data-toggle="collapse" data-target="#demo1"
						data-parent="#resultTable">
						<td>1</td>
						<td>데이터베이스</td>
						<td>박영철</td>
						<td>2018</td>
						<td>가-2-100.51</td>
						<td>2</td>
					</tr>
					
					<tr id="demo1" class="collapse">
						<td colspan="6" class="hiddenRow">
							<div>경북대학교 컴퓨터학부의 박영철 교수님의 명강의를 요약한 책</div>
						</td>
					</tr>
					
					<tr>
						<td>2</td>
						<td>데이터베이스</td>
						<td>박영철</td>
						<td>2018</td>
						<td>가-2-100.51</td>
						<td>2</td>
					</tr>
					-->
<%
String url = "jdbc:oracle:thin:@localhost:1521:oraknu";
String user = "project";
String pass = "project";
Connection conn = null;
String sql = null;
ResultSet rs;
PreparedStatement pstmt = null;

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	//System.out.println("드라이버 검색 성공!");
} 
catch (ClassNotFoundException e) {
	System.err.println("error = " + e.getMessage());
	System.exit(1);
}
try {
	conn = DriverManager.getConnection(url, user, pass);
} 
catch (SQLException e) {
	System.err.println("sql error = " + e.getMessage());
	System.exit(1);
}

try {
conn.setAutoCommit(false);

Statement stmt = conn.createStatement();
request.setCharacterEncoding("utf-8");

int counter = 0;

String name = request.getParameter("name");
String filter = request.getParameter("filter");
System.out.println(name);
System.out.println(filter);

//sql = "select * from emp";

if(filter.equals("1") )
{
	sql = "select b.book_name, b.author, b.publisher, b.publication_year,b.contents,  l.location_name,b.stock, a.appendix_type, a.name from ((select book_name, contents,author, publisher, stock,publication_year, location_id, appendix_id from book where book_name LIKE '%" + name + "%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id";
}
else if(filter.equals("2"))
{
	sql = "select b.book_name, b.author, b.publisher, b.publication_year,b.contents, l.location_name, b.stock, a.appendix_type, a.name from ((select book_name, contents,author, publisher, stock, publication_year,location_id, appendix_id from book where author LIKE '%" + name + "%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id";
}
else if(filter.equals("3"))
{
	sql = "select b.book_name, b.author, b.publisher, b.publication_year,b.contents, l.location_name, b.stock, a.appendix_type, a.name from ((select book_name, contents,author, publisher, stock, publication_year,location_id, appendix_id from book where publisher LIKE '%" + name + "%')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id";
}
//sql = select b.book_name, b.author, b.publisher, b.stock, l.location_name, a.appendix_type, a.name
//from ((select book_name, author, publisher, stock, location_id, appendix_id from book where author='기욤 뮈소')b left outer join location l on b.location_id=l.location_id) left outer join appendix a on b.appendix_id=a.appendix_id;

//result = stmt.executeUpdate(sql);
pstmt = conn.prepareStatement(sql);
rs = pstmt.executeQuery();

while(rs.next())
{
	counter++;
	String book_name = rs.getString("book_name");
	String author = rs.getString("author");
	String publisher = rs.getString("publisher");
	String publication_year = rs.getString("publication_year");
	String contents = rs.getString("contents");
	String location_name = rs.getString("location_name");
	String stock = rs.getString("stock");
	String appendix_type = rs.getString("appendix_type");
	String appendix_name = rs.getString("name");
%>
					<tr data-toggle="collapse" data-target="#demo<%=counter%>"
						data-parent="#resultTable">
						<td><%=counter%></td>
						<td><%=book_name%></td>
						<td><%=author%></td>
						<td><%=publication_year%></td>
						<td><%=location_name%></td>
						<td><%=stock%></td>
						<td><input type='button' name='value'></td>
					</tr>
					<tr id="demo<%=counter%>" class="collapse">
						<td colspan="6" class="hiddenRow">
							<div>책 추가 정보<br>출판사 : <%=publisher%>
							<br>책 소개 : <%=contents%>
							<br>부록 종류 : <%=appendix_type%>
							<br>부록 이름 : <%=appendix_name%></div>
						</td>
					</tr>
<%	
}
conn.commit();
conn.setAutoCommit(true);
stmt.close();
conn.close();
} catch (Exception e) {
System.err.println("sql error = " + e.getMessage());
}
%>
				</tbody>
			</table>
		</div>

	</section>


	<script src="assets/web/assets/jquery/jquery.min.js"></script>
	<script src="assets/popper/popper.min.js"></script>
	<script src="assets/tether/tether.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/smoothscroll/smooth-scroll.js"></script>
	<script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
	<script src="assets/parallax/jarallax.min.js"></script>
	<script src="assets/mbr-switch-arrow/mbr-switch-arrow.js"></script>
	<script src="assets/datatables/jquery.data-tables.min.js"></script>
	<script src="assets/datatables/data-tables.bootstrap4.min.js"></script>
	<script src="assets/dropdown/js/script.min.js"></script>
	<script src="assets/theme/js/script.js"></script>


</body>
</html>