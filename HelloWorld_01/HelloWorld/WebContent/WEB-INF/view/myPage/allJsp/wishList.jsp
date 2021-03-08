<%@page import="kr.or.ddit.vo.MyWishVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<MyWishVO> wishList = (List<MyWishVO>) request.getAttribute("wishVo");
%>

<div>
	<h2>찜목록</h2>
	<div class="card-body">
		<table id="example2" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>찜목록 번호</th>
					<th>상품명</th>
					<th>회원명</th>
					<th>주문 상태</th>
				</tr>
			</thead>
			<tbody>
			
				<%
					if (wishList == null || wishList.size() == 0) {
				%>

				<tr>
					<td colspan="4">목록이 없습니다.
				</tr>

				<%
					} else {
						for (MyWishVO wishVo : wishList) {
				%>
				<tr>
					<td><%=wishVo.getWishlist_no() %></td>
					<td><%=wishVo.getProd_name() %></td>
					<td><%=wishVo.getMember_name() %></td>
					<td><%=wishVo.getWishlist_state() %></td>
				</tr>

				<%
					}
					}
				%>

			</tbody>
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