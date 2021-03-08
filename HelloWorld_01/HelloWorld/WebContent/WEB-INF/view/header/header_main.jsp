<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.second-nav a{
	font-size: 1.5em;
}
</style>
<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
	<div class="container-fluid d-flex">
		<div class="logo mr-auto">
			<h1 class="text-light">
				<a href = "../header/mainPage.do"><img src="../images/hwicon.png"><span>Hello, World!</span>
				</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
		</div>

		<!-- 첫 번째 nav -->
		<nav class="hfirst-nav nav-menu d-none d-lg-block">
			<ul>
			    <li class="nav-item dropdown">
	       			<form class="nav-link" id="logoutButton" action="<%=request.getContextPath()%>/firstPage/firstPage.do">
	           			<input type="submit" id="logoutButton" class="nav-link" value="로그아웃"/>
			        </form>
		        </li>
				<!--  <li class="active"><a href="index.html">Home</a></li> -->
				<li><a href="#about"><img alt="돋보기" src="../images/search.png" width="25"></a></li>
				<li><a href="#services"><img alt="찜목록" src="../images/heart.png" width="30"></a></li>
				<li style="margin-top : -7px;"><a href="../myPage/myPageMain.do"><img alt="마이페이지" src="../images/person.png" width="40"></a></li>
				<li class="get-started"><a href="../prodListPage/prodListPage.do">여행 시작</a></li>
			</ul>
		</nav>
		<!-- .nav-menu -->
		<br>
	</div>
	<br>

	<div class="container-fluid d-flex second-nav">
		<!-- 두 번째 nav -->
		<nav class="nav-menu d-none d-lg-block">
			<ul>
				<li><a href="#" id = "helpBoard">문의 게시판</a></li>
				<li><a href="#services">홍보 게시판</a></li>
				<li><a href="#portfolio">이벤트 게시판</a></li>
				<li><a href="#portfolio">공지사항</a></li>
			</ul>
		</nav>
		<!-- .nav-menu -->
		<br>
	</div>
	
</header>
<script src="../js/helpBoard.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>

$('#helpBoard').on('click',function(){
	viewHelpBoard();
})
</script>
<style>
<!--

-->
#logoutButton {
    background-color: transparent;
    border: none;
    float: right;
    padding: 0px;
    margin: 5px 5px;
}
</style>