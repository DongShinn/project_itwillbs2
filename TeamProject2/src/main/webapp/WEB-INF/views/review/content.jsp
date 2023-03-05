<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/content.jsp</title>
</head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
#button1 {
	border: 1px solid red;
	float: left;
	width: 30%;
	box-sizing: border-box;
}

#button2 {
	border: 1px solid green;
	float: left;
	margin-left: 5%;
	width: 30%;
	box-sizing: border-box;
}

#button3 {
	border: 1px solid blue;
	float: right;
	width: 30%;
	box-sizing: border-box;
}
</style>
<!-- 서머노트를 위해 추가해야할 부분 -->
<%--   <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.js"></script> --%>
<%--   <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script> --%>
<%--   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.css"> --%>
<!--  -->
<script>
// 	var setting = {
//             height : 300,
//             minHeight : null,
//             maxHeight : null,
//             focus : true,
//             lang : 'ko-KR',
//             toolbar : toolbar,
//             //콜백 함수
//             callbacks : { 
//             	onImageUpload : function(files, editor, welEditable) {
//             // 파일 업로드(다중업로드를 위해 반복문 사용)
//             for (var i = files.length - 1; i >= 0; i--) {
//             uploadSummernoteImageFile(files[i],
//             this);
//             		}
//             	}
//             }
//          };
//         $('#summernote').summernote(setting);
//         });
        
//         function uploadSummernoteImageFile(file, el) {
// 			data = new FormData();
// 			data.append("file", file);
// 			$.ajax({
// 				data : data,
// 				type : "POST",
// 				url : "uploadSummernoteImageFile",
// 				contentType : false,
// 				enctype : 'multipart/form-data',
// 				processData : false,
// 				success : function(data) {
// 					$(el).summernote('editor.insertImage', data.url);
// 				}
// 			});
// 		}
 </script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/aos.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icomoon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">


</head>
<!-- 헤더파일들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더파일들어가는 곳 -->
<body class="goto-here">
	<!-- END nav -->


	<div class="hero-wrap hero-bread"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/bg_1.jpg');">
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span>
					</p>
					<h1 class="mb-0 bread">Blog</h1>
				</div>
			</div>
		</div>
	</div>
<%--  <form action="${pageContext.request.contextPath }/review/writePro" method="POST" class="bg-white p-5 contact-form"> --%>
	<section class="ftco-section ftco-degree-bg">
		<%--        <form action="${pageContext.request.contextPath }/review/writePro" method="POST" class="bg-white p-5 contact-form"> --%>
		<div class="container">
			<!--         <div class="row"> -->
			<div class="col-lg-8 ftco-animate">
				<h2 class="mb-3">${dto.review_Title }</h2>
				<div id="co_id" name="review_Title">${dto.review_Context }</div>
				<script>
                  $('#co_id').html(cobook); 
				 document.getElementById('co_id').innerHTML = cobook;
					</script>

				<br>
				<div class="about-author d-flex p-4 bg-light">
					<div class="desc align-self-md-center">
						<h3>${dto.user_id }</h3>
						<p>
							<c:if test="${dto.review_Score == 1.0}">
								<td class="starImg"><img
									src="${pageContext.request.contextPath}/resources/images/star1.png"></td>
							</c:if>
							<c:if test="${dto.review_Score == 2.0}">
								<td class="starImg"><img
									src="${pageContext.request.contextPath}/resources/images/star2.png"></td>
							</c:if>
							<c:if test="${dto.review_Score == 3.0}">
								<td class="starImg"><img
									src="${pageContext.request.contextPath}/resources/images/star3.png"></td>
							</c:if>
							<c:if test="${dto.review_Score == 4.0}">
								<td class="starImg"><img
									src="${pageContext.request.contextPath}/resources/images/star4.png"></td>
							</c:if>
							<c:if test="${dto.review_Score == 5.0}">
								<td class="starImg"><img
									src="${pageContext.request.contextPath}/resources/images/star5.png"></td>
							</c:if>
						</p>
					</div>
				</div>
				<br>
				<div class="form-group">
					<c:if test="${dto.user_id eq sessionScope.id}">
						<input type="button" value="글수정" id="button1"
							onclick="location.href='${pageContext.request.contextPath}/review/update?num=${dto.review_Num}'"
							class="btn btn-primary py-3 px-5">
						<center>
							
							<input type="button" value="글삭제" id="button2"
								onclick="location.href='${pageContext.request.contextPath}/review/delete?num=${dto.review_Num}'"
								class="btn btn-primary py-3 px-5">
						</center>
					</c:if>
					<input type="button" value="글목록" id="button3"
						onclick="location.href='${pageContext.request.contextPath }/review/list'"
						class="btn btn-primary py-3 px-5">
				</div>
				<!-- 	댓글 리스트		  -->
				<br>
				<br>
				<br>
	
					
