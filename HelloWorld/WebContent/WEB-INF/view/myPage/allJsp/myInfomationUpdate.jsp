<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false"%>

<% request.setCharacterEncoding("utf-8"); %>

<% response.setContentType("text/html; charset=utf-8"); %>

<%
	MemberVO vo = (MemberVO) request.getAttribute("memberInfo");
%>   
   
                <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">회원정보 수정</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form id="memberUpdate">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">아이디</label>
                    <input type="text" name="member_id" class="form-control" id="member_id" value="<%=request.getSession().getAttribute("loginId")%>">
                    <%-- <input type="hidden" name="member_id" class="form-control" id="member_id" value="<%=request.getSession().getAttribute("loginId")%>"> --%>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">비밀번호</label>
                    <input type="password" name="member_password" class="form-control" id="member_password" placeholder="비밀번호를 입력하세요.">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">이름</label>
                    <input type="text" name="member_name" class="form-control" id="member_name" value="<%=vo.getMember_name() %>">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">주소</label>
                    <input type="text" name="member_address" class="form-control" id="member_address" value="<%=vo.getMember_address() %>">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">연락처</label>
                    <input type="text" name="member_phone" class="form-control" id="member_phone" value="<%=vo.getMember_phone() %> ">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">이메일</label>
                    <input type="text" name="member_email" class="form-control" id="member_email" value="<%=vo.getMember_email() %> ">
                  </div>
                </div>
			    <!-- /.card-body -->
					<div class="card-footer">
							<button id="modifyButton" type="button" class="btn btn-primary">수정하기</button>
					</div>
				</form>
            </div>
            
            
<script>
$(function(){
updateMember = { };
	$('#modifyButton').on('click', function(){
/* 		
		member_password = $('#member_password').val();
		member_name= $('#member_name').val();
		member_address= $('#member_address').val();
		member_phone= $('#member_phone').val();
		member_email= $('#member_email').val();
		
		updateMember.member_password = member_password;
		updateMember.member_name = member_name;
		updateMember.member_address = member_address;
		updateMember.member_phone = member_phone;
		updateMember.member_email = member_email; */
		
		memberInfomationUpdate();
	})
})
</script>  
   