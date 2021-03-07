/**
 * 
 */

function okpro(vinput) {
      console.log("okpro " + vinput);
      vsp = $(vinput).parents('.form-group').find('.sp');
      
      // 올바른 형식이 아닙니다 영역 지우기
      $(vinput).parents('.form-group').find('.msg').html("");
   }
   
   function nopro(vinput, text) {
      console.log("okpro " + vinput + ", " + text);
      $(vinput).parents('.form-group').find('.msg').html(text);
      $(vinput).parents('.form-group').find('.msg').css('color', 'red');
      
      $(vinput).parents('.form-group').find('.sp').empty();
   }

function idCheck() {
	idvalue = $('#id').val().trim();

	if (idvalue.length < 1) {
		alert("id를 입력하세요.");
		return false;
	}
	$.post(
		'/HelloWorld/firstPage/idCheck.do',
		{ "id" : idvalue },
		function(data) {
			if(data == "OK")
			$('#idspan').html("사용가능한 ID").css('color', 'red');
			
			alert(data);
		},
		'json'
	)

/*	$.ajax({

		url: '/member/ID.do',
		type: 'post',
		data: '/member/ID.do',
		success: function(res) {
			$('#idspan').html(res.sw).css('color', 'red');
		},
		error: function(xhr) {
			alert("상태 : " + xhr.status);
		},
		dataType: 'json'
	})	*/
}

// 우편번호 검색 - window
$('#wzipbtn').on('click', function() {
	// 새로운 창 열기
	window.open("zipsearch.html", "_blank", "width=500 height=400"); //우편번호찾기
	//(_self, _blank) 위치에는 물리적이름이 아닌 논리적이름이라 실제 보이진 않음
})
	// 주소찾기
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zip').value = data.zonecode;
            document.getElementById("add1").value = extraRoadAddr + roadAddr+" / "+data.jibunAddress;
            document.getElementById("add2").focus();
        }
	}).open();
}
signUp_submit = function(){
	console.log("signUp_submit function() 실행")
	$.post(
			'/HelloWorld/firstPage/signUp.do',
			$("#signUp_form").serialize(),
			function(data){
				if(data =="Fail"){
					alert("회원가입 실패!");
				}else{
					alert("회원가입 완료!")
					$('#writeModal').modal('hide');
				}
			},
			'json'
	)
}




