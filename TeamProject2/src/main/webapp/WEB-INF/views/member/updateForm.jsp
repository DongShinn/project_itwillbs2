<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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

 	$(document).ready(function() {
 		
		
		$('#join').submit(function(){
			//pass 제어
			if($('#userPass').val()==""){
				alert("비밀번호 입력하세요");
				$('#userPass').focus();
				return false;
			}
// 			pass2 제어
			if($('#userPass2').val()==""){
				alert("변경할 비밀번호를 입력하세요");
				$('#userPass2').focus();
				return false;
			}
// 			user_name 제어
			if($('#userName').val()==""){
				alert("이름을 입력하세요");
				$('#userName').focus();
				return false;
			}
			
			//user_brith 제어
			if($('#userBirth').val()==""){
				alert("생년월일을 입력하세요");
				$('#userBirth').focus();
				return false;
			}
			
			//user_gender 제어
			if($('#userGender').val()==""){
				alert("성별을 입력하세요");
				$('#userGender').focus();
				return false;
			}
			
			//user_email 제어
			if($('#userEmail').val()==""){
				alert("이메일을 입력하세요");
				$('#userEmail').focus();
				return false;
			}
			
// 			//user_phone 제어
			if($('#userPhone').val()==""){
				alert("휴대폰번호를 입력하세요");
				$('#user_phone').focus();
				return false;
			}
			
			//user_address 제어
			if($('#userAddress').val()==""){
				alert("사는곳을 입력하세요");
				$('#userAddress').focus();
				return false;
			}
			
// 			//user_interest 제어
// 			if($('#userSport').val()==""){
// 				alert("관심사를 입력하세요");
// 				$('#userSport').focus();
// 				return false;
// 			}
			
// 			//user_area 제어
// 			if($('#userArea').val()==""){
// 				alert("관심지역을 입력하세요");
// 				$('#userArea').focus();
// 				return false;
// 			}
		});
		
 	});
 
</script>
</head>
<body class="img js-fullheight"> 
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- style="background:linear-gradient(to top,rgba(0,0,0,.3),rgba(0,0,0,.3)),  -->
<!-- url('https://preview.colorlib.com/theme/bootstrap/login-form-20/images/bg.jpg.webp') repeat center / cover !important; height:150vh;"> -->
<section class="ftco-section" style="padding: 1em 0 !important;">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6 text-center mb-5">
<h2 class="heading-section" _msttexthash="14920113" _msthash="1" style="color: black !important;" >회원 수정</h2>
</div>
</div>
<div class="row justify-content-center">
<div class="col-md-6 col-lg-4">
<div class="login-wrap p-0">
<form action="${pageContext.request.contextPath }/member/updatePro" class="signin-form"
      method="POST" id="join">
 <div class="mypage" >
<div class="form-group">
<!-- 아이디 -->
<input type="text" class="form-control" placeholder="아이디" _mstplaceholder="113997" _msthash="3"
 name="userId" id="userId" value="${dto.userId}" readonly style="color: black !important;">
</div>

<!-- 현재 비밀번호 -->
<div class="form-group">
<input type="password" class="form-control" placeholder="현재 비밀번호" _mstplaceholder="113997" _msthash="3"
 name="userPass" id="userPass" style="color: black !important;">
</div>

<!-- 변경할 비밀번호 -->
<div class="form-group">
<input type="password" class="form-control" placeholder="변경할 비밀번호" _mstplaceholder="113997" _msthash="3"
 name="userPass2" id="userPass2" style="color: black !important;">
</div>


<!-- 이름 -->
<div class="form-group">
<input type="text" class="form-control"_mstplaceholder="113997" _msthash="3"
 name="userName" id="userName" value="${dto.userName}" style="color: black !important;">
</div>


<!-- 생년 월일 -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3"
 name="userBirth" id="userBirth" value="${dto.userBirth}" style="color: black !important;">
</div>

<!-- 성별 -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3"
 name="userGender" id="userGender" value="${dto.userGender}" style="color: black !important;">
</div>

<!-- 이메일 -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3"
 name="userEmail" id="userEmail" value="${dto.userEmail}" style="color: black !important;">
</div>

<!-- 휴대 전화 -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3"
 name="userPhone" id="userPhone" value="${dto.userPhone}" style="color: black !important;">
</div>

<!-- 거주지 -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3"
 name="userAddress" id="userAddress" value="${dto.userAddress}" style="color: black !important;">
</div>

<!-- 관심 체험  -->
      <fieldset id="dev_sch_form_dterm" class="itemSet dev_add_default">
      <div class="join_row">
        <h3 class="join_interest"><label for="interest">나의 관심 체험</label></h3>
        
        <ul class="list">
           <c:forEach items="${userCateList }" var="list" >
            
            <li><c:if test="${list.checked != 'checked'}">
            <input type="checkbox" name="sport" value="${list.category}" >
				<label for="leisure Sports"> ${list.category } </label>
				</c:if>
				
				<c:if test="${list.checked == 'checked'}">
            <input type="checkbox" name="sport" value="${list.category}" checked>
				<label for="leisure Sports"> ${list.category } </label>
				</c:if>
				</li>
            
           </c:forEach>
        </ul>
      </div><br>
      </fieldset>
      <input type="hidden" id="userSport" name="userSport" value="">
      <br>
	
	<!-- 관심 지역  -->
		<fieldset id="dev_sch_form_dterm1" class="itemSet dev_add_default">
		<div class="join_row">
			<h3 class="join_city"><label for="city">나의 관심 지역</label></h3>
			
			<ul class="list">
			<c:forEach items="${commonAreaList }" var="list" >
            
            <li><c:if test="${list.checked != 'checked'}">
            <input type="checkbox" name="city" value="${list.area}" >
				<label for="check1"> ${list.area } </label>
				</c:if>
				
				<c:if test="${list.checked == 'checked'}">
            <input type="checkbox" name="city" value="${list.area}" checked>
				<label for="check1"> ${list.area } </label>
				</c:if>
				</li>
            
           </c:forEach>
			
			</ul>	
		</div><br>
		</fieldset>
		<input type="hidden" id="userArea" name="userArea" value="">
		<br>
		<!-- 관심 지역  -->
<!-- POINT -->
<div class="form-group">
<input type="text" class="form-control" _mstplaceholder="113997" _msthash="3"
 name="userPoint" id="userPoint" value="${dto.userPoint}" style="color: black !important;">
</div>


<!-- 수정하기 -->
<div class="form-group">
<button type="submit" class="form-control btn btn-primary submit px-3" _msttexthash="29554512" _msthash="5" style="background: #4d4d4d !important">회원정보수정</button><br>
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