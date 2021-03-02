<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>상품 목록</title>
<meta content="" name="description">
<meta content="" name="keywords">
<script src="../js/jquery-3.5.1.min.js"></script>
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
<style type="text/css">
#empty-space{
	widt: 100%;
	height : 150px;
}
#region-list{
	width: 100%;
	height: 80vh;
	
}
</style>
<script type="text/javascript">
$(function(){
	$('.list-group-item').on('click', function(){
		vtext = $(this).text().trim();
		$('#area-sub').html(vtext);
		
		
	});
	
	
	
})

</script>
</head>

<body>
	<jsp:include page="../header/header_main.jsp"></jsp:include>

	<section id="region-list" class="clients section-bg">
	<div id="empty-space">
	</div>
	<div class="container-fluid text-center">    
  	  <div class="row content">
    	<div class="col-sm-2 sidenav1">
    	  <br>
		  <div class="list-group">
		    <a href="#" class="list-group-item active">전체 지역</a>
		    <a href="#" class="list-group-item">강원도</a>
		    <a href="#" class="list-group-item">경기도</a>
		    <a href="#" class="list-group-item">충청북도</a>
		    <a href="#" class="list-group-item">충청남도</a>
		    <a href="#" class="list-group-item">경상북도</a>
		    <a href="#" class="list-group-item">경상남도</a>
		    <a href="#" class="list-group-item">전라북도</a>
		    <a href="#" class="list-group-item">전라남도</a>
		    <a href="#" class="list-group-item">제주도</a>
		    <a href="#" class="list-group-item">울릉도 & 독도</a>
		  </div>
		
    	</div>
  	    <br>
        <div class="col-sm-8 text-left"> 
        <br>
        <h3 id = "area-sub">전체 지역</h3>
        <br>
        <div id="result"></div>
        </div>
      <div class="col-sm-2 sidenav2">
      </div>
  </div>
</div>	  


	</section>
	
	<jsp:include page="../footer/footer.jsp"></jsp:include>

	<!-- Template Main JS File -->

</body>

</html>