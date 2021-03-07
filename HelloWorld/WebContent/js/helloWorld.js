/**
 * 
 */

writeHelpBoard = function(){
	
	$.ajax({
		url : '/HelloWorld/helpBoard/write.do',
		type : 'post',
		data : {},
		dataType : 'html',
		success : function(res){
			alert("성공");
			
			$('#test2').empty();
			$('#test2').append(res);
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
			alert("성공");
		
		$('#test2').empty();
		$('#test2').append(res);
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
			alert("성공");
		
		$('#test2').empty();
		$('#test2').append(res);
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
			alert("성공!")

			// 출력
			console.log(res);
			$('#test2').empty();
			$('#test2').append(res);
		},
		error : function(xhr) {
			alert("상태 : " + xhr.status);
		}
	})
}

//helpBoard insert 부분
insertBoard = function(){
	console.log($('#btnForm').serializeJSON());
	
	$.post(
		'/HelloWorld/helpBoard/InsertBoard.do',
		$('#btnForm').serializeJSON(),
		function(res) {
			// alert(res.sw);
			if(res == "OK"){
				$('#writeModal').modal('hide');
				$('.txt').val("");
			}else{
				alert(res);
			}
		}, 'json'
		
		//type : 'get',
		// data : $('#wform11').serializeJSON(),
		/*data : {
			"writer" : vname
		},
		dataType : 'json',
		success : function(res) {
			// alert(res.sw);
			$('#writeModal').modal('hide');
			$('.txt').val("");
			
		},
		error : function(xhr) {
			alert("상태 : " + xhr.status);
		}*/
	)
}

openWishList = function(){
	$.ajax({
		url : '/HelloWorld/myPage/openWishList.do',
		type : 'post',
		data : { },
		dataType : 'html',
		success : function(res){
			// alert출력
			
			// 출력
			$('#outPutMainView').empty();
			$('#outPutMainView').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})			
}

openMyHelpBoardList = function(){
	$.ajax({
		url : '/HelloWorld/myPage/openMyHelpBoardList.do',
		type : 'post',
		data : { },
		dataType : 'html',
		success : function(res){
			// alert출력
			
			// 출력
			$('#outPutMainView').empty();
			$('#outPutMainView').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})		
}



openMyReview = function(){
	$.ajax({
		url : '/HelloWorld/myPage/openMyReview.do',
		type : 'post',
		data : { },
		dataType : 'html',
		success : function(res){
			// alert출력
			
			// 출력
			$('#outPutMainView').empty();
			$('#outPutMainView').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})		
}


openOrderRecode = function(){
	$.ajax({
		url : '/HelloWorld/myPage/openOrderRecode.do',
		type : 'post',
		data : { },
		dataType : 'html',
		success : function(res){
			// alert출력
			
			// 출력
			$('#outPutMainView').empty();
			$('#outPutMainView').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})		
}


openMyInfomationHome = function(){
	$.ajax({
		url : '/HelloWorld/myPage/myInfomationHome.do',
		type : 'post',
		data : { },
		dataType : 'html',
		success : function(res){
			// alert출력
			
			// 출력
			$('#outPutMainView').empty();
			$('#outPutMainView').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})	
}



myInfomationUpdate = function(){
	$.ajax({
		url : '/HelloWorld/myPage/myInfomationUpdate.do',
		type : 'post',
		data : { },
		dataType : 'html',
		success : function(res){
			// alert출력
			
			// 출력
			$('#outPutMainView').empty();
			$('#outPutMainView').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})		
}



passwordUpdate = function(){
	$.ajax({
		url : '/HelloWorld/myPage/passwordUpdate.do',
		type : 'post',
		data : { },
		dataType : 'html',
		success : function(res){
			// alert출력
			
			// 출력
			$('#outPutMainView').empty();
			$('#outPutMainView').append(res);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})	
}




memberInfomationUpdate = function(){
	   $.ajax({
	         url : '/HelloWorld/myPage/memberInfomationUpdate.do',
	         type : 'post',
	         data : $('#memberUpdate').serialize(), // 액션에서 쓸 파라미터값들
	         dataType : 'json',
	         success : function(res){
	            alert("변경 완료");
	            
//	            console.log(res);
//				$('#outPutMainView').empty();
//				$('#outPutMainView').append(res);	            
	         },
	         error : function(xhr){
	            alert("비밀번호를 다시 입력해주세요.");
	         }
	   })	
}



/*loginCheck = function(){
	$.ajax({
		url : '/HelloWorld/firstPage/mainPage.do',
		type : 'post',
		data : {"loginId" : loginId,
				"loginPassword" : loginPassword
			    },
		dataType : 'json',
		success : function(res){
			// loginId = $('#loginId').val();
			// loginPassword = $('#loginPassword').val();
			alert("로그인 성공!")
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})
}
*/

/*passwordUpdateButton = function(){
	   $.ajax({
	         url : '/HelloWorld/myPage/passwordUpdateButton.do',
	         type : 'post',
	         data : {"member_password" : member_password }, // 액션에서 쓸 파라미터값들
	         dataType : 'html',
	         success : function(res){
	            alert("성공!");
	            alert("비밀번호 변경 완료");
	            console.log(res);
	         },
	         error : function(xhr){
	            alert("상태 : " + xhr.status);
	         }
	   })		
}*/











