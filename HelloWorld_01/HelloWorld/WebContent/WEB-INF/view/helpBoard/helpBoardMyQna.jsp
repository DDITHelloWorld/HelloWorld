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
<script src="<%=request.getContextPath() %>/js/helloWorld.js"></script>

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
</style>

<div class="box">
   <form id="btnForm">
	<h2>문의게시판</h2>
	<br>
	<div class="qnaList">
	<span><a id="mostQna">자주묻는 질문</a></span>
	<span><a id="myQna">내질문!!!</a></span>
	</div>
	
	<div id="writeBtn">
	<!-- 검색 -->
	<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
	<i class='fas fa-search' style='font-size:24px' margin='10px'></i>
	
	</div>
	<br><br>
	<hr>
	
	<!-- 글 목록 -->
	<div class="box">
	
	

   <table border="1" id="example2" class="table table-bordered table-hover">
      <thead>
         <tr>
            <th>번호</th>
            <th>카테고리</th>
            <th>제목</th>
            <th>상태</th>
         </tr>
      </thead>
      <% 
      	List<HelpBoardVO> helpList = (List<HelpBoardVO>)request.getAttribute("helpBoardList");
      	
      	if(helpList==null || helpList.size()==0){
      %>
      <tr><td colspan="4">게시글이 없습니다.</td></tr>
      <%
      	}else{
      		for(HelpBoardVO helpBoardVo : helpList){
      %>
      
      <tr>
      		<td><%=helpBoardVo.getMember_no() %></td>
     		<td><%=helpBoardVo.getHelp_category() %></td>
     		<td><%=helpBoardVo.getHelp_title() %></td>
     		<td><%=helpBoardVo.getHelp_state() %></td>
     </tr>
     		
      <%
      
      		}
      	}
      %>
     	
   </table>
</div>

<!-- 글쓰기버튼 -->
	<button data-toggle="modal" data-target="#writeModal" type="button"
		class="btn btn-success">글쓰기</button>
		
   </form>

   
   
   	<div id="writeModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Modal Header</h4>
				</div>
				<div class="modal-body">
					
						<label>제목</label> 
						<input class="txt" name="subject"><br>
						

						<label>작성자</label>
						<input  id = "writer" type="text"  name="writer"><br>
						
						<label>카테고리</label>
						<select class="custom-select rounded-0" id="category" name="category">
							<option>상품문의</option>
							<option>환불문의</option>
							<option>예약문의</option>
							<option>기타</option>
						</select>
						<br>
					    <label>내용</label><br>
						<textarea class="txt" name="content" rows="10" cols="40"></textarea><br>
						<br>

						<button class="btn btn-primary" id="wsend" type="button">전송</button>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
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
  
  $(function(){
		
		$('#mostQna').on('click',function(){
				mostQnaHelpBoard();
			
		})
		
	})
</script>
</html>