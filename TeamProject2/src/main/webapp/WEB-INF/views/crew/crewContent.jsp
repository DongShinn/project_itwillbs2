<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>crewContent</title>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/crew-reply.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/crew-reply.js"></script>
</head>
<body class="goto-here">
<!-- ???????????????????????? ??? -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- ???????????????????????? ??? -->

<!-- ????????? ?????? -->

<!-- MEMO ???????????? ???????????? cb_category -->
<section class="ftco-section">
	<div class="col-lg-12">
		<div class="container">
			<div class="row">

				<div class="col-lg-12">
					<div class="container" style="border: 1px;">
						<div class="text-right">
							<input type="button" value="?????????" class="btn btn-primary" onclick="location.href='#'">
							<input type="button" value="?????????" class="btn btn-primary" onclick="location.href='#'">
							<input type="button" value="??????" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/crew/list'">
				    	</div>
   					</div>
    		
   					<p class="text-left" style="color: #FF5500;"><span class="icon-chat_bubble"></span>&nbsp;???????????? > <b>?????? ????????????!</b></p>
   					<input type="hidden" id="crewNum" value="${crewDTO.crewNum}">
   					<h4><span style="color: #FF5500">[${crewDTO.crewCategory}]</span>&nbsp;<span><b>${crewDTO.crewSubject}</b></span></h4>
    					<div class="col-lg-6" style="height: 35px; float: left;">
							<p style="margin-bottom: 0;"><span class="mr-2" style="color: #000;"><b>${crewDTO.userId}</b></span></p>
							<p><span class="mr-2" style="color: #bbb;"><fmt:formatDate value="${crewDTO.crewDate}" pattern="yyyy.MM.dd HH:mm:ss"/>&nbsp;?????????&nbsp;${crewDTO.crewReadcount}</span></p>
						</div>
						<div class="col-lg-6 text-right" style="height: 35px; float: right;">
							<p><span class="icon-chat_bubble"></span>&nbsp;${crewDTO.replyCount}&nbsp;</p>
						</div>
						<p class="col-10" style="color: #000; margin-top: 80px;">${crewDTO.crewContent}</p>

					<div class="row mt-4">
         				<div class="col-md-12">
       						
							<!-- ?????? -->
       						<!-- ????????? ????????? ??? ????????? ?????? ??? ?????? ?????? -->
       						<c:choose>
       							<c:when test="${ ! empty sessionScope.userId }">
       								<div id="heart-click" style="color: #000;  width: 20px; height: 25px; float: left;">
		       							<c:choose>
		       							<c:when test="${clCheck eq 0 or empty clCheck}">
		       								<span class="icon-heart-o" style="cursor: pointer;"></span>
		       							</c:when>
		       							<c:otherwise>
		       								<span class="icon-heart" style="color: #ff0000; cursor: pointer;"></span>
		       							</c:otherwise>
		       							</c:choose>
       								</div>
       							</c:when>
       							<c:otherwise>
       							<!-- ????????? ?????? ?????? =_=+ -->
       							   <div id="heart-click-nologin" style="color: #000; width: 20px; height: 25px; float: left;">
		       								<span class="icon-heart-o" style="cursor: pointer;"></span>
       								</div>
       							</c:otherwise>
       						</c:choose>
							<!-- ?????? ????????? -->
							<div id="likeCnt" style="color: #000; width: 20px; height: 25px; float: left;">${crewDTO.likeCount}</div>
							<!-- ?????? ????????? -->
       						<div style="color: #000; width: 20px; height: 25px; float: left;"><span class="icon-chat"></span></div>
       						<div id="replyCount" style="color: #000; width: 20px; height: 25px; float: left;">${crewDTO.replyCount}</div>
         				</div>
        			</div>
        				
        				<!-- ?????? -->
					<div class="col-lg-12">
						<div class="container bg-light">
							<div><p><a href="#replyWriteForm"><b>??????</b></a></p></div>	
							<div id="listDiv" style="color: #000000;">

							</div>
						</div>
					</div>
					
					<!-- ?????? ?????? -->
					<div class="col-lg-12">
						<table class="container bg-light replyInput">
							<tr><td class="col-7" id="replyId"><b style="color: #000;">${sessionScope.userId}</b></td></tr>
							<tr><td class="text-center">
								<c:choose>
								    <c:when test="${ ! empty sessionScope.userId }">
										<textarea style="width:98%; resize: none;" rows="3"
					  					 		   name="crContent" id="crContent" required="required"></textarea>
								    </c:when>
								    <c:otherwise>
										<textarea style="width:98%; resize: none;" rows="3" placeholder="????????? ????????? ??? ?????? ???????????????."
												   name="crContent" id="crContent" required="required"></textarea>
								    </c:otherwise>
								</c:choose>
								<div class="count text-right">
									<span>0</span>/300&nbsp;
									<button class="btn btn-primary" id="addReply">????????????</button></div>
							</td></tr>
						</table>
					</div>
					<!-- ?????? ?????? -->
         				
         			<!-- ????????? ?????? -->
         			<div class="col-lg-12 ftco-animate text-center">
						<div class="container" style="padding: 0px 0px 60px">
							<input type="button" value="??????" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/crew/list'">
							<c:if test="${crewDTO.userId eq sessionScope.userId}">
								<input type="button" value="??????" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/crew/update?num=${crewDTO.crewNum}'">
								<input type="button" value="??????" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/crew/delete?num=${crewDTO.crewNum}'">
							</c:if>
						</div>
					</div>
         			

         				
				</div> <!-- ??? ???????????? -->
				</div>
			</div>
		</div>
</section>

<!-- ????????? ?????? -->


<!-- ?????? ???????????? ??? -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- ?????? ???????????? ??? -->

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
<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
<script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


</body>
</html>