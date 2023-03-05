
// $(document).ready(function(getList){
function getList(){
		var ctx = getContextPath();
		function getContextPath() {
			return sessionStorage.getItem("contextpath");
		}
//		$('#wishListCheck').click(function(){
			$('#actList').empty();
			$.ajax({
				url: "./slist",
				dataType:'json',
				data:{
					'category':$('#category').val(),
					'title':$('#title').val(),
					'sessionId':$('#wishListCheck').val()
				},
				success:function(arr){
					$.each(arr,function(index,item){
						var category = $('#category').val();
						var title = $('#title').val();
						var sessionId = $('#wishListCheck').val();
						console.log(category);
						console.log(title);
						console.log(sessionId);
						
						var list = '';
						list += '<div class="col-lg-4 col-md-6">'
						list += '<div class="single-latest-news">'
						list +=	'<a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'">'
						list +=		'<div class="latest-news-bg news-bg-1">'
						list +=			'<img alt="" src="'+ctx+'/resources/upload/'+item.imgNameKey+'" width=500px height=250px/>'		
						list +=		'</div>'
						list +=	'</a>'
						list +=	'<div class="news-text-box">'
						list +=		'<h3><a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'">'+item.actTitle+'</a></h3>'
						list +=		'<p class="blog-meta">'
						list +=			'<span class="author"><img alt="" src="'+ctx+'/resources/images/building.png" width=13px height=13px/>'+item.companyName+'</span>'
						list +=			'<span class="date"><img alt="" src="'+ctx+'/resources/images/marker.png" width=13px height=13px/>'+item.actLocation+'</span>'
						list +=		'</p>'
						list +=		'<p class="excerpt">'+item.actPrice+' 원</p>'
						list +=		'<a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'" class="read-more-btn">read more</a>'
						list +=	'</div>'
						list += '</div>'
						list += '</div>'
						list = list.replaceAll("%20", ' ').replaceAll("%3E", '>').replaceAll("%3C", '<');
						$('#actList').append(list);
						
						/*
						$('#actList').append('<div class="col-lg-4 col-md-6">');
						$('#actList').append('<div class="single-latest-news">');
						$('#actList').append('<a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'">');
						$('#actList').append('<div class="latest-news-bg news-bg-1">');
						$('#actList').append('<img alt="" src="'+ctx+'/resources/upload/'+item.imgNameKey+'" width=500px height=250px />');
						$('#actList').append('</div>');
						$('#actList').append('</a>');
						$('#actList').append('<div class="news-text-box">');
						$('#actList').append('<h3><a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'">'+item.actTitle+'</a></h3>');
						$('#actList').append('<p class="blog-meta">');
						$('#actList').append('<span class="author"><img alt="" src="'+ctx+'/resources/images/building.png" width=13px height=13px/>'+item.companyName+'</span>');
						$('#actList').append('<span class="date"><img alt="" src="'+ctx+'/resources/images/marker.png" width=13px height=13px/>'+item.actLocation+'</span>');
						$('#actList').append('</p>');
						$('#actList').append('<p class="excerpt">'+item.actPrice+' 원</p>');
						$('#actList').append('<a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'" class="read-more-btn">read more</a>');
						$('#actList').append('</div>'); 
						$('#actList').append('</div>'); 
						$('#actList').append('</div>'); 
						
						$('#actList').append('<a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'"><div class="latest-news-bg news-bg-1"><img alt="" src="'+ctx+'/resources/upload/'+item.imgNameKey+'" width=500px height=250px /></div></a><div class="news-text-box"><h3><a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'">'+item.actTitle+'</a></h3><p class="blog-meta"><span class="author"><img alt="" src="'+ctx+'/resources/images/building.png" width=13px height=13px/>'+item.companyName+'</span><span class="date"><img alt="" src="'+ctx+'/resources/images/marker.png" width=13px height=13px/>'+item.actLocation+'</span></p><p class="excerpt">'+item.actPrice+' 원</p><a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'" class="read-more-btn">read more</a></div>');
						*/
					});
				}
			});
//		});
//});
};

$(function(){
	var wlCheck = $('#wishListCheck').is(':checked');
	var userId=$('#userId').val();
	$('#wishListCheck').val(userId);
	$(document).on("click", "#wishListCheck", function () {
		
		wlCheck = $('#wishListCheck').is(':checked');
		console.log(wlCheck);
		if(wlCheck){
			$('#wishListCheck').val(userId);
		} 
		if(!wlCheck){
			$('#wishListCheck').val("");
		}
	});
});

$(function(){
	getList();
});


$('#wishListCheck').click(function() {
	getList();
});

$("#category").on('change',function(){
	getList();
});



