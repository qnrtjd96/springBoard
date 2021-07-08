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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/paging.css">
<script>
	/* 글쓰기 버튼을 눌렀을때 */
	$(function(){
		$("#create").click(function(){
			location.href="boardCreate";
		});
		$("#login").click(function(){
			location.href="login";
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="board">
			<button id="login">로그인</button>
			<button id="create">글쓰기</button>
			<ul class="main">
				<li>번호</li>
				<li>제목</li>
				<li>날짜</li>
				<li>조회수</li>
				
				<c:forEach var="data" items="${list }">
					<li>${data.no}</li>
		            <li class="wordcut"><a href="boardRead?no=${data.no }">${data.title }</a></li>
		            <li>${data.date }</li>
		            <li>${data.hit }</li>
				</c:forEach>
			</ul>
		</div>
		<div class="page_wrap">
			<div class="page_nation">
			   <c:if test="${pageVO.pageNum>1}"><!-- 이전페이지가 있을때 -->
			   		<a class="arrow prev" href="/?pageNum=${pageVO.pageNum-1}"></a>
			   </c:if>
			   <!-- 페이지 번호                   1                                    5                     -->
	           <c:forEach var="p" begin="${pageVO.startPageNum}" step="1" end="${pageVO.startPageNum + pageVO.onePageNum-1}">
	              <c:if test="${p<=pageVO.totalPage}">
	                 <c:if test="${p==pageVO.pageNum}"> <!-- 현재페이지일때 실행 -->
	                    <a class="active">${p}</a>
	                 </c:if>   
	                 <c:if test="${p!=pageVO.pageNum}"> <!-- 현재페이지가 아닐때 실행 -->
	                    <a href="/?pageNum=${p}">${p}</a>
	                 </c:if>
	              </c:if>
	           </c:forEach>
	           <c:if test="${pageVO.pageNum < pageVO.totalPage}">
	              <a class="arrow next" href="/?pageNum=${pageVO.pageNum+1}"></a>
	           </c:if>
			</div>
		 </div>
	</div>
</body>
</html>