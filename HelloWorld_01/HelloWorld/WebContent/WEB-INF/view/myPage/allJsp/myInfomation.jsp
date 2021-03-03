<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	MemberVO vo = (MemberVO) request.getAttribute("memberInfo");
%>
<!-- general form elements -->
<div class="card card-primary">
	<div class="card-header">
		<h3 class="card-title">내 상세 정보</h3>
	</div>
	<!-- /.card-header -->
	<!-- form start -->
	<form>
		<div class="card-body">
			<div class="form-group">
				<label for="exampleInputEmail1">아이디</label><br> <a>&nbsp;&nbsp;&nbsp;<%=request.getSession().getAttribute("loginId")%></a>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">비밀번호</label><br> <a>&nbsp;&nbsp;&nbsp;<%=vo.getMember_password() %></a>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">주소</label><br> <a>&nbsp;&nbsp;&nbsp;<%=vo.getMember_address() %></a>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">이메일</label><br> <a>&nbsp;&nbsp;&nbsp;<%=vo.getMember_email() %></a>
			</div>
			<div class="form-group">
				<label for="exampleInputFile">이름</label><br>
			</div>
		</div>
		<!-- /.card-body -->

		<div class="card-footer">
			<button type="submit" class="btn btn-primary">수정하기</button>
		</div>
	</form>
</div>