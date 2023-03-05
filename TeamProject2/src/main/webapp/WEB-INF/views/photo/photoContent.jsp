<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/script/jquery-3.6.3.js"></script>
<script type="text/javascript">

</script>

<style>
.table tbody tr td{
	padding: 10px 10px;
}
</style>

</head>
<body class="goto-here">
<!-- 헤더파일들어가는 곳 -->
<%-- <jsp:include page="../inc/top.jsp"></jsp:include> --%>
<!-- 헤더파일들어가는 곳 -->

<!-- 여기에 작성 -->

<!-- MEMO 카테고리 넣어야함 cb_category -->

<section class="ftco-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 mb-5 ftco-animate">
				<a href="${pageContext.request.contextPath}/resources/images/sea.jpg" class="image-popup"><img src="${pageContext.request.contextPath}/resources/images/sea.jpg" class="img-fluid" alt="Colorlib Template"></a>
			</div>
			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
				<h3>${photoDTO.userId}</h3>
				<div class="rating d-flex">
			<p class="text-left mr-4">
				<a href="#" class="mr-2" style="color: #000;">작성일 <span style="color: #bbb;"><fmt:formatDate value="${photoDTO.photoDate}" pattern="yyyy.MM.dd"/></span></a>
			</p>
			<p class="text-left">
				<a href="#" class="mr-2" style="color: #000;">조회수 <span style="color: #bbb;">${photoDTO.photoReadcount}</span></a>
			</p>
		</div>
				<p>${photoDTO.photoContent}</p>
		<div class="row mt-4">
			<div class="col-md-6">
				<div class="form-group d-flex">

			</div>
			<div class="w-100"></div>
			<div class="input-group col-md-6 d-flex mb-3">

       	</div>
       	<div class="w-25"></div>

      	</div>

	     <div class="container" style="padding: 0px 0px 60px">
			<input type="button" value="목록" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/photo/list'">
			<c:if test="${photoDTO.userId eq sessionScope.userId}">
				<input type="button" value="수정" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/photo/update?num=${photoDTO.photoNum}'">
				<input type="button" value="삭제" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/photo/delete?num=${photoDTO.photoNum}'">
			</c:if>
		</div>
			</div>
		</div>
		</div>
	</div>
</section>

	
<!-- <div class="col-lg-12 ftco-animate text-center"> -->
<!-- 	<div class="container" style="padding: 0px 0px 60px"> -->
<%-- 		<input type="button" value="목록" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/photo/list'"> --%>
<%-- 		<c:if test="${photoDTO.userId eq sessionScope.userId}"> --%>
<%-- 			<input type="button" value="수정" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/photo/update?num=${photoDTO.photoNum}'"> --%>
<%-- 			<input type="button" value="삭제" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/photo/delete?num=${photoDTO.photoNum}'"> --%>
<%-- 		</c:if> --%>
<!-- 	</div> -->
<!-- </div> -->


<!-- 여기에 작성 -->


<!-- 푸터 들어가는 곳 -->
<%-- <jsp:include page="../inc/bottom.jsp"></jsp:include> --%>
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