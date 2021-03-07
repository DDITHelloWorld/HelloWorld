<%@page import="kr.or.ddit.vo.MyPageHelpVO"%>
<%@page import="kr.or.ddit.vo.HelpBoardVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<MyPageHelpVO> helplist = (List<MyPageHelpVO>) request.getAttribute("mphVo");
%>
<style>
#toHelpBoard{
	background-color: transparent;
    border: none;
    color: black;
}
</style>

<div>
	<h2>문의 내역</h2>
	<form action="<%=request.getContextPath()%>/helpBoardPage/main.do" >
		<input id="toHelpBoard" type="submit" value="문의게시판으로" >
	</form>
	<table id="example2" class="table table-bordered table-hover" >
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성일</th>
				<th>작성자</th>
			</tr>
		</thead>
		<tbody>
		
				<%
					if (helplist == null || helplist.size() == 0) {
				%>

				<tr>
					<td colspan="4">문의내역이 없습니다.
				</tr>

				<%
					} else {
						for (MyPageHelpVO helpVo : helplist) {
				%>	
					
			<tr>
				<td><%=helpVo.getHelp_no() %></td>
				<td><%=helpVo.getHelp_title() %></td>
				<td><%=helpVo.getHelp_content() %></td>
				<td><%=helpVo.getHelp_date() %></td>
				<td><%=helpVo.getMember_name() %></td>
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
				<th>CSS grade</th>
			</tr>
		</tfoot>
	</table>
</div>


<script>
  $(function () {
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>