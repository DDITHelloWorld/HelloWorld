<%@page import="java.awt.Button"%>
<%@page import="kr.or.ddit.vo.AdminVO"%>
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
<link href="../prodVendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../prodVendor/nivo-slider/css/nivo-slider.css" rel="stylesheet">
<link href="../prodVendor/owl.carousel/assets/owl.carousel.min.css"	rel="stylesheet">
<link href="../prodVendor/venobox/venobox.css" rel="stylesheet">
<link href="../mainVendor/boxicons/css/boxicons.min.css" rel="stylesheet">

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

#insBtn{
	background: #4169E1;
	color: white;
}
.phModal{
	width : 85px;
}
#pHelpSubmit{
	border: none;
    background: none;
    font-size: 1.2em;
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
	int wishCnt = Integer.parseInt(String.valueOf(request.getAttribute("wishCnt")));
	MemberVO login_member = (MemberVO)request.getAttribute("loginVo");
	int prod_no = Integer.parseInt(String.valueOf(request.getAttribute("prod_no")));
%>
<script>
$(function(){
	map = {};
	var acc = document.getElementsByClassName("accordion");
	var i;
	
	
	$('.row').on('click', '.accordion', function(){
		
		  this.classList.toggle("active");
		    var panel = this.nextElementSibling;
		    if (panel.style.display === "revert") {
		      panel.style.display = "none";
		    } else {
		      panel.style.display = "revert";
		    }
		    
	})
	
	
	/* for (i = 0; i < acc.length; i++) {
		
	    acc[i].addEventListener("click", function() {
	    this.classList.toggle("active");
	    var panel = this.nextElementSibling;
	    if (panel.style.display === "revert") {
	      panel.style.display = "none";
	    } else {
	      panel.style.display = "revert";
	    }
	  });
	} */
	
	$('#pHelpSubmit').on('click', function(){
		
		prod_no = <%= list.get(0).getProd_no() %>
		member_no = <%= login_member.getMember_no()%>
		p_help_title = $('#p_help_title').val().trim();
		p_help_content = $('#p_help_content').val();
		secopt = $('.secopt > option:selected').attr('id');
		
		if(secopt == 'opt0'){
			p_help_private = 0;
		}else{
			p_help_private = 1;
		}
		
		map.prod_no = prod_no;
		map.member_no = member_no;
		map.p_help_title = p_help_title;
		map.p_help_content = p_help_content;
		map.p_help_private = p_help_private;
		
// 		console.log(prod_no);
// 		console.log(member_no);
// 		console.log(p_help_title);
// 		console.log(p_help_content);
// 		console.log(secopt);
		today = new Date();
		//today = today.toLocaleDateString();
		
		$.ajax({
			url : '/HelloWorld/prodHelp/phInsert.do',
	//		화면에서 가져오는 값 : prod_no, member_no / 입력하는 값 : p_help_title, p_help_content, p_help_private
	//		prod_no : 파라미터 / member_no : 파라미터 / guide_no : 0 / p_help_title :입력값 / p_help_content: 입력값 / sysdate / 0 / 입력값 / 0 / " ")
			data: map,
			success : function(res){
// 				
				$('#pHelpModal').modal('hide');
				//selectProd();
				cnt = res.cnt
				// tr 만들기
				code = '<tr class="accordion" >';
				code += '<td>' + res.cnt + '</td>';
		        code += '<td><%= login_member.getMember_id() %></td>'; 
		        code += '<td>' + p_help_title;  
		        if(p_help_private == 1){
		        	code += "<span>🔒</span>";
		        }
		        code += '</td>';
		        
				code += '<td>' + getFormatDate(today) + '</td>';
				code += '<td>미답변</td>';
				code += '</tr>';
				
				code += '<tr class="panel">';
				code += '<td colspan="5">'+ p_help_content + '</td></tr>';
				$('#insBtn').parents('.container').find('tbody').prepend(code);
				
				
			},
			error : function(xhr){
				alert("Error! : " + xhr.status);
			},
			dataType : 'json'
		})
		
	})
	
	function getFormatDate(date){
	    var year = date.getFullYear().toString();	//yyyy
 	    year = year.substring(2,4);
	    var month = (1 + date.getMonth());          //M
	    month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
	    var day = date.getDate();                   //d
	    day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
	    return  year + '/' + month + '/' + day;     //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
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
						<div class = "start_trip">
							<button type ="button" class = 'btn btn-primary' id = "start_trip">여행하러가기</button>
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
								<li>👁 <%=list.get(0).getProd_views() %> &nbsp&nbsp&nbsp&nbsp&nbsp ❤ <%=wishCnt%> </li>
								<hr>
								<h6>여행지</h6>
<%
		for(Prod_insertVO vo : list){
%>
								<li><i class="fa fa-check"></i> <%=  vo.getAttraction_name() %></li>
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
	
	// 4. 같지 않을 경우 비밀글의 경우 readonly로 바꿔준다.
	for(HashMap<String, Object> phMap : phList){
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
			        <%=phMap.get("P_HELP_TITLE")%>
<%			      
		if(Integer.parseInt(String.valueOf(phMap.get("P_HELP_PRIVATE"))) == 1){
%>
				🔒
<%
		}
%>			        
					</td>
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
				    <td colspan="5"><%= String.valueOf(phMap.get("P_HELP_CONTENT")).replaceAll("\r", "").replaceAll("\n","<br>") %>
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
			<div id="insertRow" style="text-align: right;">
			  <button type="button" data-toggle="modal" data-target="#pHelpModal" id="insBtn" class="btn btn-sm">문의 등록</button>
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
	
	<!-- Modal -->
	<div class="modal fade" id="pHelpModal" role="dialog">
		<div class="modal-dialog atrmodal">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">문의글 등록</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
				  <form method="post" id="pHelpForm">
				  	<label class="phModal">회원 ID</label><input class="phelp_input" type="text" name="phelp_memId" id="phelp_memId" value="<%= login_member.getMember_id()%>" readonly><br>
				  	<label class="phModal">공개 여부</label><select class="phelp_input secopt"><option id = "opt0">공개</option><option id ="opt1">비공개</option></select><br>
					<label class="phModal">제목</label><input class="phelp_input" type="text" name="p_help_title" id="p_help_title"> <br> 
					<label class="phModal">내용</label> <br> <textarea class="phelp_input" name="p_help_content" id="p_help_content" cols="50" rows="5"> </textarea><br> 
				  	
					<br>
					<div id="pHelpresult"></div>
				  </form>
				</div>
				<div class="modal-footer">
					<input type="button" id="pHelpSubmit" value="확인"> <br>
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>

		</div>
	</div>
	
	
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
	<script>
	$(function(){
		$("#start_trip").on("click", function(){
			location.href = "<%=request.getContextPath()%>/tripPage/tripPage.do?prod_no=<%=prod_no%>";			
		})
	})
	</script>

</body>

</html>