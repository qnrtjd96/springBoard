<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 상세보기</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/boardread.css">
<script>
	$(function(){
		$("#delete").click(function(){
			if(confirm("정말 삭제하시겠습니까?")){
				location.href="deleteOk?no=${vo.no}";
			}
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="main">
			<div class="read">글 상세내용 보기</div>
			<ul class="readView">
				<li>번호</li>
				<li>${vo.no }</li>
				<li>날짜</li>
				<li>${vo.date }</li>
				<li>조회수</li>
				<li>${vo.hit }</li>
				<li>제목</li>
				<li>${vo.title }</li>
				<li>내용</li>
			</ul>
			<div class="content">${vo.content }</div>
			<div class="save">
				<a href="boardUpdate?no=${vo.no}"><button>수정하기</button></a>
				<button id="delete">삭제</button>
			</div>
		</div>
	</div>
</body>
</html>