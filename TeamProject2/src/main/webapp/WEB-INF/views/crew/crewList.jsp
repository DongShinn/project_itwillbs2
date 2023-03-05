<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crew</title>
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

<style>
.table tbody tr td{
	padding: 5px 5px;
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


<!-- 여기에 작성 -->

<section class="ftco-section ftco-degree-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-2 sidebar">
				<div class="sidebar-box">
            		<h3 class="heading">community</h3>
           			<ul class="categories">
                		<li><a href="#">crew</a></li>
                		<li><a href="#">photo</a></li>
              		</ul>
            	</div>        
			</div>        

			<div class="col-lg-10">
				<div class="container">			
					<table class="table table-hover col-lg-12">
						<tr><td>글번호</td>
							<td>지역</td>
							<td>글제목</td>
							<td>작성자</td>
							<td>작성일</td>
							<td>조회수</td>
							<td>추천</td></tr>
						<c:forEach items="${crewList}" var="dto">
							<tr><td>${dto.crewNum}</td>
								<td style="color: #FF5500;">${dto.crewCategory}</td>
								<td><a href="${pageContext.request.contextPath}/crew/content?num=${dto.crewNum}">${dto.crewSubject}</a>
									<b style="color: #FF5500;">[${dto.replyCount}]</b></td>
								<td>${dto.userId}</td>
								<td><fmt:formatDate value="${dto.crewDate}" pattern="yyyy.MM.dd"/></td>
								<td>${dto.crewReadcount}</td>
								<td>${dto.likeCount}</td></tr>
						</c:forEach>
					</table>
					<div class="text text-right">
						<p><a href="${pageContext.request.contextPath}/crew/write" class="btn btn-primary">글쓰기</a></p>
					</div>
	
	
					<!-- 페이징 -->
					<!-- 10페이지 이전 -->
					<div class="text text-center" style="padding: 0px 0px 60px">
						<c:if test="${pageDTO.startPage > pageDTO.pageBlock}">
							<a href="${pageContext.request.contextPath}/crew/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}">[10페이지 이전]</a>
						</c:if>
						
						<!-- 1페이지 이전 -->
						<c:if test="${pageDTO.currentPage > 1}">
							<a href="${pageContext.request.contextPath}/crew/list?pageNum=${pageDTO.currentPage-1}">[1페이지 이전]</a>
						</c:if>
						
						
						<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
							<a href="${pageContext.request.contextPath}/crew/list?pageNum=${i}">${i}</a>
						</c:forEach>
						
						<!-- 1페이지 다음 -->
						<c:if test="${pageDTO.currentPage < pageDTO.pageCount}">
							<a href="${pageContext.request.contextPath}/crew/list?pageNum=${pageDTO.currentPage+1}">[1페이지 다음]</a>
						</c:if>
						
						
						<!-- 10페이지 다음 -->
						<c:if test="${pageDTO.endPage < pageDTO.pageCount}">
							<a href="${pageContext.request.contextPath}/crew/list?pageNum=${pageDTO.startPage+pageDTO.pageBlock}">[10페이지 다음]</a>
						</c:if>
				
					</div>
				</div>
			</div> 
		</div>
	</div>
</section>

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