$(function(){
	/* 카카오 API연동 주소검색로직 */
	$("#zipSearch").click(function(){
		new daum.Postcode({
		    oncomplete: function(data) {
		        $("#userzipcode").val(data.zonecode);
		        $("#useraddr").val(data.address);
		        document.getElementById('userdetailaddr').focus();
		    }
		}).open();
	});
	
	/* 유효성 검사 */
	$("#sign").click(function(){
		if($("#userid").val()==null || $("#userid").val()==''){
			alert("아이디를 입력해주세요");
			return false;
		}
		if($("#userpwd").val()==null || $("#userpwd").val()==''){
			alert("비밀번호를 입력해주세요");
			return false;
		}
		if($("#userzipcode").val()==null || $("#userzipcode").val()==''){
			alert("우편번호를 입력해주세요");
			return false;
		}
		if($("#useraddr").val()==null || $("#useraddr").val()==''){
			alert("주소를 입력해주세요");
			return false;
		}
		if($("#userdetailaddr").val()==null || $("#userdetailaddr").val()==''){
			alert("상세주소를 입력해주세요");
			return false;
		}
	});
});