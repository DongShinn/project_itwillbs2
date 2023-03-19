<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
	
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/update.css">
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
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/userinsert.js"></script>
<script type="text/javascript" src = "${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<html lang="en">

<head>
<title _msttexthash="14914302" _msthash="0">나의 정보 조회</title>

<meta charset="utf-8">
<body class="img js-fullheight">
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- style="background:linear-gradient(to top,rgba(0,0,0,.3),rgba(0,0,0,.3)),  -->
<!-- url('https://preview.colorlib.com/theme/bootstrap/login-form-20/images/bg.jpg.webp') repeat center / cover !important; height:150vh;"> -->

<section class="ftco-section" style="padding: 1em 0 !important;">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6 text-center mb-5">
<h2 class="heading-section" _msttexthash="14920113" _msthash="1" style="color: black !important;">나의 정보 조회</h2>
</div>
</div>
<div class="row justify-content-center">
<div class="col-md-6 col-lg-4">
<div class="login-wrap p-0">
 <div class="mypage">
<div class="form-group">

<!-- 아이디 -->
<input type="text" class="form-control" placeholder="아이디" _mstplaceholder="113997" _msthash="3" value="${dto.userId}" readonly style="color: black !important;">
</div>

<!-- 이름 -->
<div class="form-group">
<input type="text" class="form-control"_mstplaceholder="113997" _msthash="3" value="${dto.userName}" readonly style="color: black !important;">
</div>

<!-- 생년 월일 -->
<!-- <div class="form-group"> -->
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3" value="${dto.userBirth}" readonly style="color: black !important;">
<!-- </div> -->

<!-- 성별 -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3" value="${dto.userGender}" readonly style="color: black !important;">
</div>

<!-- 이메일 -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3" value="${dto.userEmail}" readonly style="color: black !important;">
</div>

<!-- 휴대 전화 -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3" value="${dto.userPhone}" readonly style="color: black !important;">
</div>

<!-- 거주지 -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3" value="${dto.userAddress}" readonly style="color: black !important;">
</div>

		<!-- 관심 체험  -->
      <fieldset id="dev_sch_form_dterm" class="itemSet dev_add_default">
      <div class="join_row">
        <h3 class="join_interest"><label for="interest">나의 관심 체험</label></h3>
        
        <ul class="list">
           <c:forEach items="${userCateList }" var="list" >
            
<%--             <input type="checkbox" name="sport" value="${list.category}" > --%>
				<c:if test="${list.checked == 'checked'}">
				<li><label for="leisure Sports"> ${list.category } </label></li>
				</c:if>
            
           </c:forEach>
        </ul>
      </div><br>
      </fieldset>
      <input type="hidden" id="userSport" name="userSport" value="">
      <br>
      <!-- 관심 체험  -->


		<!-- 관심 지역  -->
		<fieldset id="dev_sch_form_dterm1" class="itemSet dev_add_default">
		<div class="join_row">
			<h3 class="join_city"><label for="city">나의 관심 지역</label></h3>
			
			<ul class="list">
				<c:forEach items="${commonAreaList }" var="list">
<%-- 				  <input type="checkbox" name="city" id="check1" value="${list.area }"> --%>
				<c:if test="${list.checked == 'checked'}">
				  <li><label for="check1">${list.area }</label></li> 
				  </c:if>
			</c:forEach>
			</ul>	
		</div><br>
		</fieldset>
		<input type="hidden" id="userArea" name="userArea" value="">
		<br>
		<!-- 관심 지역  -->

<!-- POINT -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3" value="${dto.userPoint}" readonly style="color: black !important;">
</div>

<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3"
 value="마이페이지 이동" onclick="location.href = '${pageContext.request.contextPath }/member/mypage'" style="background: #4d4d4d !important; font-weight: 900;">
</div>
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3"
 value="메인화면 이동" onclick="location.href = '${pageContext.request.contextPath }/main/main'" style="background: #4d4d4d !important; font-weight: 900;">
</div>
</div>
<div class="form-group d-md-flex">
<div class="w-50">
</div>
<div class="w-50 text-md-right">
</div>
</div>
</div>
</div>
</div>
</div>
</section>

<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>