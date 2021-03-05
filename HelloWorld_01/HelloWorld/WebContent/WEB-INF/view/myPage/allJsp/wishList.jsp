<%@page import="kr.or.ddit.vo.WishListVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<WishListVO> list = (List<WishListVO>) request.getAttribute("wishVo");
%>

<div>
	<h2>찜목록</h2>
	<div class="card-body">
		<table id="example2" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>찜목록 번호</th>
					<th>주문 상태</th>
					<th>상품번호</th>
					<th>회원번호</th>
				</tr>
			</thead>
			<tbody>
			
				<%
					if (list == null || list.size() == 0) {
				%>

				<tr>
					<td colspan="4">목록이 없습니다.
				</tr>

				<%
					} else {
						for (WishListVO wishVo : list) {
				%>
				<tr>
					<td><%=wishVo.getWishlist_no() %></td>
					<td><%=wishVo.getWishlist_state() %></td>
					<td><%=wishVo.getProd_no() %></td>
					<td><%=wishVo.getMember_no() %></td>
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