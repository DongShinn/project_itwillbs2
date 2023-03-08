
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
						var actLocation = item.actLocation;
						var location = getLocation(location);
						
						console.log(category);
						console.log(title);
						console.log(sessionId);
						
						var list = '';
						list += '<div class="col-lg-4 col-md-6">'
						list += 	'<div class="single-latest-news">'
						list +=			'<a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'">'
						list +=			'<div class="latest-news-bg news-bg-1">'
						list +=				'<img alt="" src="'+ctx+'/resources/upload/'+item.imgNameKey+'" width=500px height=250px/>'		
						list +=			'</div>'
						list +=			'</a>'
						list +=			'<div class="news-text-box">'
						list +=				'<h3><a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'">'+item.actTitle+'</a></h3>'
						list +=				'<p class="blog-meta">'
						list +=					'<span class="author"><img alt="" src="'+ctx+'/resources/images/building.png" width=13px height=13px/>'+item.companyName+'</span>'
						list +=					'<span class="date"><img alt="" src="'+ctx+'/resources/images/marker.png" width=13px height=13px/>'+item.actLocation+'</span>'
						list +=				'</p>'
						list +=				'<p class="excerpt">'+item.actPrice+' 원</p>'
						list +=				'<a href="'+ctx+'/activity/actContent?actNum='+item.actNum+'" class="read-more-btn">read more</a>'
						list +=			'</div>'
						list += 	'</div>'
						list += '</div>'
						// list = list.replaceAll("%20", ' ').replaceAll("%3E", '>').replaceAll("%3C", '<');
						$('#actList').append(list);
						
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


function getLocation(actLocation){
	var actLocation = actLocation;
	$.ajax({
		url:'https://dapi.kakao.com/v2/local/search/address.json?query='+encodeURIComponent(actLocation),
		type:'GET',
		headers: {'Authorization' : 'KakaoAK d50a74d7127bba5b2b8fbb16bcd818f8'},
		success:function(data){
	       var location = data.documents[0].road_address.region_2depth_name;
	       console.log(location);
	       
	       return location;
		},
		error : function(e){
			console.log(e);
	   }
	});
};
