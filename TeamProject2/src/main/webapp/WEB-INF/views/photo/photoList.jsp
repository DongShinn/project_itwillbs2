<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Photo</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/photo.css">
<script>
function modal(id) {
    var zIndex = 9999;
    var modal = document.getElementById(id);

    // 모달 div 뒤에 희끄무레한 레이어
    var bg = document.createElement('div');
    bg.setStyle({
        position: 'fixed',
        zIndex: zIndex,
        left: '0px',
        top: '0px',
        width: '100%',
        height: '100%',
        overflow: 'auto',
        // 레이어 색갈은 여기서 바꾸면 됨
        backgroundColor: 'rgba(0,0,0,0.4)'
    });
    document.body.append(bg);

    // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
    modal.querySelector('.modal_close_btn').addEventListener('click', function() {
        bg.remove();
        modal.style.display = 'none';
    });

    modal.setStyle({
        position: 'fixed',
        display: 'block',
        boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

        // 시꺼먼 레이어 보다 한칸 위에 보이기
        zIndex: zIndex + 1,

        // div center 정렬
        top: '50%',
        left: '50%',
        transform: 'translate(-50%, -50%)',
        msTransform: 'translate(-50%, -50%)',
        webkitTransform: 'translate(-50%, -50%)'
    });
}

// Element 에 style 한번에 오브젝트로 설정하는 함수 추가
Element.prototype.setStyle = function(styles) {
    for (var k in styles) this.style[k] = styles[k];
    return this;
};

document.getElementById('chatBot').addEventListener('click', function() {
    // 모달창 띄우기
    modal('my_modal');
});
</script>


<style>
.table tbody tr td{
	padding: 10px 10px;
}

</style>

</head>
<body class="goto-here">
<!-- 헤더파일들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더파일들어가는 곳 -->

<!--
	TODO
	- 화면제어
		1. 글 작성: 로그인 X -> 글 작성 불가 -> alert: 로그인 후 작성 가능합니다. 로그인 화면으로 이동하시겠습니까? (모달창)
		2. 댓글 작성: 로그인 X -> 글 작성 불가 -> alert: 로그인 후 작성 가능합니다. 로그인 화면으로 이동하시겠습니까? (모달창)
		3. 글 삭제: 본인만 가능하게! 	
-->

<div class="col-lg-12 ftco-animate">
<div class="container">

	<div class="text text-right">

		<!-- test -->
		<div id="my_modal">
    		<iframe src="${pageContext.request.contextPath}/photo/content?num=1" id="chat_iframe">대체 내용</iframe>  
    		<a class="modal_close_btn">닫기</a>
		</div>
	
		<button  id="chatBot">버튼</button>	
		<!-- test -->

		

		<p><a href="${pageContext.request.contextPath}/photo/write" class="btn btn-primary">글쓰기</a></p>
	</div>
	<div class="row">
		<c:forEach items="${photoList}" var="dto">
			<div class="col-6 col-md-4" style="padding: 15px 15px 15px;">
				<div class="card border-light mb-3 h-100">
					<div class="card-header">
						<span class="text-left"><b>${dto.photoNum} / ${dto.userId}</b></span>
					</div>
					<a href="${pageContext.request.contextPath}/photo/content?num=${dto.photoNum}">
						<img src="${pageContext.request.contextPath}/resources/images/sea.jpg" class="card-img-top" style="height: 348px;" alt="...">
					</a>
					<ul class="list-group list-group-flush">
						<li class="list-group-item text-center">
							<span class="ion-md-heart-empty col-md-4" style="color: #000;">
								0
							</span>
							<span class="icon-chat col-md-4" style="color: #000;">
								0								
							</span>
							<span class="icon-eye col-md-4" style="color: #000;">
								${dto.photoReadcount}
							</span>
<!-- 							<span class="icon-heart"></span>좋아요 00개 -->
<!-- 							<span class="icon-chat"></span>댓글(댓글수) -->
<!-- 							<span class="icon-eye"></span>조회(조회수) -->
						</li>
					</ul>
					<div class="card-body">
						<p class="card-text photoword">
							<a href="${pageContext.request.contextPath}/photo/content?num=${dto.photoNum}">${dto.photoContent}</a>
						</p>
					</div>
					<div class="card-footer">
						<small class="text-muted"><fmt:formatDate value="${dto.photoDate}" pattern="yyyy.MM.dd HH:mm:ss"/></small>
						<c:if test="${dto.userId eq sessionScope.userId}">
							<a href="${pageContext.request.contextPath}/photo/update?num=${dto.photoNum}"><small class="text-muted">수정</small></a>
							<a href="${pageContext.request.contextPath}/photo/delete?num=${dto.photoNum}"><small class="text-muted">삭제</small></a>
						</c:if>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>



<!-- 페이징 -->
<!-- 10페이지 이전 -->
	<div class="text text-center" style="padding: 0px 0px 60px">
		<c:if test="${pageDTO.startPage > pageDTO.pageBlock}">
			<a href="${pageContext.request.contextPath}/photo/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}">[10페이지 이전]</a>
		</c:if>
		
		<!-- 1페이지 이전 -->
		<c:if test="${pageDTO.currentPage > 1}">
			<a href="${pageContext.request.contextPath}/photo/list?pageNum=${pageDTO.currentPage-1}">[1페이지 이전]</a>
		</c:if>
		
		
		<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
			<a href="${pageContext.request.contextPath}/photo/list?pageNum=${i}">${i}</a>
		</c:forEach>
		
		<!-- 1페이지 다음 -->
		<c:if test="${pageDTO.currentPage < pageDTO.pageCount}">
			<a href="${pageContext.request.contextPath}/photo/list?pageNum=${pageDTO.currentPage+1}">[1페이지 다음]</a>
		</c:if>
		
		
		<!-- 10페이지 다음 -->
		<c:if test="${pageDTO.endPage < pageDTO.pageCount}">
			<a href="${pageContext.request.contextPath}/photo/list?pageNum=${pageDTO.startPage+pageDTO.pageBlock}">[10페이지 다음]</a>
		</c:if>

	</div>

	</div> 
</div>



<!-- 여기에 작성 -->


<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 들어가는 곳 -->

<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>