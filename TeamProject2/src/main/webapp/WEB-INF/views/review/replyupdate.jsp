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
			<h2>댓글 수정</h2>
			<form name="form" id="form" role="form" method="post" action="${pageContext.request.contextPath}/board/reupdatePro">
				<div class="mb-3">
				<input type="hidden" name="num" value="${dto.num}">
				<input type="hidden" name="review_Num" value="${dto.review_Num}">
					<label for="reg_id">작성자</label>
					<input type="text" class="form-control" name="user_id" value="user_id" id="reg_id" >
				</div>
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="content"  id="content" placeholder="내용을 입력해 주세요" >${dto.content }</textarea>
				</div>
					<input type="submit" value="글수정" class="btn btn-sm btn-primary">
			</form>
			<div >
		
			</div>
		</div>
	</article>
</body>
</html>