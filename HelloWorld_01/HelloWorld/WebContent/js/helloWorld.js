/**
 * 
 */

loginCheck = function(){
	$.ajax({
		url : '/HelloWorld/firstPage/mainPage.do',
		type : 'post',
		data : {"loginId" : loginId,
				"loginPassword" : loginPassword
			    },
		dataType : 'json',
		success : function(res){
//			if(loginId = res.val && loginPassword = res.val){
//				alert("로그인 성공!")
//			}else{
//				alert("로그인 실패")
//			}
			// loginPassword = $('#loginPassword').val();
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})
}