function getContextPath() {
	return sessionStorage.getItem("contextpath");
}

$('input[type="text"]').keydown(function() {
  if (event.keyCode === 13) {
    event.preventDefault();
  };
});

$(function(){
	$('.filter-backGround').hide();
	$('.filter-window').hide();
	getAreaList();
	getCategoryList();
});

$('#btnShowMngSite').click(function() {
	$('.filter-backGround').show();
	$('.filter-window').show();
});

$('#btnHideMngSite').click(function() {
	$('.filter-backGround').hide();
	$('.filter-window').hide();
});

/* 지역 리스트 */
function getAreaList(){
	var ctx = getContextPath();
	$('#areaList').empty();
	$.ajax({
		url:'../member/getAreaList',
		dataType:'json',
		success:function(arr){
			$.each(arr,function(index,item){
				var list = '';
				list += '<div class="options">'
				list +=		'<label name="area" id="area_'+index+'" value="'+item.area+'">'+item.area+'<img alt="" src="'+ctx+'/resources/images/cross.png" class="btnDeleteArea" name="'+item.area+'"></label>'
				list += '</div>'
				$('#areaList').append(list);
			});

			$('.btnDeleteArea').click(function() {
				var area = $(this)[0].name;
				deleteArea(area);
				
				getAreaList();
			});
			
		}
	});
};

/* 카테고리 리스트 */
function getCategoryList(){
	var ctx = getContextPath();
	$('#categoryList').empty();
	$.ajax({
		url:'../member/getCategoryList',
		dataType:'json',
		success:function(arr){
			$.each(arr,function(index,item){
				var list = '';
				list += '<div class="options">'
				list +=		'<label name="category" id="categoty_'+index+'" value="'+item.category+'">'+item.category+'<img alt="" src="'+ctx+'/resources/images/cross.png" class="btnDeleteCategory" name="'+item.category+'"></label>'
				list += '</div>'
				$('#categoryList').append(list);
				
			});
			
			$('.btnDeleteCategory').click(function() {
				var category = $(this)[0].name;
				deleteCategory(category);
				
				getCategoryList();
			});
		}
	});
};

/* 카테고리 입력 */
function insertCategory(category){
	$.ajax({
		url:'../member/insertCategory',
		dataType:'json',
		data:{
			'insertCategory':category
		},
		success:function(){
			
		}
	});
};

$('#btnInsertCategory').click(function() {
	var category = $('#insertCategory').val();
	if(category != ''){
		insertCategory(category);
	}
	
	getCategoryList();
});


/* 카테고리 삭제 */
function deleteCategory(category){
	$.ajax({
		url:'../member/deleteCategory',
		dataType:'json',
		data:{
			'deleteCategory':category
		},
		success:function(){
		
		}
	});
};


/* 지역 입력 */
function insertArea(area){
	$.ajax({
		url:'../member/insertArea',
		dataType:'json',
		data:{
			'insertArea':area
		},
		success:function(){
			
		}
	});
};

$('#btnInsertArea').click(function() {
	var area = $('#insertArea').val();
	if(area != ''){
		insertArea(area);
	}
	getAreaList();
});

/* 지역 삭제 */
function deleteArea(area){
	$.ajax({
		url:'../member/deleteArea',
		dataType:'json',
		data:{
			'deleteArea':area
		},
		success:function(){
			getAreaList();
		}
	});
};


/* 새로고침 */
$('#btnReloadMngSite').click(function() {
	getCategoryList();
	getAreaList();
});