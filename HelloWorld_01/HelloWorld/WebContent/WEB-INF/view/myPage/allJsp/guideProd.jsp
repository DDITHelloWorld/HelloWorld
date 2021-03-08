<%@page import="kr.or.ddit.vo.ProdVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<ProdVO> prodList = (List<ProdVO>) request.getAttribute("gpVo");
%>

<!-- 테이블 부분 -->
<div class="container">
	<h3><br>내 상품 목록</h3>
	<p>등록 상품</p>
	<table id="example2" class="table table-striped">
		<thead>
			<tr>
				<th>상품번호</th>
				<th>상품명</th>
				<th>가격</th>
				<th>할인가</th>
				<th>상품등록일</th>
			</tr>
		</thead>
		<tbody>
		
			<%
				if (prodList == null || prodList.size() == 0) {
			%>

			<tr>
				<td colspan="5">주문내역이 없습니다.
			</tr>

			<%
				} else {
					for (ProdVO prodVo : prodList) {
			%>							
			<tr>
				<td><%=prodVo.getProd_no() %></td>
				<td><%=prodVo.getProd_name() %></td>
				<td><%=prodVo.getProd_price() %></td>
				<td><%=prodVo.getProd_sale() %></td>
				<td><%=prodVo.getProd_date() %></td>
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