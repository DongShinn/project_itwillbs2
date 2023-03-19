<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>LIKEFIT</title>
  
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminMy.css">
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
 
<script type="text/javascript" charset="utf-8">
	sessionStorage.setItem("contextpath", "${pageContext.request.contextPath}");
</script>
</head>

<body class="goto-here">  
  	<!-- 헤더파일들어가는 곳 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<!-- 헤더파일들어가는 곳 -->
<%-- 	<jsp:include page="../member/popup.jsp"></jsp:include> --%>
	<!-- 메인 이미지 -->
	<!-- 메인 이미지 -->
	
<!-- 	 마이페이지 링크 -->
	<c:if test="${empty sessionScope.userId}">
		<c:redirect url="/member/login"></c:redirect>
	</c:if>
	<section class="ftco-section">
		<div class="container">
			<div class="row no-gutters ftco-services">
				<div class="col-md-3 text-center d-flex align-self-stretch ftco-animate fadeInUp ftco-animated">
					<div class="media block-6 services mb-md-0 mb-4">
						<div onclick="location.href='${pageContext.request.contextPath }/member/userinfo' " class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
							<img alt="" src="${pageContext.request.contextPath}/resources/images/icon_userlist.png" width="70px">
						</div>
						<div  class="media-body">
							<h3 class="heading">일반 회원 정보 조회</h3>
						</div>
					</div>      
				</div>
				<div class="col-md-3 text-center d-flex align-self-stretch ftco-animate fadeInUp ftco-animated">
					<div class="media block-6 services mb-md-0 mb-4">
 						<div onclick="location.href='${pageContext.request.contextPath }/member/companyinfo' " class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
							<img alt="" src="${pageContext.request.contextPath}/resources/images/icon_companylist.png" width="70px">
						</div>
						<div  class="media-body">
							<h3 class="heading">기업 회원 정보 조회</h3>
						</div>
					</div>    
				</div>
				
				<div class="text-center d-flex align-self-stretch ftco-animate" id="btnShowMngSite" style="width: 155px">
	      			<div class="media block-6 services mb-md-0 mb-4">
		            		<div class="icon cl d-flex justify-content-center align-items-center mb-2">
		          				<img alt="" src="${pageContext.request.contextPath}/resources/images/settings.png" width="70px">
			            	</div>
		            	<div class="media-body">
		              		<h3 class="heading">사이트 관리</h3>
		            	</div>
	           		</div>    
	          	</div>
			</div>
		</div>
	</section>
	
	<div class="filter-backGround">
		<div class="filter-window">
			<div class="filter-content">
				<header class="filter-header">
					<h1 class="filter-header-text">사이트 관리</h1>
					<img id="btnReloadMngSite" alt="" src="${pageContext.request.contextPath}/resources/images/reload.png" width=13px height=13px >
					<img id="btnHideMngSite" alt="" src="${pageContext.request.contextPath}/resources/images/cross.png" width=13px height=13px >
				</header>
				<div class="filter-option">
					<section class="section-option">
						<h2>카테고리</h2>
						<div class="divInsert">
							<form name="formInsertCategory" id="formInsertCategory">
								<input type="text" placeholder="카테고리 입력" class="insertCategory" name="insertCategory" id="insertCategory">
								<img id="btnInsertCategory" alt="" src="${pageContext.request.contextPath}/resources/images/search.png" width=13px height=13px>
							</form>
						</div>
						<div class="option-detail">
							<div id="categoryList">
							</div>
						</div>
					</section>
				</div>
				<div class="filter-option">
					<section class="section-option">
						<h2>지역</h2>
						<div class="divInsert">
							<form name="formInsertArea" id="formInsertArea">
								<input type="text" placeholder="지역 입력" class="insertArea" name="insertArea" id="insertArea">
								<img id="btnInsertArea" alt="" src="${pageContext.request.contextPath}/resources/images/search.png" width=13px height=13px>
							</form>
						</div>
						<div class="option-detail">
							<div id="areaList">
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>	
	</div>
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
<script src="${pageContext.request.contextPath}/resources/js/adminMy.js"></script>
    
  </body>
</html>