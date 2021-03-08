

writeHelpBoard = function(){
	
	$.ajax({
		url : '/HelloWorld/helpBoard/write.do',
		type : 'post',
		data : {},
		dataType : 'html',
		success : function(res){
			$('#main').empty();
			$('#main').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
		
	})
}
writeHelpBoard_submit =function(){
	
	$.ajax({
		url : '/helpBoard/InsertBoard.do',
		type : 'post',
		data : {},
		dataType : 'html',
		success : function(res){
			alert("글이 등록되었습니다.")
			$('#main').empty();
			$('#main').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
		
	})
}

myQnaHelpBoard = function(){
	
	$.ajax({
		url : '/HelloWorld/helpBoard/myQna.do',
		type : 'post',
		data : {},
		dataType : 'html',
		success : function(res){
		
		$('#main').empty();
		$('#main').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
			
	})
}

mostQnaHelpBoard = function(){
	
	$.ajax({
		url : '/HelloWorld/helpBoard/mostQna.do',
		type : 'post',
		data : {},
		dataType : 'html',
		success : function(res){
		
		$('#main').empty();
		$('#main').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
			
	})
}

viewHelpBoard = function(){
	$.ajax({
		url : '/HelloWorld/helpBoard/listAll.do',
		type : 'post',
		data : {},
		dataType : 'html',
		success : function(res) {
			// alert출력
//			alert("성공!")

			// 출력
			console.log(res);
			$('#main').empty();
			$('#main').append(res);
		},
		error : function(xhr) {
			alert("상태 : " + xhr.status);
		}
	})
}


	

