/**
 * 
 */

// data - All
readProdAll = function(){
	
	$.ajax({
		url : '/HelloWorld/prod/selectProdAll.do',
		type : 'post',
		success : function(res){
			code = '    <div class="row">';
			if(res != null && res.length > 0){
				
			  $.each(res, function(i, v){
				  code += '  <div class="col-md-4 col-sm-4">';
				  code += '    <div class="single-prod">';
				  code += '      <div class="prod-img">';
				  code += '        <a href="../prod/SelectProd.do?prod_no=' + v.PROD_NO + '" class="prodMove" id="prod_no' + v.PROD_NO + '"> <img src="../images/attraction/'+ v.ATTRACTION_PHOTO + '" alt="attraction_photo">';
				  code += '        </a>';
				  code += '      </div>';
				  code += '      <div class="prod-name text-center">';
				  code += '        <a href="../prod/SelectProd.do?prod_no=' + v.PROD_NO + '">' + v.PROD_NAME + '</a>';
				  code += '      </div>';
				  code += '    </div>';
				  code += '  </div>';
			  })
			  
			}else{
				code += '<h4 class="prodNone">해당 지역의 여행 상품이 존재하지 않습니다.</h4>'
			}
		  
			code += '</div>';
		  $('.prodListResult').html(code);
		  
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	})
}

// data - region
readProdList = function(region){
	
	$.ajax({
		url : '/HelloWorld/prod/selectByRegion.do',
		type : 'post',
		data : {'region' : region},
		success : function(res){
		  code = '    <div class="row">';
		  if(res != null && res.length > 0){
			  $.each(res, function(i, v){
				  code += '  <div class="col-md-4 col-sm-4">';
				  code += '    <div class="single-prod">';
				  code += '      <div class="prod-img">';
				  code += '        <a href="../prod/SelectProd.do?prod_no=' + v.PROD_NO + '" class="prodMove" id="prod_no' + v.PROD_NO + '"> <img src="../images/attraction/'+ v.ATTRACTION_PHOTO + '" alt="attraction_photo">';
				  code += '        </a>';
				  code += '      </div>';
				  code += '      <div class="prod-name text-center">';
				  code += '        <a href="../prod/SelectProd.do?prod_no=' + v.PROD_NO + '">' + v.PROD_NAME + '</a>';
				  code += '      </div>';
				  code += '    </div>';
				  code += '  </div>';
			  })
		  	
		  }else{
			  code += '<h4 class="prodNone">해당 지역의 여행 상품이 존재하지 않습니다.</h4>'
		  }
	      code += '</div>';
//		  alert(code);
		  $('.prodListResult').html(code);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	});
};

// data 없음(그냥 특별시 및 광역시)
readProdList2 = function(){
	
	$.ajax({
		url : '/HelloWorld/prod/selectByBigRegion.do',
		type : 'post',
		success : function(res){
			code = '    <div class="row">';
			if(res != null && res.length > 0){
				$.each(res, function(i, v){
					code += '  <div class="col-md-4 col-sm-4">';
					code += '    <div class="single-prod">';
					code += '      <div class="prod-img">';
					  code += '        <a href="../prod/SelectProd.do?prod_no=' + v.PROD_NO + '" class="prodMove" id="prod_no' + v.PROD_NO + '"> <img src="../images/attraction/'+ v.ATTRACTION_PHOTO + '" alt="attraction_photo">';
					code += '        </a>';
					code += '      </div>';
					code += '      <div class="prod-name text-center">';
					code += '        <a href="../prod/SelectProd.do?prod_no=' + v.PROD_NO + '">' + v.PROD_NAME + '</a>';
					code += '      </div>';
					code += '    </div>';
					code += '  </div>';
				})
			
			}else{
				code += '<h4 class="prodNone">해당 지역의 여행 상품이 존재하지 않습니다.</h4>'
			}
			code += '</div>';
			$('.prodListResult').html(code);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	});
};

readProdDetail = function(){
	$.ajax({
		url : '/HelloWorld/prod/SelectProd.do',
		type : 'get',
		data : {'prod_no' : vpNum},
		success : function(res){
			
		},
		error : function(xhr){
			alert("상태 : " + xhr.status)
		}
	});
};

