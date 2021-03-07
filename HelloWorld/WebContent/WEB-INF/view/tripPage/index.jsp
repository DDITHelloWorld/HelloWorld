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
   	.half {
        width: 100%;
        height: 300px;
        border: 1px solid #000;
    }
    .half.left {
        width: 50%;
        float: left;
        box-sizing: border-box;
    }
    .half.right {
        width: 50%;
        float: right;
        box-sizing: border-box;
    }
    .top {
        width: 100%;
        ]border: 1px solid #000;
    }
    .top.movie{
        width: 70%;
        float: left;
        box-sizing: border-box;
    }
    .top.chat{
        width: 30%;
        float: right;
        box-sizing: border-box;
    } 
    footer.footer {
    padding-top: 5rem;
    padding-bottom: 5rem;
    clear: both;
}
    </style>
</head>
<body id="page-top">
	<jsp:include page="../header/header_main.jsp"></jsp:include>
	
	<!-- Navigation -->
	<a class="menu-toggle rounded" href="#"> <i class="fas fa-bars"></i>
	</a>
	<nav id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<li class="sidebar-brand"><a class="js-scroll-trigger"
				href="#page-top">Start Bootstrap</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#page-top">Home</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#about">About</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#services">Services</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#portfolio">Portfolio</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#contact">Contact</a></li>
		</ul>
	</nav>

	<!-- Callout -->
	<section class="callout top movie">
		<div class="container text-center">
			<h2 class="mx-auto mb-5">
				Welcome to <em>your</em> next website!
			</h2>
			<a class="btn btn-primary btn-xl"
				href="https://startbootstrap.com/theme/stylish-portfolio/">Download
				Now!</a>
		</div>
	</section>
	<section class="callout top chat">
		<div class="container text-center">
			<h2 class="mx-auto mb-5">
				Welcome to <em>your</em> next website!
			</h2>
			<a class="btn btn-primary btn-xl"
				href="https://startbootstrap.com/theme/stylish-portfolio/">Download
				Now!</a>
		</div>
	</section>
	
	
	<!-- Map -->
	<div id="contact" class="half left">
	</div>
	<div id="contact" class="map half right">
		<iframe
			src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
		<br /> <small> <a
			href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
		</small>
	</div>

	<!-- Footer -->
	<footer class="footer text-center">
		<div class="container">
			<ul class="list-inline mb-5">
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white mr-3" href="#!"> <i
						class="icon-social-facebook"></i>
				</a></li>
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white mr-3" href="#!"> <i
						class="icon-social-twitter"></i>
				</a></li>
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white" href="#!"> <i
						class="icon-social-github"></i>
				</a></li>
			</ul>
			<p class="text-muted small mb-0">Copyright &copy; Your Website
				2020</p>
		</div>
	</footer>

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
		<i class="fas fa-angle-up"></i>
	</a>

	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="../js/stylish-portfolio.min.js"></script>

</body>

</html>
