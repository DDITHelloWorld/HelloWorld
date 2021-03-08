<%@page import="kr.or.ddit.vo.GuideVO"%>
<%@page import="kr.or.ddit.vo.GuideHelpBoardVO"%>
<%@page import="kr.or.ddit.vo.MyPageHelpVO"%>
<%@page import="kr.or.ddit.vo.HelpBoardVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<GuideHelpBoardVO> helplist = (List<GuideHelpBoardVO>) request.getAttribute("guideHelpList");
	GuideVO vo = (GuideVO) request.getSession().getAttribute("loginVo");
%>
<style>
#toHelpBoard{
	background-color: transparent;
    border: none;
    color: black;
}
#writeBtn{
	float : right;
}
</style>

<div>
	<h2>문의 내역</h2>
<%-- 	<form action="<%=request.getContextPath()%>/helpBoardPage/main.do" >
		<input id="toHelpBoard" type="submit" value="문의게시판으로" >
	</form> --%>
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
					<td colspan="5">문의내역이 없습니다.
				</tr>

				<%
					} else {
						for (GuideHelpBoardVO helpVo : helplist) {
				%>	
					
			<tr>
				<td><%=helpVo.getG_help_no() %></td>
				<td><%=helpVo.getG_help_title() %></td>
				<td><%=helpVo.getG_help_content() %></td>
				<td><%=helpVo.getG_help_date() %></td>
				<td><%=vo.getGuide_name() %></td>
			</tr>

				<%
						}
					}
				%>


		</tbody>
	</table>
</div>

<!-- 글쓰기버튼 -->
	<button type="button" id="writeBtn" class="btn btn-success">글쓰기</button>
		

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