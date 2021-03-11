<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Hello, World!</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="../images/hwicon.png" rel="icon">
<link href="../images/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">

<!-- vendor CSS Files -->
<link href="../mainVendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../mainVendor/icofont/icofont.min.css" rel="stylesheet">
<link href="../mainVendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="../mainVendor/venobox/venobox.css" rel="stylesheet">
<link href="../mainVendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="../mainVendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../css/mainStyle.css" rel="stylesheet">
<link href="../css/headerFooterStyle.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Ninestars - v2.3.1
  * Template URL: https://bootstrapmade.com/ninestars-free-bootstrap-3-theme-for-creative/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>
body{
  padding: 0px;
  margin : 0px;
}
.videocont{
  width: 100%;
  height: 700px;
  overflow : hidden;
  margin: 0px auto;
}
video{
  	width : 100%;
}
</style>
</head>
<%
	List<HashMap<String, String>> topList = (List<HashMap<String, String>>)request.getAttribute("topList");
	List<HashMap<String, String>> monthList = (List<HashMap<String, String>>)request.getAttribute("monthList");
	
%>
<body>
	<jsp:include page="../header/header_main.jsp"></jsp:include>
	<!-- ======= Hero Section ======= -->
	<section id="hero" class="d-flex align-items-center">

 		<div class="videocont">
			  <video autoplay loop muted>
			    <source src="../mp4/mainVideo.mp4">
			  </video>
		</div>

	</section>
	<!-- End Hero -->

	<main id="main"> <!-- ======= top10 Section ======= -->
	<section id="top10" class="clients section-bg">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<p>TOP10 여행지</p>
			</div>

			<div class="owl-carousel clients-carousel" data-aos="fade-up" data-aos-delay="10">
<%
			for(HashMap<String, String> map : topList){
%>
			<a href='../prod/SelectProd.do?prod_no=<%= String.valueOf(map.get("PROD_NO")) %>'><img src="../images/attraction/<%=map.get("ATTRACTION_PHOTO") %>" alt="img" title="<%=map.get("ATTRACTION_NAME")%>"></a>
<% 
			}
%>
			</div>

		</div>
	</section>
	<!-- End top10 Section --> <!-- ======= recommend Section ======= -->
	<section id="recommend" class="clients section-bg">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<p>이달의 여행지</p>
			</div>

			<div class="owl-carousel clients-carousel" data-aos="fade-up" data-aos-delay="10">
<%
			for(HashMap<String, String> map : monthList){
%>
			<a href='../prod/SelectProd.do?prod_no=<%= String.valueOf(map.get("PROD_NO")) %>'><img src="../images/attraction/<%=map.get("ATTRACTION_PHOTO") %>" alt="img" title="<%=map.get("ATTRACTION_NAME")%>"></a>
<% 
			}
%>
			</div>

		</div>
	</section>
	<!-- End recommend Section -->
	
	 <jsp:include page="../footer/footer.jsp"></jsp:include>
	</main>
	<!-- End #main -->



	<!-- vendor JS Files -->
	<script src="../mainVendor/jquery/jquery.min.js"></script>
	<script src="../mainVendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../mainVendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="../mainVendor/php-email-form/validate.js"></script>
	<script src="../mainVendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="../mainVendor/venobox/venobox.min.js"></script>
	<script src="../mainVendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="../mainVendor/aos/aos.js"></script>
	<script src="../js/sb-admin-2.min.js"></script>

	<!-- Template Main JS File -->
	<script src="../js/mainMain.js"></script>

</body>

</html>