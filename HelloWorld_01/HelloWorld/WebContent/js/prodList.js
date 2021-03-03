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
		  $.each(res, function(i, v){
			  code += '  <div class="col-md-4 col-sm-4">';
			  code += '    <div class="single-prod">';
			  code += '      <div class="prod-img">';
			  code += '        <a href="#"> <img src="../images/'+ v.ATTRACTION_PHOTO + '" alt="attraction_photo">';
			  code += '        </a>';
			  code += '      </div>';
			  code += '      <div class="prod-name text-center">';
			  code += '        <a href="#">' + v.PROD_NAME + '</a>';
			  code += '      </div>';
			  code += '    </div>';
			  code += '  </div>';
		  })
		  
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
		  $.each(res, function(i, v){
			  code += '  <div class="col-md-4 col-sm-4">';
			  code += '    <div class="single-prod">';
			  code += '      <div class="prod-img">';
			  code += '        <a href="#"> <img src="../images/'+ v.ATTRACTION_PHOTO + '" alt="attraction_photo">';
			  code += '        </a>';
			  code += '      </div>';
			  code += '      <div class="prod-name text-center">';
			  code += '        <a href="#">' + v.PROD_NAME + '</a>';
			  code += '      </div>';
			  code += '    </div>';
			  code += '  </div>';
		  })
		  	
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
			$.each(res, function(i, v){
				code += '  <div class="col-md-4 col-sm-4">';
				code += '    <div class="single-prod">';
				code += '      <div class="prod-img">';
				code += '        <a href="#"> <img src="../images/'+ v.ATTRACTION_PHOTO + '" alt="attraction_photo">';
				code += '        </a>';
				code += '      </div>';
				code += '      <div class="prod-name text-center">';
				code += '        <a href="#">' + v.PROD_NAME + '</a>';
				code += '      </div>';
				code += '    </div>';
				code += '  </div>';
			})
			
			code += '</div>';
			$('.prodListResult').html(code);
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		},
		dataType : 'json'
	});
};