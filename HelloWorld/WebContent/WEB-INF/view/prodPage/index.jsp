<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="kr.or.ddit.vo.GuideVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.Prod_insertVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>상품 상세</title>
<meta content="" name="description">
<meta content="" name="keywords">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicons -->
<link href="../prodImages/hwicon.png" rel="icon">
<link href="../prodImages/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../prodVendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../prodVendor/icofont/icofont.min.css" rel="stylesheet">
<link href="../prodVendor/animate.css/animate.min.css" rel="stylesheet">
<link href="../prodVendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="../prodVendor/nivo-slider/css/nivo-slider.css"
	rel="stylesheet">
<link href="../prodVendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="../prodVendor/venobox/venobox.css" rel="stylesheet">
<link href="../mainVendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../css/mainStyle.css" rel="stylesheet">
<link href="../css/headerFooterStyle.css" rel="stylesheet">
<link href="../css/prodStyle.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>

<style type="text/css">
#ensign-nivoslider {
	height :800px;
	
}
.contact-inner .col-md-6{
	text-align: right;
}
.contact-inner .col-md-6 img{
	margin-right: 35px;
	border-radius : 25px;
	border: 1px solid lightgray;
}
.guideForm{
	text-align: left;
}

.rating{
	color : #4169E1;
}
.accordion {
  color: #444;
  cursor: pointer;
  padding: 18px;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #ccc; 
}

.panel {
  padding: 0 18px;
  display: none;
  background-color: white;
  overflow: hidden;
}
table {
width :1140px;
}

table tr:last-chlid td{
	width :100%;
}

</style>
<!-- =======================================================
  * Template Name: eBusiness - v2.2.1
  * Template URL: https://bootstrapmade.com/ebusiness-bootstrap-corporate-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<%
	List<Prod_insertVO> list = (List<Prod_insertVO>)request.getAttribute("Prod_insertVo");
	String detail = list.get(0).getProd_details().replaceAll("\r", "").replaceAll("\n", "<br>");
	GuideVO guideVo = (GuideVO)request.getAttribute("GuideVo");
	List<HashMap<String, Object>> reList = (List<HashMap<String, Object>>)request.getAttribute("reList");
	List<HashMap<String, Object>> phList = (List<HashMap<String, Object>>)request.getAttribute("phList");
	int authority = Integer.parseInt(String.valueOf(request.getSession().getAttribute("authority")));
	int wishCnt = Integer.parseInt(String.valueOf(request.getAttribute("wishCnt")));
%>
<script>
$(function(){
	var acc = document.getElementsByClassName("accordion");
	var i;
	
	for (i = 0; i < acc.length; i++) {
	  acc[i].addEventListener("click", function() {
	    this.classList.toggle("active");
	    var panel = this.nextElementSibling;
	    if (panel.style.display === "revert") {
	      panel.style.display = "none";
	    } else {
	      panel.style.display = "revert";
	    }
	  });
	}
})
</script>
</head>

<body data-spy="scroll" data-target="#navbar-example">

	<jsp:include page="../header/header_prod.jsp"></jsp:include>

	<!-- ======= Slider Section ======= -->
	<div id="home" class="slider-area">
		<div class="bend niceties preview-2">
			<div id="ensign-nivoslider" class="slides">
<%
	for(Prod_insertVO vo : list){
%>
				<img src="../images/attraction/<%=vo.getAttraction_photo() %>" alt="사진" title="#slider-direction-1" />
<%
	}
%>
			</div>
		</div>
	</div>
	<!-- End Slider -->
	<br>

	<main id="main"> <!-- ======= About Section ======= -->
	<div id="about" class="about-area area-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h2><%= list.get(0).getProd_name() %></h2>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- single-well start-->
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="well-left">
						<div class="single-well">
							<a href="#"> <img src="../images/attraction/<%=list.get(0).getAttraction_photo() %>" alt="사진">
							</a>
						</div>
					</div>
				</div>
				<!-- single-well end-->
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="well-middle">
						<div class="single-well">
							<a href="#">
								<h4 class="sec-head"><%= list.get(0).getProd_outline() %></h4>
							</a>
							<p><%= detail %></p>
							<ul>
								<li><i class="fa fa-check"></i> 가격 : <%=list.get(0).getProd_price() %></li>
								<li><i class="fa fa-check"></i> 여행 날짜 : <%=list.get(0).getProd_travel_date() %></li>
								<li><i class="fa fa-check"></i> 최대 인원 : <%=list.get(0).getProd_travel_max()%> </li>
								<li>❤ <%=wishCnt%> </li>
								<hr>
								<h6>여행지</h6>
