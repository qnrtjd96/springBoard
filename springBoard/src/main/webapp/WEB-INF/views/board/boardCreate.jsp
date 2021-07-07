<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<!-- css파일 -->
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/css/boardcreate.css">

<!-- 써머노트를 위해 쓴 플러그인 -->

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<script>
	$(function(){
		$('#content').summernote({
			height:400
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="main">
			<div class="read">글 쓰기</div>
			<form method="post" action="boardCreateOk">
				<ul class="readView">
					<li>제목</li>
					<li><input type="text" name="title" id="title"/></li>
					<li>내용</li>
					<li><textarea name="content" id="content"></textarea></li>
					<li><input type="submit" value="글등록" class="enter"/>
						<input type="reset" value="다시쓰기" class="reeset"/>
					</li>
				</ul>
			</form>
		</div>
	</div>
</body>
</html>