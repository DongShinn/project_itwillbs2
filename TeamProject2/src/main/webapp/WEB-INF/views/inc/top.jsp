<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>

	<!-- 회원가입 | 로그인 | 로그아웃 | 마이페이지 | 관리자페이지 -->
	<div class="py-1 bg-primary">
	<div class="container">
			<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
				<div class="col-lg-12 d-block">
					<div class="row d-flex">
						<div class="col-md pr-4 d-flex topper align-items-center">
							<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
							<span class="text display-5">뭘 넣을까용1</span>
						</div>
						<div class="col-md pr-4 d-flex topper align-items-center">
							<div class="icon mr-2 d-flex justify-content-center align-items-center">
								<span class="icon-paper-plane"></span>
							</div>
							<span class="text">뭘 넣을까용2 꼭 안넣어도 되긴 함 </span>
						</div>
						<div
							class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">

							<!-- 로그인 X -->
							<c:if test="${ empty sessionScope.userId }">
								<span class="text">
									<a href="${pageContext.request.contextPath}/member/userlogin" style="color: #fff;">로그인</a> |
								</span>
							</c:if>

							<!-- 로그인 O -->
							<c:if test="${ ! empty sessionScope.userId }">
								<span class="text"> ${sessionScope.userId} 님 (●'◡'●)✨ | 
								<a href="${pageContext.request.contextPath}/member/logout" style="color: #fff;">로그아웃</a> |
								</span> 
							</c:if>
							
<%-- 							<c:if test="${ ! empty sessionScope.userId }"> --%>
<%-- 								<c:if test="${! empty sessionScope.userId == 'admin' }"> --%>
									<span class="text1">
										<a href="${pageContext.request.contextPath}/main/adminMy" style="color: #fff;">관리자</a>
									</span>
<%-- 								</c:if> --%>
<%-- 							</c:if> --%>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<!-- 상단 메뉴바 -->
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/main/main" style="font-size: 25px;">😍team 2😍</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu </button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/activity/list" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 16px;">activity</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/activity/list">운</a>
							<a class="dropdown-item" href="#">동</a>
							<a class="dropdown-item" href="#">하</a>
							<a class="dropdown-item" href="#">세</a>
							<a class="dropdown-item" href="#">요</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/crew/list" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 16px;">community</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/crew/list">운동할사람~~</a>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/photo/list">#오운완</a>
						</div>
					</li>
					<li class="nav-item"><a href="#" class="nav-link" style="font-size: 16px;">Q&A</a></li>
					<li class="nav-item"><a href="${pageContext.request.contextPath}/review/write" class="nav-link" style="font-size: 16px;">review</a></li>
					<li class="nav-item"><a href="#" class="nav-link" style="font-size: 16px;">notice</a></li>
					
					<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 16px;">mypage</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" href="#">회원정보</a>
							<a class="dropdown-item" href="#">구매내역</a>
							<a class="dropdown-item" href="#">등</a>
							<a class="dropdown-item" href="#">등</a>
							<a class="dropdown-item" href="#">등</a>
						</div>
					</li>
					<li class="nav-item cta cta-colored"><a href="#" class="nav-link" style="font-size: 16px;"><span class="icon-notifications"></span>[0]</a></li>
				</ul>
			</div>
		</div>
	</nav>
<!-- END nav -->
</header>