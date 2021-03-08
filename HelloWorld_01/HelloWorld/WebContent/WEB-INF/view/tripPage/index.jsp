<%@page import="kr.or.ddit.vo.Prod_insertVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Stylish Portfolio - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="../vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/stylish-portfolio.min.css" rel="stylesheet">
<link href="../css/headerFooterStyle.css" rel="stylesheet">
<style>
   
    .top {
        width: 100%;
        ]border: 1px solid #000;
    }
   
    footer.footer {
    padding-top: 5rem;
    padding-bottom: 5rem;
    clear: both;
}
video {
    position: fixed;
    top: 50%;
    left: 50%;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    transform: translateX(-50%) translateY(-50%);
    z-index: 0;
}
</style>
<%
	List<Prod_insertVO> list = (List<Prod_insertVO>)request.getAttribute("list");
%>
</head>
<body id="page-top">
	
	<!-- Navigation -->
	<a class="menu-toggle rounded" href="#"> <i class="fas fa-bars"></i>
	</a>
	<nav id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<li class="sidebar-brand"><a class="js-scroll-trigger"
				href="#">🛫Have a nice Trip!</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#services">MyPage</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="../header/mainPage.do">Home</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="<%=request.getContextPath()%>/prod/SelectProd.do?prod_no=<%=list.get(0).getProd_no()%>">About</a></li>
				<hr>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#">Team</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#">💃💃SUMIMACHIJO!!💃💃</a></li>
		</ul>
	</nav>

	<!-- Callout -->
		<div class="container text-center">
		    <div class="overlay"></div>
		    <button onclick="openFullscreen();">Open Video in Fullscreen Mode</button>
		    <video id = "myvideo" controls autoplay>
		    <%
		    	if(list.get(0).getAttraction_video() != null){
		    %>
		        	<source src="<%=request.getContextPath()%><%=list.get(0).getAttraction_video()%>" type="video/mp4">
		    <%
		    	}else{
    		%>
    				<source src="<%=request.getContextPath()%>/mp4/bg.mp4" type="video/mp4">
    		<%
		    		
		    	}
		    %> 
		    </video>
		</div>

	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="../js/stylish-portfolio.min.js"></script>

</body>

<script>

var elem = document.getElementById("myvideo");

function openFullscreen() {

  if (elem.requestFullscreen) {

    elem.requestFullscreen();

  } else if (elem.mozRequestFullScreen) { /* Firefox */

    elem.mozRequestFullScreen();

  } else if (elem.webkitRequestFullscreen) { /* Chrome, Safari & Opera */

    elem.webkitRequestFullscreen();

  } else if (elem.msRequestFullscreen) { /* IE/Edge */

    elem.msRequestFullscreen();

  }

}

</script>



</html>

