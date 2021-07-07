<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 메인</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/boardList.css">
<script>
	/* 글쓰기 버튼을 눌렀을때 */
	$(function(){
		$("#create").click(function(){
			location.href="boardcreate";
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="board">
			<button id="create">글쓰기</button>
			<ul class="main">
				<li>번호</li>
				<li>제목</li>
				<li>날짜</li>
				<li>조회수</li>
				
				<c:forEach var="data" items="${list }">
					<li>${data.no}</li>
		            <li class="wordcut"><a href="boardread?no=${data.no }">${data.title }</a></li>
		            <li>${data.date }</li>
		            <li>${data.hit }</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>