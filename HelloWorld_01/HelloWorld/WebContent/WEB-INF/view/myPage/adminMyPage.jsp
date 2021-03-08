<!DOCTYPE html>
<%@page import="kr.or.ddit.vo.AdminPageVO"%>
<%@page import="kr.or.ddit.vo.AdminVO"%>
<%@page import="kr.or.ddit.vo.ProdVO"%>
<%@page import="kr.or.ddit.vo.GuideVO"%>
<%@page import="kr.or.ddit.vo.MyPageOrderVO"%>
<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@page import="kr.or.ddit.vo.OrderVO"%>
<%@page import="kr.or.ddit.vo.WishListVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<AdminPageVO> helpList = (List<AdminPageVO>) request.getAttribute("helpList");

	List<AdminPageVO> helpList2 = (List<AdminPageVO>) request.getAttribute("helpList2");
%>    
    

    
<%-- <%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%> --%>
<html lang="kr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Hello World !</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.min.css">
 
<%-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="<%=request.getContextPath() %>/js/jquery.serializejson.min.js"></script>
 --%>

<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link href="<%=request.getContextPath() %>/css/headerFooterStyle.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/css/mainStyle.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/images/hwicon.png" rel="icon">
<link href="<%=request.getContextPath() %>/images/apple-touch-icon.png" rel="apple-touch-icon">
<script src="<%=request.getContextPath() %>/js/helpBoard.js"></script>

 
  
  <style type="text/css">
.right-setting{
	float: right;
}  
.container{
	max-width : 94%;
}
#outPutMainView{
	padding: 30px;
}
#myPageHomeButton{
	background-color: transparent;
    border: none;
}
#logoutButton{
	background-color: transparent;
    border: none;
    float: right;
    padding: 0px;
    margin : 0px 5px;
}
#helloWorldButton{
	background-color: transparent;
    border: none;
    color:white;
    font-weight: bold;
    font-size: 1.2em;
}
#writeBtn{
	float : right;
}
  </style>
</head>
<body class="hold-transition sidebar-mini layout-fixed" data-panel-auto-height-mode="height">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
      	<form id="myPageHome" action="<%=request.getContextPath()%>/myPage/myPageMain.do">
        	<input type="submit" id="myPageHomeButton" class="nav-link" value="Home"/>
      	</form>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item dropdown">
     	<form class="nav-link" id="logoutButton" action="<%=request.getContextPath()%>/firstPage/firstPage.do">
        	<input type="submit" id="logoutButton" class="nav-link" value="로그아웃"/>
      	</form>
      </li>   
    
      <li class="nav-item dropdown">
    	<a class="nav-link" href="#">
		  <img alt="돋보기" src="../images/search.png" width="25">
		</a>
      </li>
    	
      <li class="nav-item dropdown">
    	<a class="nav-link" href="#">
		  <img alt="찜목록" src="../images/heart.png" width="25">
		</a>
      </li>

      <li class="nav-item dropdown">
    	<a id="myInfomationHome2" class="nav-link" href="#">
		  <img alt="마이페이지" src="../images/person.png" width="25">
		</a>
      </li>
	</ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <form action="<%=request.getContextPath() %>/allPage/mainPageHome.do" method="post">
    	<a href="#" class="brand-link">
	      <img src="../images/hwicon.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
	      <input type="submit" class="brand-text font-weight-light" id="helloWorldButton" value="Hello World!">
  	 	</a>
    </form>
	
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">관리자용 페이지입니다.</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tree"></i>
              <p>
                문의 답변하기
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../pages/UI/general.html" id="guideInfomationHome" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>문의게시판(회원용)</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/UI/general.html" id="guideInfomationHome" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>문의게시판(가이드용)</p>
                </a>
              </li>
           </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                여행 서비스
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../pages/tables/jsgrid.html" id="guideProdList" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>진행중인 상품</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/tables/jsgrid.html" id="guideReviewReply" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>종료된 상품</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/tables/jsgrid.html" id="fromHelpBoardList" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>신고 내역</p>
                </a>
              </li>              
            </ul>
          </li>
          
          <li class="nav-header">EXAMPLES</li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                페이지
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../pages/examples/invoice.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Invoice</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/profile.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Profile</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/e-commerce.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>E-commerce</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/projects.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Projects</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/project-add.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Project Add</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/project-edit.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Project Edit</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/project-detail.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Project Detail</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/contacts.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contacts</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/faq.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>FAQ</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/examples/contact-us.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Contact us</p>
                </a>
              </li>
            </ul>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                통계
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../pages/charts/chartjs.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>ChartJS</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/charts/flot.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Flot</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="../pages/charts/inline.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Inline</p>
                </a>
              </li>
            </ul>
          </li>

      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper iframe-mode" data-widget="iframe" data-loading-screen="750">
    <div class="nav navbar navbar-expand-lg navbar-white navbar-light border-bottom p-0">
      <a class="nav-link bg-danger" href="#" data-widget="iframe-close">Close</a>
      <a class="nav-link bg-light" href="#" data-widget="iframe-scrollleft"><i class="fas fa-angle-double-left"></i></a>
      <ul class="navbar-nav" role="tablist"></ul>
      <a class="nav-link bg-light" href="#" data-widget="iframe-scrollright"><i class="fas fa-angle-double-right"></i></a>
      <a class="nav-link bg-light" href="#" data-widget="iframe-fullscreen"><i class="fas fa-expand"></i></a>
    </div>
    <div class="tab-content">
			<div id="outPutMainView">
			
				<!-- 주문내역 부분 -->
				<div class="container">
					<h3><br>문의게시판(회원용)</h3>
					<p>문의 내역</p>
					<table id="example2" class="table table-striped">
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>내용</th>
								<th>작성일</th>
								<th>답변상태</th>
							</tr>
						</thead>
						<tbody>
		
							<%
								if (helpList == null || helpList.size() == 0) {
							%>
			
							<tr>
								<td colspan="5">문의내역이 없습니다.
							</tr>
			
							<%
								} else {
									for (AdminPageVO helpVo : helpList) {
							%>	
											
							<tr>
								<td><%=helpVo.getHelp_no() %></td>
								<td><%=helpVo.getHelp_title() %></td>
								<td><%=helpVo.getHelp_content() %></td>
								<td><%=helpVo.getHelp_date() %></td>
								<td><%=helpVo.getHelp_state() %></td>
							</tr>
							
								<%
										}
									}
								%>
							
						</tbody>
					</table>
