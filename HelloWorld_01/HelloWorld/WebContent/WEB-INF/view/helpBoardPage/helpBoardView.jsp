<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="../js/jquery.serializejson.min.js"></script>

<script src="../js/board.js"></script>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<link href="../css/headerFooterStyle.css" rel="stylesheet">
<link href="../css/mainStyle.css" rel="stylesheet">
<link href="../images/hwicon.png" rel="icon">
<link href="../images/apple-touch-icon.png" rel="apple-touch-icon">
<script src="../js/helloWorld.js"></script>
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
	margin : 200px;
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

<script>
// 검색
/* function() myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
} */

$(function(){
	$('#wsend').on('click', function(){
		
		insertBoard();
		// readPageServer(1);
		
	})    
	
})
// 전송
 

</script>
</head>
<body>
 <jsp:include page="../header/header_main.jsp"></jsp:include>
	<!-- 댓글 수정폼 -->
	<!-- <div id="modifyForm">
		<textarea rows="5" cols="30"></textarea>
		<input type="button" value="확인" id="modiok"> <input
			type="button" value="취소" id="modireset">
	</div>  -->

<form id="btnForm">
	<h2>문의게시판</h2>
	<br>
	<div class="qnaList">
	<span><a id="mostQna" href="#">자주하는 질문</a></span>
	<span><a id="myQna" href="#">내질문</a></span>
	</div>
	
	<div id="writeBtn">
	<!-- 검색 -->
	<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
	<i class='fas fa-search' style='font-size:24px' margin='10px'></i>
	
	</div>
	<br><br>
	<hr>
	
	<!-- 글 목록 -->
	
<table id="myTable">
  <tr class="header">
    <th style="width:20%;">번호</th>
    <th style="width:20%;">카테고리</th>
    <th style="width:40%;">제목</th>
    <th style="width:20%;">상태</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Germany</td>
    <td>Germany</td>
    <td>Germany</td>
  </tr>

</table>
<!-- 글쓰기버튼 -->
	<button data-toggle="modal" data-target="#writeModal" type="button"
		class="btn btn-success">글쓰기</button>
		
<div class="box"></div>
	<br>
	<br>
	<div id="pageList"></div>

	<div id="writeModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Modal Header</h4>
				</div>
				<div class="modal-body">
					<form id="wform">
						<label>제목</label> <input class="txt" name="subject"><br>

						<label>작성자</label> <input class="txt" name="writer"><br>

						<label>메일</label> <input class="txt" name="mail"><br>

						<label>비밀번호</label> <input class="txt" type="password"
							name="password"><br> <label>내용</label><br>
						<textarea class="txt" name="content" rows="10" cols="40"></textarea>
						<br>

						<button class="btn btn-primary" id="wsend" type="button">전송</button>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
		
</form>
	<!-- End job Section --> <jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
</html>