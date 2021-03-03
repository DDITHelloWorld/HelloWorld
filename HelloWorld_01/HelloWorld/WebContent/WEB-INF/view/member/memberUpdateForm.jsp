<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src = "<%=request.getContextPath()%>/js/jquery-3.5.1.min.js"></script>
</head>
<body>
<h2>회원 정보 수정 폼</h2>
<%
	MemberVO memVo = (MemberVO)request.getAttribute("memberVo");
%>
<form id="memberUpdateForm" method = "post" action = "<%=request.getContextPath() %>/member/memberUpdate.ddit">
		<table border = "1">
			<tr>
				<td>회원 ID</td>
				<td>
					<input type = "text" value = <%=memVo.getMember_id() %> disabled>
					<input type = "hidden" name = "mem_id" id = "mem_id" value = <%=memVo.getMember_id() %>>
					<span id = "idChkResult"></span>
				</td>
			</tr>
			<tr>
				<td>회원이름</td>
				<td>
					<input type = "text" name = "mem_name" id = "mem_name" value = <%=memVo.getMember_name() %>>
					<br>
				</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<input type = "text" name = "mem_tel" id = "mem_tel" value = <%=memVo.getMember_phone()%> >
					<br>
				</td>
			</tr>
			<tr>
				<td>회원주소</td>
				<td>
					<input type = "text" name = "mem_addr" id = "mem_addr" value = <%=memVo.getMember_address() %>>
					<br>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type = "submit" value = "저장" >
					<input type = "reset" value = "취소" >
					<input type = "button" value = "회원목록" id = "memListBtn" >
				</td>
			</tr>
			
		</table>
	</form>
</body>
</html>