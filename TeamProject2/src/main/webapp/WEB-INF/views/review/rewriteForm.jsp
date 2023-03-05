<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<title>board</title>
<style>
body {
  padding-top: 70px;
  padding-bottom: 30px;
}
</style>
</head>
<body>
	<article>
		<div class="container" role="main">
			<h2>답변하기</h2>
			<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/rerewritePro">
				<div class="mb-3">
				<input type="hidden" name="re_ref" value="${boardDTO.re_ref }">
				<input type="hidden" name="re_lev" value="${boardDTO.re_lev }">
				<input type="hidden" name="re_seq" value="${boardDTO.re_seq }">
				<%-- <input type="hidden" name="num" value="${boardDTO.num}"> --%>
				<input type="hidden" name="review_Num" value="${boardDTO.review_Num}">
					<label for="reg_id">작성자</label>
					<input type="text" class="form-control" name="user_id" value="${sessionScope.id}" id="reg_id" >
				</div>
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="content"  id="content" placeholder="내용을 입력해 주세요" >${dto.content }</textarea>
				</div>
					<input type="submit" value="답글쓰기" class="btn btn-sm btn-primary">
			</form>
			<div >
		
			</div>
		</div>
	</article>
</body>
</html>