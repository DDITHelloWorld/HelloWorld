<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="kr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Coming Soon - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="../css/coming-soon.min.css" rel="stylesheet">
    <link href="../css/signUp_modal.css" rel="stylesheet">
</head>

<body>

    <div class="overlay"></div>
    <video playsinline="playsinline" autoplay="autoplay" muted="muted" loop="loop">
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
                        <form action="<%=request.getContextPath() %>/firstPage/mainPage.do" method="post">
                            <input id="loginId" name="loginId" type="text" class="form-control" placeholder="Enter id..." aria-label="Enter id..." aria-describedby="submit-button" /><br>
                            <input id="loginPassword" name="loginPassword" type="password" class="form-control" placeholder="Enter password..." aria-label="Enter password..." aria-describedby="submit-button" /><br>
                            <button class="btn btn-secondary" type="submit" id="submit-button">로그인</button>
                            &nbsp;&nbsp;&nbsp;
                            <button class="btn btn-secondary" type="button" id="signUp-button" data-toggle="modal" data-target="#writeModal">회원가입</button>
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
					<!-- Form -->
                    <form class="form-horizontal" id="signUp_form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="id">아이디</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="id" placeholder="Enter id" name="member_id" value="">
                            </div>
                            <button class="btn btn-success btn-sm" id="idbtn" type="button">아이디중복검사</button>
                            <div class="msg"></div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">비밀번호</label>
                            <div class="col-sm-3">
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="member_password" value="">
                            </div>
                            <div class="msg"></div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd2">비밀번호확인</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="pwd2" placeholder="Enter password" value="">
                            </div>
                            <div class="msg"></div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="name">이름</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="name" placeholder="Enter name" name="member_name" value="">
                            </div>
                            <div class="msg"></div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="hp">전화번호</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="hp" placeholder="123-1234-1234" name="member_phone" value="">
                            </div>
                            <div class="msg"></div>	
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="bir">생년월일</label>
                            <div class="col-sm-3">
                                <input type="date" class="form-control" id="bir" placeholder="Enter bir" name="member_birthday">
                            </div>
                            <div class="msg"></div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">이메일</label>
                            <div class="col-sm-3">
                                <input type="email" class="form-control" id="email" placeholder="abcde@naver.com" name="member_email" value="">
                            </div>
                            <div class="msp"></div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="zip">우편번호</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="zip" placeholder="Enter zip" name="member_zip" value="">
                            </div>
                            <button class="btn btn-success btn-sm" id="mzipbtn" type="button">우편번호 찾기</button>
                        </div>


                        <div class="form-group">
                            <label class="control-label col-sm-2" for="add1">주소</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="add1" placeholder="Enter add1" name="member_address" value="">
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-2" for="add2">상세주소</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="add2" placeholder="Enter add2" name="member_address2" value="">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10" style="max-width: 100% !important; padding-right: 0 !important;">
                                <div class="checkbox" style="width: 100%;">
                                    <label style="width: 123px;"><input type="checkbox" name="remember"> Remember me</label>
                                    <button type="submit" class="btn btn-primary btn-lg" style="float: right; margin-top: -16px;" id="signUp_submit">Submit</button>
                                    
                                </div>
                            </div>
                        </div>
                    </form> <!-- form end -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div><!-- Modal end -->
    
    
    <div class="social-icons">
        <ul class="list-unstyled text-center mb-0">
            <li class="list-unstyled-item"><a href="#"> <i class="fab fa-twitter"></i>
                </a></li>
            <li class="list-unstyled-item"><a href="#"> <i class="fab fa-facebook-f"></i>
                </a></li>
            <li class="list-unstyled-item"><a href="#"> <i class="fab fa-instagram"></i>
                </a></li>
        </ul>
    </div>
    
<!-- Bootstrap core JavaScript -->
<script src="../vendor/jquery/jquery.min.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Daum API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- Custom scripts for this template -->
<script src="../js/coming-soon.min.js"></script>
<script src="../js/memberfunc.js"></script>
<script src='../js/helloWorld.js'></script>
		
