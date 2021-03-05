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
<style type="text/css">
#ensign-nivoslider {
	height :750px;
	
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
%>
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
	<!-- End About Section --> <!-- ======= Services Section ======= -->
	<div id="services" class="services-area area-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline services-head text-center">
						<h2>Review</h2><br>
						<h2>리뷰 게시판 와야함</h2>
					</div>
				</div>
			</div>
			<div class="row text-center">
				<!-- Start Left services -->
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="about-move">
						<div class="services-details">
							<div class="single-services">
								<a class="services-icon" href="#"> <i class="fa fa-code"></i>
								</a>
								<h4>Expert Coder</h4>
								<p>will have to make sure the prototype looks finished by
									inserting text or photo.make sure the prototype looks finished
									by.</p>
							</div>
						</div>
						<!-- end about-details -->
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="about-move">
						<div class="services-details">
							<div class="single-services">
								<a class="services-icon" href="#"> <i
									class="fa fa-camera-retro"></i>
								</a>
								<h4>Creative Designer</h4>
								<p>will have to make sure the prototype looks finished by
									inserting text or photo.make sure the prototype looks finished
									by.</p>
							</div>
						</div>
						<!-- end about-details -->
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<!-- end col-md-4 -->
					<div class=" about-move">
						<div class="services-details">
							<div class="single-services">
								<a class="services-icon" href="#"> <i
									class="fa fa-wordpress"></i>
								</a>
								<h4>Wordpress Developer</h4>
								<p>will have to make sure the prototype looks finished by
									inserting text or photo.make sure the prototype looks finished
									by.</p>
							</div>
						</div>
						<!-- end about-details -->
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-12">
					<!-- end col-md-4 -->
					<div class=" about-move">
						<div class="services-details">
							<div class="single-services">
								<a class="services-icon" href="#"> <i
									class="fa fa-camera-retro"></i>
								</a>
								<h4>Social Marketer</h4>
								<p>will have to make sure the prototype looks finished by
									inserting text or photo.make sure the prototype looks finished
									by.</p>
							</div>
						</div>
						<!-- end about-details -->
					</div>
				</div>
				<!-- End Left services -->
				<div class="col-md-4 col-sm-4 col-xs-12">
					<!-- end col-md-4 -->
					<div class=" about-move">
						<div class="services-details">
							<div class="single-services">
								<a class="services-icon" href="#"> <i
									class="fa fa-bar-chart"></i>
								</a>
								<h4>Seo Expart</h4>
								<p>will have to make sure the prototype looks finished by
									inserting text or photo.make sure the prototype looks finished
									by.</p>
							</div>
						</div>
						<!-- end about-details -->
					</div>
				</div>
				<!-- End Left services -->
				<div class="col-md-4 col-sm-4 col-xs-12">
					<!-- end col-md-4 -->
					<div class=" about-move">
						<div class="services-details">
							<div class="single-services">
								<a class="services-icon" href="#"> <i class="fa fa-ticket"></i>
								</a>
								<h4>24/7 Support</h4>
								<p>will have to make sure the prototype looks finished by
									inserting text or photo.make sure the prototype looks finished
									by.</p>
							</div>
						</div>
						<!-- end about-details -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Services Section --> 
	
	<!-- ======= Team Section ======= -->
	<div id="team" class="our-team-area area-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-headline text-center">
						<h2>Q & A</h2><br>
						<h2>Q & A 게시판 와야 함</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="single-team-member">
						<div class="team-img">
							<a href="#"> <img src="../prodImages/team/1.jpg" alt="">
							</a>
							<div class="team-social-icon text-center">
								<ul>
									<li><a href="#"> <i class="fa fa-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-twitter"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-instagram"></i>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="team-content text-center">
							<h4>Jhon Mickel</h4>
							<p>Seo</p>
						</div>
					</div>
				</div>
				<!-- End column -->
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="single-team-member">
						<div class="team-img">
							<a href="#"> <img src="../prodImages/team/2.jpg" alt="">
							</a>
							<div class="team-social-icon text-center">
								<ul>
									<li><a href="#"> <i class="fa fa-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-twitter"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-instagram"></i>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="team-content text-center">
							<h4>Andrew Arnold</h4>
							<p>Web Developer</p>
						</div>
					</div>
				</div>
				<!-- End column -->
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="single-team-member">
						<div class="team-img">
							<a href="#"> <img src="../prodImages/team/3.jpg" alt="">
							</a>
							<div class="team-social-icon text-center">
								<ul>
									<li><a href="#"> <i class="fa fa-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-twitter"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-instagram"></i>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="team-content text-center">
							<h4>Lellien Linda</h4>
							<p>Web Design</p>
						</div>
					</div>
				</div>
				<!-- End column -->
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="single-team-member">
						<div class="team-img">
							<a href="#"> <img src="../prodImages/team/4.jpg" alt="">
							</a>
							<div class="team-social-icon text-center">
								<ul>
									<li><a href="#"> <i class="fa fa-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-twitter"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-instagram"></i>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="team-content text-center">
							<h4>Jhon Powel</h4>
							<p>Seo Expert</p>
						</div>
					</div>
				</div>
				<!-- End column -->
			</div>
		</div>
	</div>
	<!-- End Team Section -->
	
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
					        <a href="#">★</a>
<%	
}
	for(int i = 0; i <= 5 - guideVo.getGuide_rating() - 1; i++){
%>
					        <a href="#">☆</a>
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