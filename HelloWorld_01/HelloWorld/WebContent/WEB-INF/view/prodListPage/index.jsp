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
<script src="../js/prodList.js"></script>
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
	width: 100%;
	height : 150px;
}
#region-list{
	width: 100%;
	height: 180vh;
	
}
.prod-img{
  position: relative;
  max-width : 100%;
}
.single-prod{
  width : 100%;
}
.prod-img img{
  width : 100%;
  height : 260px;
}
.single-prod a{
  display : inline-block;
  color : black;
}
.list-group-item{
  font-size: 0.8em;
}
.prodNone{
  text-align: center;
}
#area-sub{
  font-size: 1.8em;
}
#prodInsert{
  float : right;
  border-radius: 10px;
  border: 1px solid #4169E1;
  background: #4169E1;
  color : white;
  padding : 8px 21px;
  font-size: bold;
  width : 113px;
  height : 42px;
}
.single-prod a{
  font-size: 20px;
  font-weight: bold;
}
.prodListResult .col-md-4{
	margin-bottom: 17px;
}
section{
	height: 180vh;
}
section::after {
  content: ""!important;
  display: block!important;
  clear: both!important;
}
</style>
<script type="text/javascript">
$(function(){
	readProdAll();
	
	$('.list-group-item').on('click', function(){
		vtext = $(this).text().trim();
		$('#area-sub').html(vtext);
		
		if(vtext != '특별시 및 광역시' && vtext != '전체 지역'){
			readProdList(vtext);
		}else if(vtext == '전체 지역'){
			
			readProdAll();
		}else{
			readProdList2();
		}
	});
	
	$(document).on('click', '.prodMove', function(){
		vpNum = $(this).attr('id').trim();
// 		console.log(vpNum);
		vpNum = vpNum.substring(7, vpNum.length);
// 		console.log(vpNum);
		
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
		  <a href="#" class="list-group-item">특별시 및 광역시</a>
		  <a href="#" class="list-group-item">강원도</a>
		  <a href="#" class="list-group-item">경기도</a>
		  <a href="#" class="list-group-item">충청북도</a>
		  <a href="#" class="list-group-item">충청남도</a>
		  <a href="#" class="list-group-item">경상북도</a>
		  <a href="#" class="list-group-item">경상남도</a>
		  <a href="#" class="list-group-item">전라북도</a>
		  <a href="#" class="list-group-item">전라남도</a>
		  <a href="#" class="list-group-item">제주</a>
		</div>
		
      </div>
  	  <br>
      <div class="col-sm-9 text-left" style="margin:0 auto;"> 
        
        <br>
        <span id = "area-sub">전체 지역</span>
        <a id="prodInsert" href="<%=request.getContextPath() %>/prod/prodInsertForm.do">상품 등록</a>
        <br><br>
        <div class = "prodListResult">
        </div>
      </div>
    </div>	  
  </div>

	</section>
	
	<jsp:include page="../footer/footer.jsp"></jsp:include>

	<!-- Template Main JS File -->

</body>

</html>