<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>나의 리뷰</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<style>
#map {
	width: 30%;
}

#star {
	width: 80%;
}

</style>

</head>
<!-- 헤더파일들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더파일들어가는 곳 -->
<body class="goto-here">
	<!-- END nav -->

	<section class="ftco-section ftco-cart">
		<div class="container">
			<div class="row">
				<div class="col-md-12 ftco-animate">
					<div class="cart-list">
						<table class="table table-hover">
							<thead class="table-dark">
								<tr class="text-center">
									<th style="width: 124px;">번호</th>
									<th style="width: 124px;">아이디</th>
									<th style="width: 90px;">체험명</th>
									<th>체험 사진</th>
									<th>제목</th>
									<th>별점</th>
									<th style="width: 124px;">등록일</th>
									<th style="width: 124px;">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="reviewList" items="${reviewList}">
									<tr>
										<td>${reviewList.reviewNum}</td>
										<td>${reviewList.userId}</td>
										<c:if test="${reviewList.actNum == 1}">
											<td>클라이밍</td>
										</c:if>
										<td><img id="map"
											src="${pageContext.request.contextPath}/resources/upload/${reviewList.imgNameKey}"
											alt="logo" class="logo"></td>
										<td><a
											href="${pageContext.request.contextPath }/review/content?review_Num=${reviewList.reviewNum}">
												${reviewList.reviewTitle}</a></td>
										<c:if test="${reviewList.reviewScore == 1.0}">
											<td class="starImg"><img id="star"
												src="${pageContext.request.contextPath}/resources/images/star1.png"></td>
										</c:if>
										<c:if test="${reviewList.reviewScore == 2.0}">
											<td class="starImg"><img id="star"
												src="${pageContext.request.contextPath}/resources/images/star2.png"></td>
										</c:if>
										<c:if test="${reviewList.reviewScore == 3.0}">
											<td class="starImg"><img id="star"
												src="${pageContext.request.contextPath}/resources/images/star3.png"></td>
										</c:if>
										<c:if test="${reviewList.reviewScore == 4.0}">
											<td class="starImg"><img id="star"
												src="${pageContext.request.contextPath}/resources/images/star4.png"></td>
										</c:if>
										<c:if test="${reviewList.reviewScore == 5.0}">
											<td class="starImg"><img id="star"
												src="${pageContext.request.contextPath}/resources/images/star5.png"></td>
										</c:if>
										<td><fmt:formatDate value="${reviewList.reviewDate }"
												type="both" pattern="yy-MM-dd" /></td>
										<td>${reviewList.readcount}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<c:if test="${pageDto.startPage > pageDto.pageBlock }">
						<a
							href="${pageContext.request.contextPath }/member/reviewlist?pageNum=${pageDto.startPage - pageDto.pageBlock}">[10페이지
							이전]</a>
					</c:if>

					<c:forEach var="i" begin="${pageDto.startPage}"
						end="${pageDto.endPage}" step="1">
						<a
							href="${pageContext.request.contextPath}/member/reviewlist?pageNum=${i}">${i}</a>
					</c:forEach>

					<c:if test="${pageDto.endPage < pageDto.pageCount }">
						<a
							href="${pageContext.request.contextPath }/member/reviewlist?pageNum=${pageDto.startPage + pageDto.pageBlock}">[10페이지
							다음]</a>
					</c:if>
				</div>
			</div>
		</div>

	</section>

	<!-- 푸터 들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- 푸터 들어가는 곳 -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


</body>
</html>