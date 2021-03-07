<%@page import="kr.or.ddit.vo.MyPageOrderVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.OrderVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<MyPageOrderVO> list = (List<MyPageOrderVO>) request.getAttribute("moVo");
%>

<div>
	<h2>주문 내역</h2>
	<div class="card-body">
		<table id="example2" class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>주문번호</th>
					<th>상품번호</th>
					<th>회원명</th>
					<th>주문날짜</th>
					<th>주문상태</th>
				</tr>
			</thead>
			<tbody>

				<%
					if (list == null || list.size() == 0) {
				%>

				<tr>
					<td colspan="4">주문내역이 없습니다.
				</tr>

				<%
					} else {
						for (MyPageOrderVO moVo : list) {
				%>
				<tr>
					<td><%=moVo.getOrder_no()%></td>
					<td><%=moVo.getProd_name()%></td>
					<td><%=moVo.getMember_name()%></td>
					<td><%=moVo.getOrder_date()%></td>
					<td><%=moVo.getOrder_state()%></td>
				</tr>


				<%
						}
					}
				%>


			</tbody>
			<tfoot>
				<tr>
					<th>Order Number</th>
					<th>Goods Name</th>
					<th>Member Name</th>
					<th>Order Date</th>
					<th>Order State</th>
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
