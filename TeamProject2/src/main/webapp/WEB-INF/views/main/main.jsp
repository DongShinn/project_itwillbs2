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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">

<script type="text/javascript" charset="utf-8">
	sessionStorage.setItem("contextpath", "${pageContext.request.contextPath}");
</script>

</head>

<body class="goto-here">  
 <!-- 헤더파일들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더파일들어가는 곳 -->

	<!-- 메인 이미지 -->
    <section id="home-section" class="hero">
		<div class="home-slider owl-carousel">
	      <div class="slider-item" style="background-image: url(${pageContext.request.contextPath}/resources/images/ex2.png); color:#FFF;">
	        <div class="container">
	          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">
	            <div class="col-md-12 ftco-animate text-right" style="margin: 0px 700px 480px 0px;">
	              <h2 class="subheading mb-4" style="color:#000;">Give it a try, you'll love the workout!</h2>
	              <p><a href="${pageContext.request.contextPath}/activity/list" class="btn btn-primary">ACTIVITY</a></p>
	            </div>

	          </div>
	        </div>
	      </div>
	      <div class="home-slider owl-carousel">
	      <div class="slider-item" style="background-image: url(${pageContext.request.contextPath}/resources/images/ex3.png);">
	        <div class="container">
	          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">
	            <div class="col-md-12 ftco-animate text-right" style="margin: 470px -250px 460px 0px;">
	              <h2 class="subheading mb-4" style="color:#000;">Give it a try, you'll love the workout!</h2>
	              <p><a href="${pageContext.request.contextPath}/activity/list" class="btn btn-primary">ACTIVITY</a></p>
	            </div>

	          </div>
	        </div>
	      </div>
	 	</div>
		</div>
    </section>
	<!-- 메인 이미지 -->

	
	<!-- 카테고리 -->
	<section class="ftco-section">
		<div class="container">		
			<div class="row no-gutters ftco-services">
			
				<div class="text-center d-flex align-self-stretch ftco-animate" style="width: 155px">
		            <div class="media block-6 services mb-md-0 mb-4">
		            	<a href="${pageContext.request.contextPath}/activity/list?category=배드민턴">
						<div class="icon cl active d-flex justify-content-center align-items-center mb-2">
							<img alt="배드민턴" src="${pageContext.request.contextPath}/resources/images/badminton.png" width="70px">
           				</div>
              			</a>
             			<div class="media-body">
                			<h3 class="heading">배드민턴</h3>
              			</div>
            		</div>      
          		</div>
          		<div class="text-center d-flex align-self-stretch ftco-animate" style="width: 155px">
           			<div class="media block-6 services mb-md-0 mb-4">
           				<a href="${pageContext.request.contextPath}/activity/list?category=요가/필라테스">
              			<div class="icon cl d-flex justify-content-center align-items-center mb-2">
            				<img alt="요가" src="${pageContext.request.contextPath}/resources/images/yoga.png" width="70px">
			            </div>
			            </a>
              			<div class="media-body">
                			<h3 class="heading">요가/필라테스</h3>
              			</div>
           			</div>    
          		</div>
				<div class="text-center d-flex align-self-stretch ftco-animate" style="width: 155px">
					<div class="media block-6 services mb-md-0 mb-4">
						<a href="${pageContext.request.contextPath}/activity/list?category=헬스">
						<div class="icon cl  d-flex justify-content-center align-items-center mb-2">
							<img alt="헬스" src="${pageContext.request.contextPath}/resources/images/weights.png" width="70px">
						</div>
						</a>
						<div class="media-body">
  							<h3 class="heading">헬스</h3>
						</div>
					</div>      
				</div>
		        <div class="text-center d-flex align-self-stretch ftco-animate" style="width: 155px">
					<div class="media block-6 services mb-md-0 mb-4">
						<a href="${pageContext.request.contextPath}/activity/list?category=복싱">
						<div class="icon cl d-flex justify-content-center align-items-center mb-2">
							<img alt="복싱" src="${pageContext.request.contextPath}/resources/images/boxing-gloves.png" width="70px">
						</div>
						</a>
						<div class="media-body">
							<h3 class="heading">복싱</h3>
						</div>
					</div>      
				</div>
		        <div class="text-center d-flex align-self-stretch ftco-animate" style="width: 155px">
					<div class="media block-6 services mb-md-0 mb-4">
						<a href="${pageContext.request.contextPath}/activity/list?category=클라이밍">
						<div class="icon cl d-flex justify-content-center align-items-center mb-2">
            				<img alt="클라이밍" src="${pageContext.request.contextPath}/resources/images/climbing.png" width="70px">
              			</div>
              			</a>
						<div class="media-body">
							<h3 class="heading">클라이밍</h3>
						</div>
					</div>      
				</div>
		        <div class="text-center d-flex align-self-stretch ftco-animate" style="width: 155px">
					<div class="media block-6 services mb-md-0 mb-4">
						<a href="${pageContext.request.contextPath}/activity/list?category=테니스">
						<div class="icon cl d-flex justify-content-center align-items-center mb-2">
            				<img alt="테니스" src="${pageContext.request.contextPath}/resources/images/tennis.png" width="70px">
              			</div>
              			</a>
              			<div class="media-body">
							<h3 class="heading">테니스</h3>
						</div>
					</div>      
				</div>
          
				<div class="text-center d-flex align-self-stretch ftco-animate" style="width: 155px">
					<div class="media block-6 services mb-md-0 mb-4">
						<a href="${pageContext.request.contextPath}/activity/list?category=수영">
						<div class="icon cl active d-flex justify-content-center align-items-center mb-2">
							<img alt="수영" src="${pageContext.request.contextPath}/resources/images/swim.png" width="70px">
						</div>
						</a>
             			<div class="media-body">
							<h3 class="heading">수영</h3>
						</div>
					</div>      
				</div>
				
			</div>
		</div>
	</section>
	
	
	<!-- 액티비티 -->
	<section class="ftco-section ftco-category">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-6 order-md-last align-items-stretch d-flex">
							<div class="col-md-12 heading-section text-center ftco-animate img align-self-stretch" style="background-image: url(${pageContext.request.contextPath}/resources/images/category2.jpg);">
								<div class="text text-center">
									<h2>이런 액티비티는 <br> 어떤가요❔</h2>
									<p> 👇 더 다양한 액티비티 둘러보기 👇 </p>
									<p><a href="${pageContext.request.contextPath}/activity/list" class="btn btn-primary">ACTIVITY</a></p>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(${pageContext.request.contextPath}/resources/images/main-gym.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0"><a href="${pageContext.request.contextPath}/activity/list?category=헬스">GYM</a></h2>
								</div>
							</div>
							<div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(${pageContext.request.contextPath}/resources/images/main-swimming.jpg);">
								<div class="text px-3 py-1">
									<h2 class="mb-0"><a href="${pageContext.request.contextPath}/activity/list?category=수영">SWIMMING</a></h2>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="category-wrap ftco-animate img mb-4 d-flex align-items-end" style="background-image: url(${pageContext.request.contextPath}/resources/images/main-tennis.jpg);">
						<div class="text px-3 py-1">
							<h2 class="mb-0"><a href="${pageContext.request.contextPath}/activity/list?category=테니스">TENNIS</a></h2>
						</div>		
					</div>
					<div class="category-wrap ftco-animate img d-flex align-items-end" style="background-image: url(${pageContext.request.contextPath}/resources/images/main-yoga.jpg);">
						<div class="text px-3 py-1">
							<h2 class="mb-0"><a href="${pageContext.request.contextPath}/activity/list?category=요가/필라테스">YOGA</a></h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 추천 액티비티 -->
	
	<!-- 인기있는 액티비티 -->	
	<input type="hidden" id="sessionId" value="${sessionScope.userId}">
	<section class="ftco-section" id="secInterestList">
		<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
            		<h2 class="mb-4">🏋️‍♀️ <b class="c-or">BEST</b> 액티비티 🏋️‍♀️</h2>
				</div>
			</div>   		
    	</div>
    	<div class="container">
    		<div class="row" id="actBestList">
    			<c:forEach var="mainListDto" items="${bestList}">
		    		<div class="col-md-6 col-lg-3 ftco-animate">
		    			<div class="product">
		    				<a href="${pageContext.request.contextPath}/activity/actContent?actNum=${mainListDto.actNum}" class="img-prod">
		    					<img class="img-f" src="${pageContext.request.contextPath}/resources/upload/${mainListDto.imgNameKey}" width=300px height=350px>
		    					<span class="status" style="background-color: #FF6600;">HOT</span>
		    					<div class="overlay"></div>
		    				</a>
		    				<div class="text py-3 pb-4 px-3 text-center">
		    					<h3><a href="#">${mainListDto.actTitle}</a></h3>
		    					<div class="d-flex">
		    						<div class="pricing">
				    					<p class="price"><span>💰 1일권 </span><span class="price-sale">${mainListDto.actPrice}원</span></p>
				    				</div>
			    				</div>
			    				<div class="bottom-area d-flex px-3">
			    					<div class="m-auto d-flex">
			    						<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center" style="background-color: #FF6600;">
			    							<span><i class="icon-search-plus" style="background-color: #FF6600;"></i></span>
			    						</a>
		    						</div>
		    					</div>
		    				</div>
		    			</div>
		    		</div>
    			</c:forEach>
    		</div>
    	</div>
    </section>
    
    
    <c:if test="${ ! empty sessionScope.userId }">
	<!-- 관심카테고리 액티비티 -->	
	<section class="ftco-section" id="secInterestList">
		<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
            		<h2 class="mb-4"><b class="c-or">${sessionScope.userId}</b> 님을 위한 액티비티 추천 💡 </h2>
				</div>
			</div>   		
    	</div>
    	<div class="container">
    		<div class="row" id="actBestList">
    			<c:forEach var="mainListDto" items="${interestList}">
		    		<div class="col-md-6 col-lg-3 ftco-animate">
		    			<div class="product">
		    				<a href="${pageContext.request.contextPath}/activity/actContent?actNum=${mainListDto.actNum}" class="img-prod">
		    					<img class="img-f" src="${pageContext.request.contextPath}/resources/upload/${mainListDto.imgNameKey}" width=300px height=350px>
		    					<span class="status" style="background-color: #FF6600;">HOT</span>
		    					<div class="overlay"></div>
		    				</a>
		    				<div class="text py-3 pb-4 px-3 text-center">
		    					<h3><a href="#">${mainListDto.actTitle}</a></h3>
		    					<div class="d-flex">
		    						<div class="pricing">
				    					<p class="price"><span>💰 1일권 </span><span class="price-sale">${mainListDto.actPrice}원</span></p>
				    				</div>
			    				</div>
			    				<div class="bottom-area d-flex px-3">
			    					<div class="m-auto d-flex">
			    						<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center" style="background-color: #FF6600;">
			    							<span><i class="icon-search-plus" style="background-color: #FF6600;"></i></span>
			    						</a>
		    						</div>
		    					</div>
		    				</div>
		    			</div>
		    		</div>
    			</c:forEach>
    		</div>
    	</div>
    </section>
	<!-- 인기있는 액티비티 -->	
	
	<!-- 관심지역 액티비티 -->	
	<section class="ftco-section" id="secInterestList">
		<div class="container">
			<div class="row justify-content-center mb-3 pb-3">
				<div class="col-md-12 heading-section text-center ftco-animate">
            		<h2 class="mb-4"><b class="c-or">${sessionScope.userId}</b> 님의 <b style="text-decoration: underline; ">관심 지역</b>에는 이런 액티비티가 있어요 ✔️ </h2>
				</div>
			</div>   		
    	</div>
    	<div class="container">
    		<div class="row" id="actBestList">
    			<c:forEach var="mainListDto" items="${areaList}">
		    		<div class="col-md-6 col-lg-3 ftco-animate">
		    			<div class="product">
		    				<a href="${pageContext.request.contextPath}/activity/actContent?actNum=${mainListDto.actNum}" class="img-prod">
		    					<img class="img-f" src="${pageContext.request.contextPath}/resources/upload/${mainListDto.imgNameKey}" width=300px height=350px>
		    					<span class="status" style="background-color: #FF6600;">HOT</span>
		    					<div class="overlay"></div>
		    				</a>
		    				<div class="text py-3 pb-4 px-3 text-center">
		    					<h3><a href="#">${mainListDto.actTitle}</a></h3>
		    					<div class="d-flex">
		    						<div class="pricing">
				    					<p class="price"><span>💰 1일권 </span><span class="price-sale">${mainListDto.actPrice}원</span></p>
				    				</div>
			    				</div>
			    				<div class="bottom-area d-flex px-3">
			    					<div class="m-auto d-flex">
			    						<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center" style="background-color: #FF6600;">
			    							<span><i class="icon-search-plus" style="background-color: #FF6600;"></i></span>
			    						</a>
		    						</div>
		    					</div>
		    				</div>
		    			</div>
		    		</div>
    			</c:forEach>
    		</div>
    	</div>
    </section>
	<!-- 인기있는 액티비티 -->	
	</c:if>

	<!-- 리뷰 -->
	<section class="ftco-section testimony-section">
		<div class="container">
			<div class="row justify-content-center pb-3">
				<div class="col-md-7 heading-section ftco-animate text-center">
					<h2 class="mb-4">📸 액티비티 후기 📸</h2>
					<p> 회원님들의 체험 후기를 확인하세요! </p>
				</div>
			</div>
			<div class="row ftco-animate">
 				<div class="col-md-12">
					<div class="carousel-testimony owl-carousel">
           
          				 <!-- 반복 -->
          				<c:forEach var="reviewDTO" items="${mainReviewNewestList}">
						<div class="item">
							<div class="testimony-wrap p-4 pb-5">
							
								<div class="text text-center">				
													
									<a href="${pageContext.request.contextPath}/review/content?review_Num=${reviewDTO.reviewNum}"><p class="mb-5 pl-4 line">${reviewDTO.reviewTitle}</p></a>
									<span class="position" style="color: #808080;">${reviewDTO.actCategory} > <a href="${pageContext.request.contextPath}/activity/actNum?act_num=${reviewDTO.actNum}">${reviewDTO.actTitle}</a></span>	
									<c:if test="${reviewDTO.reviewScore == 5.0}"><p style="color: #FF6600;">★★★★★ ${reviewDTO.reviewScore}</p></c:if>
									<c:if test="${reviewDTO.reviewScore == 4.0}"><p style="color: #FF6600;">★★★★☆ ${reviewDTO.reviewScore}</p></c:if>
									<c:if test="${reviewDTO.reviewScore == 3.0}"><p style="color: #FF6600;">★★★☆☆ ${reviewDTO.reviewScore}</p></c:if>
									<c:if test="${reviewDTO.reviewScore == 2.0}"><p style="color: #FF6600;">★★☆☆☆ ${reviewDTO.reviewScore}</p></c:if>
									<c:if test="${reviewDTO.reviewScore == 1.0}"><p style="color: #FF6600;">★☆☆☆☆ ${reviewDTO.reviewScore}</p></c:if>

									<p class="name">${reviewDTO.userId}</p>
									
								</div>
							</div>
						</div>
			            </c:forEach>
			            <!-- 반복 -->
			            
			            
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 리뷰 -->
	


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