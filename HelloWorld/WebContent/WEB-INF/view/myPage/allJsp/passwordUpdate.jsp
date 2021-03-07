<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	MemberVO vo = (MemberVO) request.getAttribute("memberInfo");
%>   

<div class="card card-primary">
	<div class="card-header">
		<h3 class="card-title">
			비밀번호 변경
		</h3>
	</div>
	<!-- /.card-header -->
	<!-- form start -->
	<form action="<%=request.getContextPath()%>/myPage/passwordUpdateButton.do" id="quickForm">
		<div class="card-body">
			<div class="form-group">
				<label for="exampleInputEmail1">회원님의 아이디</label> <input
					type="email" name="member_id_passwordUpdate" class="form-control"
					id="member_id_passwordUpdate" value="<%=vo.getMember_id() %>" disabled="disabled">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">변경할 비밀번호</label> <input
					type="password" name="memberPasswordUpdate" class="form-control"
					id="memberPasswordUpdate" placeholder="Password">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword2">비밀번호 확인</label> <input
					type="password" name="memberPasswordUpdate2" class="form-control"
					id="memberPasswordUpdate2" placeholder="Password">
			</div>
		</div>
		<!-- /.card-body -->
		<div class="card-footer">
			<button type="submit" id="passwordUpdateBtn" class="btn btn-primary">변경</button>
		</div>
	</form>
</div>
<!-- /.card -->

<!-- <script>
updateMember = { };
$(function(){
	$('#passwordUpdateBtn').on('click', function(){
		
		member_password = $('#memberPasswordUpdate').val();
		
		passwordUpdateButton();
	})
})
</script> -->
