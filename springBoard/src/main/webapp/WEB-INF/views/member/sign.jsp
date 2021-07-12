<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/css/sign.css">

<!-- 카카오 우편번호API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 카카오 우편번호 로직 및 벨리데이션체크js -->
<script src=<%=request.getContextPath()%>/resources/js/sign.js></script>
</head>
<body>
	<div class="container">
		<div class="main">
			<div class="mainname">회원가입</div>
			<form method="post" action="signin">
				<ul class="Notepad">
					<li>아이디</li>
					<li><input type="text" name="userid" id="userid" placeholder="아이디를 입력해주세요"/></li>
					<li>비밀번호</li>
					<li><input type="password" name="userpwd" id="userpwd" placeholder="비밀번호를 입력해주세요"/></li>
					<li>주소<button type="button" id="zipSearch">우편번호찾기</button></li>
					<li><input type="text" name="userzipcode" id="userzipcode" placeholder="우편번호"/>
						<input type="text" name="useraddr" id="useraddr" placeholder="주소"/><br/>
						<input type="text" name="userdetailaddr" id="userdetailaddr" placeholder="상세주소"/></li>
				</ul>
				<input type="submit" value="가입하기" class="sign" id="sign"/>
			</form>
		</div>
	</div>
</body>
</html>