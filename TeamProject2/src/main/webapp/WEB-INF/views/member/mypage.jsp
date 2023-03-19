<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<title _msttexthash="14914302" _msthash="0">로그인 10</title>
<meta charset="utf-8">
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
<script type="text/javascript" src = "${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

 
</script>
</head>
<body class="img js-fullheight"> 
<jsp:include page="../inc/top.jsp"></jsp:include>

<!-- 팝업 -->
<jsp:include page="../member/popup.jsp"></jsp:include>

<section class="ftco-section" style="padding: 1em 0 !important;">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6 text-center mb-5">
<h2 class="heading-section" _msttexthash="14920113" _msthash="1" style="color: black !important;" >마이페이지</h2>
</div>
</div>
<div class="row justify-content-center">
<div class="col-md-6 col-lg-4">
<div class="login-wrap p-0">
<form class="signin-form" method="POST" id="join">
 <div class="mypage" >
<div class="form-group">

<!-- 마이페이지 -->
<div class="form-group">
<button type="button" onclick="location.href = '${pageContext.request.contextPath }/member/info'" class="form-control btn btn-primary submit px-3" _msttexthash="29554512" _msthash="5" style="background: #4d4d4d !important">나의정보조회</button><br>
</div>
<div class="form-group">
<button type="button" onclick="location.href = '${pageContext.request.contextPath }/member/update'" class="form-control btn btn-primary submit px-3" _msttexthash="29554512" _msthash="5" style="background: #4d4d4d !important">나의정보수정</button><br>
</div>
<div class="form-group">
<button type="button" onclick="location.href = '${pageContext.request.contextPath }/member/delete'" class="form-control btn btn-primary submit px-3" _msttexthash="29554512" _msthash="5" style="background: #4d4d4d !important">회원탈퇴</button><br>
</div>
<div class="form-group">
<button type="button" onclick="location.href = '${pageContext.request.contextPath }/calendar/calendar'" class="form-control btn btn-primary submit px-3" _msttexthash="29554512" _msthash="5" style="background: #4d4d4d !important">캘린더</button><br>
</div>
<div class="form-group">
<button type="button" onclick="location.href = '${pageContext.request.contextPath }/member/reviewlist'" class="form-control btn btn-primary submit px-3" _msttexthash="29554512" _msthash="5" style="background: #4d4d4d !important">내가 쓴 리뷰</button><br>
</div>
</div>
<div class="form-group d-md-flex">
<div class="w-50">
</div>
<div class="w-50 text-md-right">
</div>
</div>
</form>
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