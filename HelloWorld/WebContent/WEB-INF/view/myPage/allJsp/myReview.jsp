<%@page import="kr.or.ddit.vo.ReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<ReviewVO> list = (List<ReviewVO>) request.getAttribute("reviewVo");
%>


<div>
	<h2>내가 쓴 리뷰</h2>
	<div class="card-body">
		<table id="example2" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>글번호</th>
					<th>내용</th>
					<th>점수</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
			
				<%
					if (list == null || list.size() == 0) {
				%>

				<tr>
					<td colspan="4">내가 쓴 리뷰가 없습니다.
				</tr>
				
				<%
					} else {
						for (ReviewVO reviewVo : list) {
				%>				
				<tr>
					<td><%=reviewVo.getReview_no() %></td>
					<td><%=reviewVo.getReview_content() %></td>
					<td><%=reviewVo.getReview_score() %></td>
					<td><%=reviewVo.getReview_date() %></td>
				</tr>

				<%
						}
					}
				%>				
				

			</tbody>
			<tfoot>
				<tr>
					<th>Rendering engine</th>
					<th>Browser</th>
					<th>Platform(s)</th>
					<th>Engine version</th>
				</tr>
				
				
				
			</tfoot>
		</table>
	</div>
</div>



<script>
	$(function() {
		$('#example2').DataTable({
			"paging" : true,
			"lengthChange" : false,
			"searching" : false,
			"ordering" : true,
			"info" : true,
			"autoWidth" : false,
			"responsive" : true,
		});
	});
</script>