<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@page import="kr.or.ddit.vo.HelpBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="<%=request.getContextPath() %>/js/jquery.serializejson.min.js"></script>


<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link href="<%=request.getContextPath() %>/css/headerFooterStyle.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/css/mainStyle.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/images/hwicon.png" rel="icon">
<link href="<%=request.getContextPath() %>/images/apple-touch-icon.png" rel="apple-touch-icon">
<script src="<%=request.getContextPath() %>/js/helpBoard.js"></script>

<style>



#searchDiv{
	float : right; 
}

#writeBtn{
	float : right;
}

.qnaList{
	float : left;
	font-size : 25px;
	
}
#btnForm{
	width : 60%;
	height : 100px;
	
}

.btn{
	width : 70px;
	height : 40px;
	margin : 10px;
	float : right;
}
#mostQna{
	margin : 10px;
}

form{
	margin : 100px;
}

#myUL {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

#myUL li a {
  border: 1px solid #ddd;
  margin-top: -1px; /* Prevent double borders */
  background-color: #f6f6f6;
  padding: 12px;
  text-decoration: none;
  font-size: 18px;
  color: black;
  display: block
}

#myUL li a:hover:not(.header) {
  background-color: #eee;
}
#writeModal{
	margin : 10px;
	
}

#myInput {
  background-repeat: no-repeat;
  width: 200px;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}

.nav-menu a {
 	color : black;
}

#writeForm .column{
	text-align : center;
}
</style>
<%
	MemberVO vo = (MemberVO)request.getSession().getAttribute("loginVo");
%>
<div class="box">
   
	<h2>문의게시판</h2>
	<h3>문의 작성하기</h3>
   	<!-- 작성 폼 -->
   	<form id="writeForm" method="post"
	action="<%=request.getContextPath()%>/helpBoard/InsertBoard.do">
	<table border="1">
		
		<tr>
			<td class ="column">제목</td>
			<td>
				<input type="text" name="help_title" id="help_title">
			</td>
		</tr>
		
		<tr>
			<td class ="column">작성자</td>
			<td>
				<input type="text" name="member_id" id="member_id" value="<%=vo.getMember_id() %>" readonly>
			</td>
		</tr>
		
		<tr>
			<td class ="column">카테고리</td>
			<td>
				<select class="custom-select rounded-0" id="help_category" name="help_category">
                     <option>상품문의</option>
                     <option>환불문의</option>
                     <option>예약문의</option>
                     <option>기타</option>
                </select>
			</td>
		</tr>
		
		
		<tr>
			<td class ="column">내용</td>
			<td><textarea name="help_content" cols="72" rows="20"></textarea></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input id="writeBtn" type="submit" value="등록">
				<input type="reset" value="취소">
				<input type="button" value="돌아가기" id="allList">
			</td>
		</tr>
	</table>
</form>
</div>
<script>
  
 $(function(){
	
	 $('#writeBtn').on('click', function(){	 
		event.preventDefault(); 
		// todo 글쓰기 submit 대신 ajax로 action call 구현.
		writeHelpBoard_submit();
	 })
	 
 })
  
//  $(function(){
	  
// 	  $('#allList').on('click', function(){
			
<%-- 		 location.href="<%=request.getContextPath() %>/helpBoardPage/main.do"; --%>
// 	  })
//   })
  
  
</script>
</html>