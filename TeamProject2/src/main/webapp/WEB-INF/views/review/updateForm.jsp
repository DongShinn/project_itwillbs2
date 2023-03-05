<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Vegefoods - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
 	 <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<!-- Plugin -->
	<link rel="stylesheet" href="https://rawgit.com/enyo/dropzone/master/dist/dropzone.css" />
	<script src="https://rawgit.com/enyo/dropzone/master/dist/dropzone.js"></script>
  
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css">
  <!--  -->

  <style>
.filebox .upload-name {
    display: inline-block;
    height: 40px;
    padding: 0 10px;
    vertical-align: middle;
    border: 1px solid #dddddd;
    width: 78%;
    color: #999999;
}
  </style>
    <style>
  .filebox label {
    display: inline-block;
    padding: 10px 20px;
    color: #fff;
    vertical-align: middle;
    background-color: #999999;
    cursor: pointer;
    height: 40px;
    margin-left: 10px;
}
    </style>
       <style>
    .filebox input[type="file"] {
    position: absolute;
    width: 0;
    height: 0;
    padding: 0;
    overflow: hidden;
    border: 0;
}
        </style>
   <script>
// $(document).ready(function() {

// 	var toolbar = [
// 		    // 글꼴 설정
// 		    ['fontname', ['fontname']],
// 		    // 글자 크기 설정
// 		    ['fontsize', ['fontsize']],
// 		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
// 		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
// 		    // 글자색
// 		    ['color', ['forecolor','color']],
// 		    // 표만들기
// 		    ['table', ['table']],
// 		    // 글머리 기호, 번호매기기, 문단정렬
// 		    ['para', ['ul', 'ol', 'paragraph']],
// 		    // 줄간격
// 		    ['height', ['height']],
// 		    // 그림첨부, 링크만들기, 동영상첨부
// 		    ['insert',['picture','link','video']],
// 		    // 코드보기, 확대해서보기, 도움말
// 		    ['view', ['codeview','fullscreen', 'help']]
// 		  ];

// 	var setting = {
//             height : 300,
//             minHeight : null,
//             maxHeight : null,
//             focus : true,
//             lang : 'ko-KR',
//             toolbar : toolbar,
//             callbacks : { //여기 부분이 이미지를 첨부하는 부분
//             onImageUpload : function(files, editor,
//             welEditable) {
//             for (var i = files.length - 1; i >= 0; i--) {
//             uploadSummernoteImageFile(files[i],
//             this);
//             		}
//             	}
//             }
//          };

//         $('#summernote').summernote(setting);
//         });
</script>	
<style>
	body {
  background: #EEE;
  font-family: 'Roboto', sans-serif;
}

.dropzone {
  width: 98%;
  margin: 1%;
  border: 2px dashed #3498db !important;
  border-radius: 5px;
  -webkit-transition: .2s;
  transition: .2s;
}

.dropzone.dz-drag-hover {
  border: 2px solid #3498db !important;
}

.dz-message.needsclick img {
  width: 50px;
  display: block;
  margin: auto;
  opacity: .6;
  margin-bottom: 15px;
}

span.plus {
  display: none;
}

.dropzone.dz-started .dz-message {
  display: inline-block !important;
  width: 120px;
  float: right;
  border: 1px solid rgba(238, 238, 238, 0.36);
  border-radius: 30px;
  height: 120px;
  margin: 16px;
  -webkit-transition: .2s;
  transition: .2s;
}

.dropzone.dz-started .dz-message span.text {
  display: none;
}

.dropzone.dz-started .dz-message span.plus {
  display: block;
  font-size: 70px;
  color: #AAA;
  line-height: 110px;
}
/*# sourceMappingURL=ss.css.map */	
	</style>	
    <style>
	.global_network {
		background: white;
	}
	
	@font-face {
		font-family: 'CustomFont';
		font-weight: normal;
		font-style: normal;
		font-display: swap;
		src:
			url('https://s1.blackdesertm.com/KR/forum/contents/font/NotoSans-RegularKR.eot');
		src:
			url('https://s1.blackdesertm.com/KR/forum/contents/font/NotoSans-RegularKR.woff2')
			format('woff2'),
			url('https://s1.blackdesertm.com/KR/forum/contents/font/NotoSans-RegularKR.woff')
			format('woff')
	}
	
	.star-rating {
		/*   border:solid 1px #ccc; */
		display: flex;
		flex-direction: row-reverse;
		font-size: 2.5em;
		justify-content: space-around;
		padding: 0 .2em;
		text-align: center;
		width: 5em;
	}
	
	.star-rating input {
		display: none;
	}
	
	.star-rating label {
		color: #ccc;
		cursor: pointer;
	}
	
	.star-rating :checked ~ label {
		color: #9900e6;
	}
	
	.star-rating label:hover, .star-rating label:hover ~ label {
		color: #9900e6;
	}
	</style>
	
	
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
  </head>
  	<!-- 헤더파일들어가는 곳 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<!-- 헤더파일들어가는 곳 -->
  <body class="goto-here">
    <!-- END nav -->


    <section class="ftco-section contact-section bg-light">

<!--       <div class="container"> -->
<!--         <div class="row block-9"> -->
         <!-- <center>--> <div class="col-md-6 order-md-last d-flex">
            <form action="${pageContext.request.contextPath }/review/updatePro" method="post" enctype="multipart/form-data">
               
               <div class="star-rating">
				<input type="radio" id="review_Score5" name="review_Score"
					value="5" /> <label for="review_Score5" class="star">&#9733;</label>
				<input type="radio" id="review_Score4" name="review_Score"
					value="4" /> <label for="review_Score4" class="star">&#9733;</label>
				<input type="radio" id="review_Score3" name="review_Score"
					value="3" /> <label for="review_Score3" class="star">&#9733;</label>
				<input type="radio" id="review_Score2" name="review_Score"
					value="2" /> <label for="review_Score2" class="star">&#9733;</label>
				<input type="radio" id="review_Score1" name="review_Score"
					value="1" /> <label for="review_Score1" class="star">&#9733;</label>
			  </div>
			  <br>
              <div class="form-group">
                <input type="hidden" name="review_Num" value="${dto.review_Num}">
                <input type="hidden" class="form-control" placeholder="Your id" name="user_id" value="${sessionScope.id }" readonly>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="review_Title" placeholder="제목을 입력하세요" value="${dto.review_Title }">
              </div>
              <br>
               <br>
                <br>
                 <br>
						<div class="container">
				  <textarea  class="summernote" name="review_Context" readonly>${dto.review_Context }</textarea>    
				<script>
				$('.summernote').summernote({
					  height: 150,
					  lang: "ko-KR"
					});
				</script>
				</div>
					<br>
				    <div class="form-group">
					<div class="filebox">
						<input class="upload-name" value="첨부파일" placeholder="첨부파일">
						<label for="file">파일찾기</label> <input type="file" id="file"
							name="file">
					</div>
					 <span class="text-dark mb-0" th:utext="${board.boardContents}"></span>
					<script>
						$("#file").on('change', function() {
							var fileName = $("#file").val();
							$(".upload-name").val(fileName);
						});
					</script> 
				</div>
			  <br>		
              <div class="form-group">
                <input type="submit" value="글수정" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          </div><!-- </center>-->
      </section>
<!--     </section> -->
  <!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 들어가는 곳 -->    
  <!-- Google Font -->



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
  <script src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

    
  </body>
</html>