<script type="text/javascript">
$(function() {
    $("#loginId").val("");
    $("#loginPassword").val("");
    
    // 버튼을 누를 경우 아이디 비밀번호 입력값 체크 > 
    // 결과값에 따라 > 셋팅을 해주거나 틀릴경우 alert
    $('#submit-button').on('click', function() {
        console.log($("#loginId").val())

        alert_check = 1;
        alert_check = <%= request.getAttribute("alert") %> ;
        if (alert_check == 0) {
            alert("아이디 혹은 비밀번호를 잘못 입력하셨습니다.")
        }
    })
    
    ////////////////////////////////////////////////////////
    // 회원 가입 버튼 클릭 처리
    // 정규식
    // id 체크
    $('#id').on('keyup', function() {
        idvalue = $('#id').val().trim();

        // 형식
        regid = /^[a-z][a-zA-Z0-9]{3,11}$/;
        // 비교 test(): true 또는 false 반환
        if (regid.test(idvalue) || idvalue == '') {
            okpro(this);
        } else {
            nopro(this, "올바른 형식이 아닙니다.");
        }
    })
	
    // 이름
    $('#name').on('keyup', function() {
        nameValue = $('#name').val().trim();
        if (nameValue.length < 2 || nameValue.length > 12) {
            nopro(this, "이름은 2글자 이상 적어야 합니다.");
            return;
        }
        regname = /^[가-힣a-zA-Z]{2,12}$/;
        if (regname.test(nameValue)) {
            okpro(this);
        } else {
            nopro(this, "올바른 형식이 아닙니다.");
        }
    })
    // 전화번호
    $('#hp').on('keyup', function() {
        hpValue = $(this).val().trim();
        reghp = /\d{3}-\d{4}-\d{4}/;
        if (reghp.test(hpValue)) {
            okpro(this);
        } else {
            nopro(this, "123-1234-1234형식으로 써주세요.");
        }
    })
    // 이메일
    $("#mail").on("keyup", function() {
        val = $(this).val().trim();
        reg = /^[a-zA-Z][a-zA-Z0-9]+@[a-zA-Z]+(\.[a-zA-Z0-9]+){1,2}$/
        if (reg.test(val)) {
            okpro(this);
        } else {
            nopro(this, "올바른 형식이 아닙니다.");
        }
    })
    // 비밀번호
    $("#pwd").on("keyup", function() {
        val = $(this).val().trim();
        reg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[~!@#$%^&*()]).{8,12}$/;
        // 길이
        if (val.length < 8 ) {
            nopro(this, "8자 이상 적어주세요.");
        }
        if (reg.test(val)) {
            okpro(this);
        } else {
            nopro(this, "영문대소문자/숫자/특수문자포함 8자리 이상이어야 합니다.");
        }
    })
    // 비밀번호 확인
    $("#pwd2").on("keyup", function() {
        val = $(this).val().trim();
        pass = $('#pwd').val()
        // 길이
        if (pass == val) {
            okpro(this);
        } else {
            nopro(this, "비밀번호가 같지 않습니다.");
        }
    })
    // 나이계산
    $("#bir").on("change", function() {
        val = $(this).val().trim();
        birday = new Date(val);
        today = new Date();

        toyear = today.getFullYear(); //2021
        biryear = birday.getFullYear(); //선택한년도

        year = toyear - biryear;
        if (year >= 10) {
            okpro(this);
        } else {
            nopro(this, "10살 이상 가능합니다.");
        }
    })
    ///////////////////////////////////////////////////////////////////////////
    // id 중복 검사
    $('#idbtn').on('click', function() {
        idCheck();
    })
    // 주소찾기 버튼 클릭
    $("#mzipbtn").on('click', function(){
    	sample4_execDaumPostcode();
    })
    // 회원가입 완료 버튼 클릭 시
    $("#signUp_submit").on('click', function(){
    	event.preventDefault();
    	console.log("signUp_submit 클릭")
    	signUp_submit();
    })
})
</script>
</body>

</html>