<!--       <div class="container"> -->
<!--         <div class="row"> -->
            
            <div class="about-author d-flex p-4 bg-light">
              <div class="bio align-self-md-center mr-4">
                <img src="${pageContext.request.contextPath}/resources/images/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4">
              </div>
              <div class="desc align-self-md-center">
                <h3>Lance Smith</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
              </div>
            </div>


            <div class="pt-5 mt-5">
              <h3 class="mb-5"></h3>
              <ul class="comment-list">
              	<c:forEach var="dto" items="${boardList }">
                <li class="comment">
                  <div class="vcard bio">
                    <img src="${pageContext.request.contextPath}/resources/images/person_1.jpg" alt="Image placeholder">
                  </div>
                      <c:if test="${dto.re_lev > 0}">
    	<c:set var="wid" value="${dto.re_lev*10 }"></c:set>
<%--     	<img src="${pageContext.request.contextPath }/resources/images/center/level.gif"  --%>
<%--     	                  width="${wid }" height="15"> --%>
    	<img src="${pageContext.request.contextPath }/resources/images/center/re.gif">
    </c:if>
                  <div class="comment-body">
                      <p>${dto.content}</p>
                      
                    <h3>${dto.user_id } 작성날짜 : <fmt:formatDate value="${dto.date}" pattern="yyyy.MM.dd"/></h3>
                  
                    <div class="form-group">
					 <c:if test="${dto.user_id eq sessionScope.id}">
						<input type="button" value="글수정" id="button1"
							onclick="location.href='${pageContext.request.contextPath }/board/reupdate?num=${dto.num}'"
							class="reply">
						<input type="button" value="글삭제" id="button2"
							onclick="location.href='${pageContext.request.contextPath }/board/redelete?num=${dto.num}&review_Num=${dto.review_Num}'"
							class="reply">
					</c:if>		
					    <input type="button" value="Reply" id="button3"
						    onclick="location.href='${pageContext.request.contextPath }/board/rerewrite?num=${dto.num}&review_Num=${dto.review_Num}'"
						    class="reply">
				   	    
				</div>
                  </div>
                </li>

<!--                 <li class="comment"> -->
<!--                   <div class="vcard bio"> -->
<!--                     <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                   </div> -->
<!--                   <div class="comment-body"> -->
<!--                     <h3>John Doe</h3> -->
<!--                     <div class="meta">June 27, 2018 at 2:21pm</div> -->
<!--                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p> -->
<!--                     <p><a href="#" class="reply">Reply</a></p> -->
<!--                   </div> -->

<!--                   <ul class="children"> -->
<!--                     <li class="comment"> -->
<!--                       <div class="vcard bio"> -->
<!--                         <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                       </div> -->
<!--                       <div class="comment-body"> -->
<!--                         <h3>John Doe</h3> -->
<!--                         <div class="meta">June 27, 2018 at 2:21pm</div> -->
<!--                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p> -->
<!--                         <p><a href="#" class="reply">Reply</a></p> -->
<!--                       </div> -->


<!--                       <ul class="children"> -->
<!--                         <li class="comment"> -->
<!--                           <div class="vcard bio"> -->
<!--                             <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                           </div> -->
<!--                           <div class="comment-body"> -->
<!--                             <h3>John Doe</h3> -->
<!--                             <div class="meta">June 27, 2018 at 2:21pm</div> -->
<!--                             <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p> -->
<!--                             <p><a href="#" class="reply">Reply</a></p> -->
<!--                           </div> -->

<!--                             <ul class="children"> -->
<!--                               <li class="comment"> -->
<!--                                 <div class="vcard bio"> -->
<!--                                   <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                                 </div> -->
<!--                                 <div class="comment-body"> -->
<!--                                   <h3>John Doe</h3> -->
<!--                                   <div class="meta">June 27, 2018 at 2:21pm</div> -->
<!--                                   <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p> -->
<!--                                   <p><a href="#" class="reply">Reply</a></p> -->
<!--                                 </div> -->
<!--                               </li> -->
<!--                             </ul> -->
<!--                         </li> -->
<!--                       </ul> -->
<!--                     </li> -->
<!--                   </ul> -->
<!--                 </li> -->

<!--                 <li class="comment"> -->
<!--                   <div class="vcard bio"> -->
<!--                     <img src="images/person_1.jpg" alt="Image placeholder"> -->
<!--                   </div> -->
<!--                   <div class="comment-body"> -->
<!--                     <h3>John Doe</h3> -->
<!--                     <div class="meta">June 27, 2018 at 2:21pm</div> -->
<!--                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p> -->
<!--                     <p><a href="#" class="reply">Reply</a></p> -->
<!--                   </div> -->
<!--                 </li> -->
				</c:forEach>
              </ul>
              <!-- END comment-list -->
              
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">댓글</h3>
                <form action="${pageContext.request.contextPath }/board/rewritePro" method="post" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="name">Name *</label>
                    <input type="hidden" name="review_Num" value="${dto.review_Num}">
                    <input type="text" class="form-control" id="name" name="user_id" value="${sessionScope.id}">
                  </div>
						
                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" cols="10" rows="10" class="form-control" name="content"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="댓글" class="btn py-3 px-4 btn-primary">
                  </div>

                </form>
              </div>
            </div>
          </div> <!-- .col-md-8 -->

        </div>
      </div>
    </section> <!-- .section -->

	<!-- 푸터 들어가는 곳 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	<!-- 푸터 들어가는 곳 -->



	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/aos.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scrollax.min.js"></script>
	<!--   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script> -->
	<script
		src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>


</body>
</html>