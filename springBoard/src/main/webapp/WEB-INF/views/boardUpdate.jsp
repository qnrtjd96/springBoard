<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정하기</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/boardUpdate.css">

<!-- 써머노트를 위해 쓴 플러그인 -->
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<!-- 써머노트및 써머노트 유효성검사 -->
<script src=/resources/js/summernote.js></script>

</head>
<body>
	<div class="container">
		<div class="main">
			<div class="read">글 수정하기</div>
			<form method="post" action="boardUpdateOk">
				<input type="hidden" name="no" value="${vo.no}">
				<input type="hidden" name="no" value="${vo.date}">
				<input type="hidden" name="no" value="${vo.hit}">
				<ul class="readView">
					<li>제목</li>
					<li><input type="text" name="title" id="title" value="${vo.title}"></li>
					<li>내용</li>
					<li><textarea name="content" id="content">${vo.content}</textarea>
					<li><input type="submit" value="수정하기" class="enter" id="enter"/>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>