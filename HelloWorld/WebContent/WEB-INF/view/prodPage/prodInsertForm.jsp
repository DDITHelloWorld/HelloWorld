<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>


<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i"
	rel="stylesheet">
<!-- vendor CSS Files -->
<link href="../mainVendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../mainVendor/icofont/icofont.min.css" rel="stylesheet">
<link href="../mainVendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="../mainVendor/venobox/venobox.css" rel="stylesheet">
<link href="../mainVendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="../mainVendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../css/mainStyle.css" rel="stylesheet">
<link href="../css/headerFooterStyle.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="../js/prodList.js"></script>
<script src="../js/prodInsert.js"></script>
<link href="../images/hwicon.png" rel="icon">
<style>
.empty-space {
	width: 100%;
	height: 150px;
}

label {
	width: 100px;
}

.prod_input {
	width: 360px;
	margin: 3px auto;
}

.form_border {
	margin: 0 150px auto;
}

#btn-div {
	width: 422px;
	text-align: right;
}

input[type=reset] {
	margin-left: 15px;
}

#atrspan {
	font-size: 0.8em;
}

.modal-dialog.atrmodal {
	min-width: 800px;
}
</style>
<script type="text/javascript">
atrchk = 0;
temp = [];

$(function(){
	prod = { };
	$('#atrRegbtn').on('click', function(){
		atrList();
	})
	
	$('#atrresult').on('click', '.atrres', function(){
		atrselect(this);
	})

	$('#removeAtr1').on('click', function(){
		$('#attraction_name1').val("");
		atrchk--;
	})
	
	$('#removeAtr2').on('click', function(){
		$('#attraction_name2').val("");
		atrchk--;
	})
	
	$('#removeAtr3').on('click', function(){
		$('#attraction_name3').val("");
		atrchk--;
	})
	
	$('#removeAtr4').on('click', function(){
		$('#attraction_name4').val("");
		atrchk--;
	})
	
	$('#removeAtr5').on('click', function(){
		$('#attraction_name5').val("");
		atrchk--;
	})
	
	$('#prodForm').on('submit', function(){
		event.preventDefault()
		prod.prod_name = $("#prod_name").val().trim();
		prod.guide_no = 1;	// guide_no session값 가져오기
		prod.prod_price = $("#prod_price").val().trim();
		prod.prod_outline = $("#prod_outline").val().trim();
		prod.prod_details = $("#prod_details").val().trim();
		prod.prod_travel_date = $("#prod_travel_date").val().trim();
		prod.prod_travel_max = $("#prod_travel_max").val().trim();
		
// 		let values =[];
		let val = "";
		for(i =1; i < 6; i++){
			val = "attraction_name" + i
			if($("#" + val).val().trim().length > 0){				
// 				values.push($("#" + val).val().trim());
// 				console.log(values[i-1]);
			console.log(temp[i-1]);
			}
		}
// 		console.log(values.length);
		console.log(temp.length);
		prod.prod_attraction_no = temp;
		
		
		// prod - prod_name guide_no prod_price
		// prodde - prod_outline, prod_details, prod_travel_date, prod_travel_max
		if(formchk() == true){
// 			event.preventDefault = false;
			insertProd();
		}else{
			event.preventDefault()
		}
	})
	
})
</script>
</head>
<body>
	<jsp:include page="../header/header_main.jsp"></jsp:include>
	<div class="empty-space"></div>
	<br>
	<div class="form_border">
		<h3>여행 상품 등록</h3>
		<hr>
		<form method="post" id="prodForm">
			<label>상품명</label><input class="prod_input" type="text" name="prod_name" id="prod_name"><br> <label>관광명소</label>
			<button type="button" data-toggle="modal" data-target="#atrModal" id="atrsearch" class="btn btn-info btn-sm">검색</button>
			<span id="atrspan">'검색'버튼을 눌러 관광명소 검색 </span><br>
			
			<label>관광명소1</label><input	class="prod_input" type="text" name="attraction_name1" id="attraction_name1" readonly="readonly"> 
			<input type="button" id="removeAtr1" value="삭제" class="btn btn-info btn-sm"><br>
			
			<label>관광명소2</label><input class="prod_input" type="text" name="attraction_name2" id="attraction_name2" readonly="readonly">
			<input type="button" id="removeAtr2" value="삭제"	class="btn btn-info btn-sm"><br> 
			
			<label>관광명소3</label><input	class="prod_input" type="text" name="attraction_name3" id="attraction_name3" readonly="readonly"> 
			<input type="button" id="removeAtr3" value="삭제" class="btn btn-info btn-sm"><br>
			
			<label>관광명소4</label><input class="prod_input" type="text" name="attraction_name4" id="attraction_name4" readonly="readonly">
			<input type="button" id="removeAtr4" value="삭제" class="btn btn-info btn-sm"><br> 
			
			<label>관광명소5</label><input	class="prod_input" type="text" name="attraction_name5" id="attraction_name5" readonly="readonly"> 
			<input type="button" id="removeAtr5" value="삭제" class="btn btn-info btn-sm"><br>
			
			<label>판매가격</label>
			<input class="prod_input" type="number"	name="prod_price" id="prod_price" step="1000" value="5000" min="5000"><br>
			<label>상품개요</label><input class="prod_input" type="text" name="prod_outline" id="prod_outline"><br>
			<label>상세설명</label><br>
			<textarea rows="10" cols="60" id="prod_details"></textarea>			
			<br> 
			<label>여행날짜</label><input class="prod_input" type="date" name="prod_travel_date" id="prod_travel_date"><br>
			 <label>정원</label><input class="prod_input" type="number" name="prod_travel_max" id="prod_travel_max" step="5" value="25" min="5"><br> 
			 <br><br>
			<div id="btn-div">
				<input class="btn btn-info" type="submit" value="등록" id="prodInSubmit">
				<input class="btn btn-info"	type="reset" value="초기화">
			</div>

		</form>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="atrModal" role="dialog">
		<div class="modal-dialog atrmodal">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">관광명소 검색</h4>
				</div>
				<div class="modal-body">
					<input type="text" id="atrReg"> <input type="button"
						id="atrRegbtn" value="확인"> <br>
					<br>
					<div id="atrresult"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>


	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
</html>