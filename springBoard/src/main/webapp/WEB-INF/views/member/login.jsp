<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<!-- css파일 -->
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/css/login.css">
<script>
	$(function(){
		$("#sign").click(function(){
			location.href="sign";
		});
	});
</script>
</head>
<body>
	<div class="container">
		<form method="post" action="loginOk">
			<ul class="loginMain">
				<li>아이디</li>
				<li><input type="text" name="userid" id="userid" placeholder="아이디 입력해주세요"/></li>
				<li>비밀번호</li>
				<li><input type="text" name="userpwd" id="userpwd" placeholder="비밀번호 입력해주세요"/></li>
			</ul>
			<input type="submit" value="로그인" id="login"><br/>
		</form>
		<input type="button" value="회원가입" id="sign">
	</div>
</body>
</html>