<%
		for(Prod_insertVO vo : list){
%>
								<li><i class="fa fa-check"></i> <%= vo.getAttraction_name() %></li>
<%
		}
%>
							</ul>
						</div>
					</div>
				</div>
				<!-- End col-->
			</div>
		</div>
	</div>
	<!-- End About Section -->
	<hr>
	 <!-- ======= Services Section ======= -->
	<div id="services" class="services-area area-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline services-head text-center">
						<h2>Review</h2><br><br><br>
					</div>
				</div>
			</div>
			<div class="row text-center">
			  <!-- REVIEW_NO | MEMBER_ID | REVIEW_SCORE | REVIEW_CONTENT | REVIEW_DATE -->
			  <table class="table table-hover">
			    <thead>
			      <tr>
			        <th>번호</th>
			        <th>회원 ID</th>
			        <th>별점</th>
			        <th>내용</th>
			        <th>작성 날짜</th>
			      </tr>
			    </thead>
			    <tbody>
<%
	for(HashMap<String, Object> map : reList){
%>
			      <tr>
			        <td><%=String.valueOf(map.get("REVIEW_NO")) %></td>
			        <td><%=map.get("MEMBER_ID") %></td>
			        <td>
<%	for(int i = 0; i <= Integer.parseInt(String.valueOf(map.get("REVIEW_SCORE"))) - 1; i++){
		
%>
					        <span class="rating">★</span>
<%	
}
	for(int i = 0; i <= 4 - Integer.parseInt(String.valueOf(map.get("REVIEW_SCORE"))); i++){
%>
					        <span class="rating">☆</span>
<%				    
	}
%>			        
			        </td>
			        <td><%=map.get("REVIEW_CONTENT") %></td>
			        <td><%=map.get("REVIEW_DATE") %></td>
			      </tr>
<%
	}
%>				
			    </tbody>
			  </table>
				
			</div>
		</div>
	</div>
	<!-- End Services Section --> 
	<hr>
	<!-- ======= Team Section ======= -->
	<div id="team" class="our-team-area area-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h2>Q & A</h2><br><br>
					</div>
				</div>
			</div>
			<div class="row">
			  <!-- p_help_no | member_id | (만약 비밀이면 임티 - p_help_private)p_help_title | p_help_date | p_help_state -->
			  <table class="table table-hover">
			    <thead>
			      <tr>
			        <th>번호</th>
			        <th>회원 ID</th>		  
			        <th>제목</th>
			        <th>작성 날짜</th>
			        <th>상태</th>
			      </tr>
			    </thead>
			    <tbody>
