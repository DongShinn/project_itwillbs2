<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/actList.css" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<meta charset="UTF-8">
<title>list.jsp</title>
<script type="text/javascript" charset="utf-8">
	sessionStorage.setItem("contextpath", "${pageContext.request.contextPath}");
</script>
</head>
<!-- 헤더파일들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더파일들어가는 곳 -->
<body>
<input type="hidden" value="${sessionScope.userId}" id="userId" class="userId" name="userId">
<section class="shop spad">
	 <div class="hero-wrap hero-bread" style="background-image: url(${pageContext.request.contextPath}/resources/images/bg_tennis.jpg);">
		<div class="container">
			<div class="latest-news mt-150 mb-150">
				
			</div>
		</div>
	</div>		
</section>
<div class="container">
	<div class="shop__option">
		<div class="row">
	   		<div class="col-lg-7 col-md-7">
	    		<div class="shop__option__search">
	            	<form action="${pageContext.request.contextPath}/activity/list?pageNum=${actPageDto.currentPage}">
						<div class="nice-select like-content" tabindex="0">
							<select style="display: block;" name="category" id="category" class="searchForm">
	                			<option value="" selected>ALL</option>
		                    	<c:forEach var="categoriesDto" items="${categoryList}">
		                    		<option value="${categoriesDto.category}" <c:if test="${categoriesDto.category eq actPageDto.scCategory}">selected</c:if>>${categoriesDto.category}</option>
		                    	</c:forEach>
	                		</select>
						</div>		                	
	                	<input type="text" placeholder="Search"  class="searchForm" name="title" id="title" value="${actPageDto.scTitle}">
	                	<button id="searchList">
		                	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
		                		<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
		                	</svg>
						</button>
<!-- 						<label for="wishListCheck" id="wishLabel"></label> -->
						<input type="checkbox" value="" id="wishListCheck" name="sessionId" <c:if test="${actPageDto.sessionId ne ''}">checked="checked"</c:if> >
	            	</form>
	        	</div>
	    	</div>
	    </div>
	</div>
	<div class="row" id="actList">
<%-- 		<c:forEach var="activityDto" items="${activityList}"> --%>
<!-- 			<div class="col-lg-4 col-md-6"> -->
<!-- 				<div class="single-latest-news" > -->
<%--  					<a href="${pageContext.request.contextPath}/activity/actContent?actNum=${activityDto.actNum}"> --%>
<!-- 						<div class="latest-news-bg news-bg-1"> -->
<%-- 							<img alt="testImg" src="${pageContext.request.contextPath}/resources/upload/${activityDto.imgNameKey}" width=500px height=250px/> --%>
<!-- 						</div> -->
<!-- 					</a> -->
<!-- 					<div class="news-text-box"> -->
<%-- 						<h3><a href="${pageContext.request.contextPath}/activity/actContent?actNum=${activityDto.actNum}">${activityDto.actTitle}</a></h3> --%>
<!-- 						<p class="blog-meta"> -->
<%-- 							<span class="author"><img alt="" src="${pageContext.request.contextPath}/resources/images/building.png" width=13px height=13px> ${activityDto.companyName}</span> --%>
<%-- 							<span class="date"><img alt="" src="${pageContext.request.contextPath}/resources/images/marker.png" width=13px height=13px>${activityDto.actLocation}</span> --%>
<!-- 						</p> -->
<%-- 						<p class="excerpt">${activityDto.actPrice} 원</p> --%>
<%-- 						<a href="${pageContext.request.contextPath}/activity/actContent?actNum=${activityDto.actNum}" class="read-more-btn">read more</a> --%>
<!-- 					</div>  -->
<!-- 				</div> -->
<!-- 			</div> -->
<%-- 		</c:forEach> --%>
	</div>
</div>
<div class="row">
	<div class="container">
		<input type="button" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath }/activity/write'" value="상품 등록"/>
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="pagination-wrap">
					<ul>
						<c:choose>
							<c:when test="${actPageDto.currentPage != '1'}">
								<li><a href="${pageContext.request.contextPath }/activity/list?pageNum=${actPageDto.currentPage-1}&title=${actPageDto.scTitle}&category=${actPageDto.scCategory}&sessionId=${actPageDto.sessionId}">Prev</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath }/activity/list?pageNum=${actPageDto.startPage}&title=${actPageDto.scTitle}&category=${actPageDto.scCategory}&sessionId=${actPageDto.sessionId}">Prev</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${actPageDto.startPage}" end="${actPageDto.endPage}" step="1">
							<li><a class="active" href="${pageContext.request.contextPath }/activity/list?pageNum=${i}&title=${actPageDto.scTitle}&category=${actPageDto.scCategory}&sessionId=${actPageDto.sessionId}">${i}</a></li>
						</c:forEach>
						<c:choose>
							<c:when test="${actPageDto.currentPage < actPageDto.pageCount}">
								<li><a href="${pageContext.request.contextPath }/activity/list?pageNum=${actPageDto.currentPage+1}&title=${actPageDto.scTitle}&category=${actPageDto.scCategory}&sessionId=${actPageDto.sessionId}">Next</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#">Next</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- <br> -->
<br><br><br><br>

<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 들어가는 곳 -->

<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.3.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/js/actList.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> --%>
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