<%@page import="kr.or.ddit.vo.GuideVO"%>
<%@page import="kr.or.ddit.vo.ReviewReplyVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	GuideVO vo = (GuideVO) request.getSession().getAttribute("loginVo");
	List<ReviewReplyVO> rrList = (List<ReviewReplyVO>) request.getAttribute("rrVo");
%>

<!-- 주문내역 부분 -->
<div class="container">
	<h3><br>내 상품 리뷰 목록</h3>
	<p>리뷰 조회</p>
	<table id="example2" class="table table-striped">
		<thead>
			<tr>
				<th>리뷰번호</th>
				<th>상품명</th>
				<th>리뷰내용</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
		
			<%
				if (rrList == null || rrList.size() == 0) {
			%>

			<tr>
				<td colspan="5">주문내역이 없습니다.
			</tr>

			<%
				} else {
					for (ReviewReplyVO rrVo : rrList) {
			%>							
			<tr>
				<td><%=rrVo.getReply_no() %></td>
				<td><%=rrVo.getReply_content() %></td>
				<td><%=rrVo.getReview_no() %></td>
				<td><%=vo.getGuide_name() %></td>
				<td><%=rrVo.getReply_date() %></td>
			</tr>
			<%
					}
				}
			%>				
		</tbody>
	</table>
</div>  

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
})
</script>