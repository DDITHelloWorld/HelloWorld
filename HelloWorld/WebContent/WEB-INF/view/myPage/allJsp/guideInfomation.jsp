<%@page import="kr.or.ddit.vo.GuideVO"%>
<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	GuideVO vo = (GuideVO) request.getAttribute("guideInfo");
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
                    <label for="exampleInputEmail1">아이디</label>
                    <a class="right-setting"><%=request.getSession().getAttribute("loginId")%></a>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">비밀번호</label>
                    <a class="right-setting">****</a>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">등록번호</label>
                    <a class="right-setting"><%=vo.getGuide_no() %></a>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">이름</label>
                     <a class="right-setting"><%=vo.getGuide_name() %></a>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputFile">회원등급</label>
                      <a class="right-setting">가이드</a>
                  </div>  
                <!-- /.card-body -->

<!--                 <div class="card-footer">
                  <button type="button" class="btn btn-primary">수정하기</button>-->
                </div>
              </form>
            </div>