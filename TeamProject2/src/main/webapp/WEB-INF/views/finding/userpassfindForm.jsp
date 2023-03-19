<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 비밀번호 찾기</title>
<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/passfind.css" >
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/insertForm.css" >
<style type="text/css">
body {
padding-top: 100px;
}
</style>
<!-- css -->

<!-- script -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.3.js"></script>
<script type="text/javascript">

let checkEmailResult = false;
let checkEmailNumResult = false;


function checkSubmit(){
	
	// Id제어
	if($('#userId3').val() == "" ){
		alert("아이디 입력하세요");
		$('#userId3').focus();
		return false;
	}
	
	//email 제어
	if($('#userEmail').val()==""){
		alert("이메일 입력하세요");
		$('#userEmail').focus();
		return false;
	}
	
	// email 인증 제어
	if($('#emailNo').val()==""){
		alert("인증번호를 입력하세요");
		$('#emailNo').focus();
		return false;
	}
	
	if(!checkEmailNumResult){ // 이메일 유효성 체크
		alert('인증번호를 다시 입력하세요.');
		$('#emailNo').focus();
		return false;
	}
	
}

var code = "";

$(document).ready(function() {
	$('#mail_check_button').click(function(){
		
		var email = $('#userEmail').val(); // 입력한 이메일
		var checkBox = $('#emailNo');	   // 인증번호 입력란
		var boxWrap = $('#emailNoBox');	   // 인증번호 입력란 박스
		
		if(email == ''){
			alert("이메일을 입력해 주세요.");
		} else {
			alert("인증번호가 전송되었습니다.");
		}
		
		$.ajax({
			type:'GET',
			url:'${pageContext.request.contextPath }/member/mailCheck?email=' + email,
			success : function(data){
// 				console.log("data : " + data);
// 				checkBox.attr("disabled", false);
// 				boxWrap.atter("id" , "emailNoBox_true");
				code = data;
			}
		});
		
	});
	
	$('#emailNo').blur(function(){
		
		var inputCode = $('#emailNo').val();	// 입력코드
		var span = $('#checkEmailNumResult');
		
		if(inputCode == code && inputCode != ''){
			span.html('인증번호가 일치합니다.');
			span.attr('class', 'correct');
			checkEmailNumResult = true;
		} else if(inputCode == ''){
			span.html('인증번호를 입력해 주세요.');
			span.attr('class', 'incorrect');
			checkEmailNumResult = false;
		} else {
			span.html('인증번호를 다시 확인해주세요.');
			span.attr('class', 'incorrect');
			checkEmailNumResult = false;
		}
		
	});
	
});
</script>
<!-- script -->

</head>
<body>
<a class="navbar-brand" href="${pageContext.request.contextPath}/main/main" style="font-size: 60px;">
 <img alt="로고" src="${pageContext.request.contextPath}/resources/images/로고.png" width="250px" style="margin-left: 90px;">
</a>

<div id="container" class="container">
    <form id="fm" name="fm" action="${pageContext.request.contextPath}/finding/userpassfindPro" method="post" onsubmit="return checkSubmit()">
     
        <div class="content">
            <div class="find_wrap">
                <div class="find_inner">
                    <div class="title_wrap">
                        <h2 class="title">
                            비밀번호를 찾고자하는<br><br>
                            <span>"아이디"</span>를 입력해주세요.
                        </h2>
                    </div>
                    
                    <!-- 아이디 -->
                    <div id="idInputRow" class="input_row">
                        <span id="idIcon" class="icon_name"><span class="blind">아이디</span></span>
                        <input type="text" id="userId3" class="input_name" name="userId" maxlength="40">
                    </div>
                    <!-- 아이디 -->
                    
                    <!-- 이메일 -->
					 <div class="join_row join_mobile" id="mobDiv">
			            <h3 class="join_title"><label for="email">이메일 인증을 해주세요.</label></h3>
			            <div class="int_mobile_area">
			              <span class="ps_box int_mobile">
					      	<input type="text" id="userEmail" name="userEmail" placeholder="선택입력" aria-label="선택입력" class="int" 
					      		>
					      </span>
					   		<a href="#" class="btn_verify btn_primary" id="mail_check_button"  role="button">
			              	<span class="">인증번호 받기</span>
			           		</a>
			           </div>
			         </div>
			         <div><span id="checkEmailResult" class="live-validation"></span></div>
			         <!-- 이메일 -->  
			         
			         <!-- 이메일 인증 -->
			         <div class="ps_box_disable box_right_space" id="emailNoBox">
			               <input type="text" id="emailNo" name="emailNo" placeholder="인증번호 입력하세요" aria-label="인증번호 입력하세요" 
			               aria-describedby="wa_verify" class="int">
			               <label id="wa_verify" for="authNo" class="lbl"></label>
			         </div>
			         <div><span id="checkEmailNumResult" class="live-validation" ></span></div>
			         <!-- 이메일 인증 -->
                    
                    <button type="submit" class="btn_check" ><span class="text">다음</span></button>
                    <div class="link_wrap">
                        <span class="text">
                            아이디가 기억나지 않는다면? <a href="${pageContext.request.contextPath}/finding/useridfind" class="link"><div class="txt">아이디 찾기</div></a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>




</body>
</html>

