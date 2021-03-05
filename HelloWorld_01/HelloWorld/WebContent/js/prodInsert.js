/**
 * 
 */

function atrList() {

    // 입력한 값 가져오기
    atrvalue = $('#atrReg').val().trim();
    console.log(atrvalue);
    // 서버로 전송 - 요청
    $.ajax({
        url: '/HelloWorld/prod/atrSearch.do',
        data: {
            "atr": atrvalue
        },
        type: 'post',
        success: function (res) {
            code = "<table border = '1' class = 'table table-hover'>";
            code += "<tr><td>번호</td>";
            code +=	"<td>지역</td>";
            code += "<td>관광명소</td></tr>";
            
            $.each(res, function (i, v) {
                code += "<tr class = 'atrres'><td>" + v.attraction_no + "</td>"; 
                code +=	"<td>" + v.attraction_region + "</td>";
                code += "<td>" + v.attraction_name + "</td></tr>";
                
            })
            code += "</table>";
            $('#atrresult').html(code);
        },
        error: function (xhr) {
            alert("상태 : " + xhr.status) // 200, 404, 403
        },
        dataType: 'json'
    })
}

function atrselect(atrresult) {
	
	atrNo = $('td:eq(0)', atrresult).text().trim();
	temp.push(atrNo);
	atrReg= $('td:eq(1)', atrresult).text().trim();
    atrName = $('td:eq(2)', atrresult).text().trim();

    // 폼에 출력
    if ($('#attraction_name1').val().trim().length < 1) {
        $('#attraction_name1').val(atrName);
        atrchk++;
    } else {
        if ($('#attraction_name2').val().trim().length < 1) {
            $('#attraction_name2').val(atrName);
            atrchk++;
        } else {
            if ($('#attraction_name3').val().trim().length < 1) {
                $('#attraction_name3').val(atrName);
                atrchk++;
            } else {
                if ($('#attraction_name4').val().trim().length < 1) {
                    $('#attraction_name4').val(atrName);
                    atrchk++;
                } else {
                    if ($('#attraction_name5').val().trim().length < 1) {
                        $('#attraction_name5').val(atrName);
                        atrchk++;
                    } else {
                        alert('관광명소 등록은 5개까지 가능합니다.');
                    }
                }
            }
        }
    }

    // 모달창 닫기
    $('#atrModal').modal('hide');

    //		// 모달창 내용도 지우기
    //		$(".modal-backdrop").remove();
    $('#atrReg').val("");
    $('#atrresult').empty();
}

//	$('#atrModal').on('shown.bs.modal', function(){
//	$(this).css('z-index', parseInt($('.modal-backdrop').css('z-index')) + 1);
//})

function formchk() {
    if ($('#prod_name').val().trim().length < 1) {
        alert("상품명을 입력해주세요.");
        $('#prod_name').focus();
        return false;
    }

    if ($("#prod_name").val().trim().length < 5 || $('#prod_name').val().trim().length > 10) {
        alert("상품명은 5~10자 사이로 입력해주세요.");
        $('#prod_name').focus();
        return false;
    }

    if (atrchk < 3) {
        alert("관광명소는 3개 이상 선택해야 합니다.");
        return false;
    }

    if ($('#prod_outline').val().trim().length < 1) {
        alert("상품개요를 입력해주세요.");
        $('#prod_outline').focus();
        return false;
    }

    if ($('#prod_details').val().trim().length < 25) {
        alert("상세설명을 입력해주세요.(25자 이상)");
        $('#prod_outline').focus();
        return false;
    }

    dateValue = $('#prod_travel_date').val();
    date = new Date(dateValue);
    today = new Date();

    if (dateValue.trim().length < 1) {
        alert("날짜를 입력해주세요.");
        $('#prod_travel_date').focus();
        return false;
    }

    times = today.getTime() - date.getTime();
    if (times > 0) {
        alert("오늘 이후의 날짜를 선택해주세요.");
        $('#prod_travel_date').focus();
        return false;
    }

    return true;
}

function insertProd() {

    $.ajax({
        url: "/HelloWorld/prod/prodInsert.do",
        data: prod,
        type: 'post',
        success: function (res) {
            alert(res);
           if(res=="OK"){
        	   location.href="/HelloWorld/prodListPage/prodListPage.do"
           }
        },
        error: function (xhr) {
            alert("상태  : " + xhr.status);
        },
        dataType: 'json'
    })
}