<%
	HashMap hash = new HashMap();

	// 1. 상품주인 no와 작성자 memberNo를 변수에 담는다.
	int ownerNo =guideVo.getGuide_no();//상품주인
	// 2. 로그인한 memberNo 혹은 guideNo 변수를 담는다.
	GuideVO login_guide = null;
	MemberVO login_member = null;
	if(authority == 1) {
		login_guide = (GuideVO)request.getSession().getAttribute("loginVo");
	}else {
		login_member = (MemberVO)request.getSession().getAttribute("loginVo");
	}
	
	// 3. 출력 시 서로 비교해준다.
		
	// 4. 같지 않을 경우 비밀글의 경우 readonly로 바꿔준다.
	
	for(HashMap<String, Object> phMap : phList){
		
		
		
		
		System.out.println("이부분인가?!"+phMap.get("MEMBER_NO"));
		if(Integer.parseInt(String.valueOf(phMap.get("P_HELP_PRIVATE"))) == 1){
			// 비밀글일 때 비교 시작
			if(Integer.parseInt(String.valueOf(phMap.get("MEMBER_NO"))) == login_member.getMember_no()){
%>
			      <tr class="accordion" >
<%
			}else{
%>
				  <tr>
<%	
			}
		}else{
%>
			      <tr class="accordion" >
<%
		}
%>
			        <td><%=phMap.get("P_HELP_NO") %></td>
			        <td><%=phMap.get("MEMBER_ID") %></td> 
			        <td>
			        <%=phMap.get("P_HELP_TITLE") %>
<%			      
		if(Integer.parseInt(String.valueOf(phMap.get("P_HELP_PRIVATE"))) == 1){
%>
			🔒
<%
		}
%>			        </td>
			        <td><%=phMap.get("P_HELP_DATE") %></td>
			        <td>
<%
		if(Integer.parseInt(String.valueOf(phMap.get("P_HELP_STATE"))) == 2){
%>
			        <%= "답변완료" %>
<%
		}else if(Integer.parseInt(String.valueOf(phMap.get("P_HELP_STATE"))) == 0){
%>			
					<%= "미답변" %>
<%
		}
%>
				  </td></tr>
				  <tr class="panel">
				    <td colspan="5"><%=phMap.get("P_HELP_CONTENT") %>
<%
		if(Integer.parseInt(String.valueOf(phMap.get("P_HELP_STATE"))) == 2){
%>
				  <hr>
				   <%=phMap.get("P_HELP_ANSWER") %>
<%
		}
%>
				  </td>
				</tr>
<%
	}
%>
			    </tbody>
			  </table>			
			</div>
		</div>
	</div>
	<!-- End Team Section -->
	<hr>
	<!-- ======= Contact Section ======= -->
	<div id="contact" class="contact-area">
		<div class="contact-inner area-padding">
			<div class="contact-overly"></div>
			<div class="container ">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="section-headline text-center">
							<h2>Guide</h2>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<!-- guide img -->
						<img src="../images/guide/<%= guideVo.getGuide_photo() %>"	width="60%" height="380"></img>
						<!-- guide img -->
					</div>

					<!-- Start  contact -->
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="form contact-form guideForm">
						  <h4>Guide Name</h4>
						  <hr>
						  <h5><%= guideVo.getGuide_name() %></h5>
						  <br><hr>
						  <h4>Guide ID</h4><hr>
						  <h5><%= guideVo.getGuide_id() %></h5>
						  <br><hr>
						  <h4>Guide StarRating</h4><hr>
						  <p id="star_grade">
<%	for(int i = 0; i <= guideVo.getGuide_rating() - 1; i++){
%>
					        <span class="rating">★</span>
<%	
}
	for(int i = 0; i <= 5 - guideVo.getGuide_rating() - 1; i++){
%>
					        <span class="rating">☆</span>
<%				    
	}
%>
<!-- 					        <a href="#">★</a> -->
<!-- 					        <a href="#">★</a> -->
<!-- 					        <a href="#">★</a> -->
<!-- 					        <a href="#">★</a> -->
						  </p>
						</div>
					</div>
					<!-- End Left contact -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact Section --> </main>
	<!-- End #main -->

	<jsp:include page="../footer/footer.jsp"></jsp:include>

	<!-- Vendor JS Files -->
	<script src="../prodVendor/jquery/jquery.min.js"></script>
	<script src="../prodVendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../prodVendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="../prodVendor/php-email-form/validate.js"></script>
	<script src="../prodVendor/appear/jquery.appear.js"></script>
	<script src="../prodVendor/knob/jquery.knob.js"></script>
	<script src="../prodVendor/parallax/parallax.js"></script>
	<script src="../prodVendor/wow/wow.min.js"></script>
	<script src="../prodVendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="../prodVendor/nivo-slider/js/jquery.nivo.slider.js"></script>
	<script src="../prodVendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="../prodVendor/venobox/venobox.min.js"></script>

	<!-- Template Main JS File -->
	<script src="../js/prodMain.js"></script>

</body>

</html>