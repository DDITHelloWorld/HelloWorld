<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="kr">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script src='../js/helloWorld.js'></script>

<title>Coming Soon - Start Bootstrap Theme</title>

<!-- Bootstrap core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet">
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Custom styles for this template -->
<link href="../css/coming-soon.min.css" rel="stylesheet">
<link href="../css/signUp_modal.css" rel="stylesheet">
</head>

<body>

	<div class="overlay"></div>
	<video playsinline="playsinline" autoplay="autoplay" muted="muted"
		loop="loop">
		<source src="../mp4/bg.mp4" type="video/mp4">
	</video>

	<div class="masthead">
		<div class="masthead-bg"></div>
		<div class="container h-100">
			<div class="row h-100">
				<div class="col-12 my-auto">
					<div class="masthead-content text-white py-5 py-md-0">
						<h1 class="mb-3">Hello World!</h1>
						<p class="mb-5">
							여행을 가고 싶으신가요?<br>그럼 바로 로그인하세요!
						</p>
						<form
							action="<%=request.getContextPath() %>/firstPage/mainPage.do"
							method="post">
							<input id="loginId" name="loginId" type="text"
								class="form-control" placeholder="Enter id..."
								aria-label="Enter id..." aria-describedby="submit-button" /><br>
							<input id="loginPassword" name="loginPassword" type="password"
								class="form-control" placeholder="Enter password..."
								aria-label="Enter password..." aria-describedby="submit-button" /><br>
							<button class="btn btn-secondary" type="submit"
								id="submit-button">로그인</button>
							&nbsp;&nbsp;&nbsp;
							<button class="btn btn-secondary" type="button" id="signUp-button"
							data-toggle="modal" data-target="#writeModal">회원가입</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div id="writeModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h2>회 원 가 입</h2>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="container">

					<form class="form-horizontal" id="ff">
						<div class="form-group">
							<label class="control-label col-sm-2" for="id">아이디</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="id"
									placeholder="Enter id" name="mem_id" value="">
							</div>
							<button class="btn btn-success btn-sm" id="idbtn" type="button">아이디중복검사</button>
							<span class="sp"></span> <span id="idspan"></span>
							<div class="msg"></div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="name">이름</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="name"
									placeholder="Enter name" name="mem_name" value=""> <span
									class="sp"></span>
							</div>
							<div class="msg"></div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="hp">전화번호</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="hp"
									placeholder="Enter hp" name="mem_hp" value="">
								<div class="msg"></div>
							</div>
							<span class="sp"></span>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="bir">생년월일</label>
							<div class="col-sm-3">
								<input type="date" class="form-control" id="bir"
									placeholder="Enter bir" name="mem_bir">
								<div class="msg"></div>
							</div>
							<span class="sp"></span>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="email">이메일</label>
							<div class="col-sm-3">
								<input type="email" class="form-control" id="email"
									placeholder="abcde@naver.com" name="mem_mail" value="">
								<span class="msg"></span>
							</div>
							<span class="sp"></span>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">비밀번호</label>
							<div class="col-sm-3">
								<input type="password" class="form-control" id="pwd"
									placeholder="Enter password" name="mem_pass" value="">
								<span class="msg"></span>
							</div>
							<span class="sp"></span>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd2">비밀번호확인</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="pwd2"
									placeholder="Enter password" value=""> <span
									class="msg"></span>
							</div>
							<span class="sp"></span>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="zip">우편번호</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="zip"
									placeholder="Enter zip" name="mem_zip" value="">
							</div>
							<button class="btn btn-success btn-sm" data-toggle="modal"
								data-target="#myModal" id="mzipbtn" type="button">번호검색(modal)</button>
						</div>


						<div class="form-group">
							<label class="control-label col-sm-2" for="add1">주소</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="add1"
									placeholder="Enter add1" name="mem_add1" value="">
							</div>

						</div>

						<div class="form-group">
							<label class="control-label col-sm-2" for="add2">상세주소</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" id="add2"
									placeholder="Enter add2" name="mem_add2" value="">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10"
								style="max-width: 100% !important; padding-right: 0 !important;">
								<div class="checkbox" style="width: 100%;">
									<label style="width: 123px;"><input type="checkbox"
										name="remember"> Remember me</label>

									<button type="submit" class="btn btn-primary btn-lg"
										style="float: right; margin-top: -16px;">Submit</button>
									<span id="subspan"></span>
								</div>

							</div>
						</div>

						<!-- <div class="form-group">
							<div class="col-sm-offset-2 col-sm-2">
								<button type="submit" class="btn btn-primary btn-lg">Submit</button>
								<span id="subspan"></span>
							</div>
						</div> -->
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<div class="social-icons">
		<ul class="list-unstyled text-center mb-0">
			<li class="list-unstyled-item"><a href="#"> <i
					class="fab fa-twitter"></i>
			</a></li>
			<li class="list-unstyled-item"><a href="#"> <i
					class="fab fa-facebook-f"></i>
			</a></li>
			<li class="list-unstyled-item"><a href="#"> <i
					class="fab fa-instagram"></i>
			</a></li>
		</ul>
	</div>


	<!-- Bootstrap core JavaScript -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="../js/coming-soon.min.js"></script>

	<script type="text/javascript">

	$(function(){
		$("#loginId").val("");
		$("#loginPassword").val("");
		// 회원 가입 버튼 클릭 처리
// 		$("#signUp-button").on("click", function(){
<%-- 			location.href = "<%=request.getContextPath()%>/firstPage/member_js.do"; --%>
// 		})
		
		// 버튼을 누를 경우 아이디 비밀번호 입력값 체크 > 
		// 결과값에 따라 > 셋팅을 해주거나 틀릴경우 alert
		$('#submit-button').on('click', function(){
			
			console.log($("#loginId").val())
			
			alert_check = 1;
			alert_check = <%=request.getAttribute("alert") %>;
			if(alert_check == 0){
				alert("아이디 혹은 비밀번호를 잘못 입력하셨습니다.")
			}
			
// 		loginId = $('#loginId').val();
// 		loginPassword = $('#loginPassword').val();
		
// 		loginCheck();  

		}) 
	})
</script>



</body>

</html>