<!-- 글쓰기버튼 -->
	<button type="button" id="writeBtn" class="btn btn-success">답변하기</button>
				</div>
				
					
				
				<br>
				
				<div class="container">
					<h3><br>문의게시판(가이드용)</h3>
					<p>문의 내역</p>
					<table id="example3" class="table table-striped">
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>내용</th>
								<th>작성일</th>
								<th>답변</th>
							</tr>
						</thead>
						<tbody>
						
							<%
								if (helpList2 == null || helpList2.size() == 0) {
							%>
			
							<tr>
								<td colspan="5">문의내역이 없습니다.
							</tr>
			
							<%
								} else {
									for (AdminPageVO helpVo2 : helpList2) {
							%>							
						
							<tr>
								<td><%=helpVo2.getG_help_no() %></td>
								<td><%=helpVo2.getG_help_title() %></td>
								<td><%=helpVo2.getG_help_content() %></td>
								<td><%=helpVo2.getG_help_date() %></td>
								<td><%=helpVo2.getG_help_answer() %></td>
							</tr>
							
							<%
									}
								}
							%>						
						</tbody>
					</table>
<!-- 글쓰기버튼 -->
	<button type="button" id="writeBtn" class="btn btn-success">답변하기</button>
				</div>
	

				<br>				
				
				<br>				
				
			</div>
			<div class="tab-loading">
        <div>
          <h2 class="display-4">로딩중입니다 ㅎㅎ<i class="fa fa-sync fa-spin"></i></h2>
        </div>
      </div>
    </div>
  </div>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="../plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../plugins/moment/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="../dist/js/pages/dashboard.js"></script>
 -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../plugins/jszip/jszip.min.js"></script>
<script src="../plugins/pdfmake/pdfmake.min.js"></script>
<script src="../plugins/pdfmake/vfs_fonts.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- Page specific script -->

<!-- 스크립트 -->
<script src = '../js/jquery.serializejson.min.js'></script>
<script src="../js/helloWorld.js"></script>




<script>

$(function(){
	
	$('#example2').DataTable({
		"paging" : true,
		"lengthChange" : false,
		"searching" : false,
		"ordering" : true,
		"info" : true,
		"autoWidth" : false,
		"responsive" : true,
	});
	
	$('#example3').DataTable({
		"paging" : true,
		"lengthChange" : false,
		"searching" : false,
		"ordering" : true,
		"info" : true,
		"autoWidth" : false,
		"responsive" : true,
	});

})

</script>

</body>
</html>
