$(document).ready(function() {
	  $('#content').summernote({
		  height: 500,                 // 에디터 높이 
		  focus: true,
		  //콜백 함수
          callbacks : { 
	          	onImageUpload : function(files, editor, welEditable) {
	          // 파일 업로드(다중업로드를 위해 반복문 사용)
	          for (var i = files.length - 1; i >= 0; i--) {
	          uploadSummernoteImageFile(files[i],this);
	          		}
	          	}
	          }
	  });
	  
	  /* 유효성 검사 */
	  $("#enter").click(function(){
		if($("#title").val()==null || $("#title").val()==''){
			alert("제목을 입력해주세요");
			return false;
		}
		if($("#content").val()==null || $("#content").val()==''){
			alert("내용를 입력해주세요");
			return false;
		}
	  });
});
	
/**
* 이미지 파일 업로드
*/
function uploadSummernoteImageFile(file, el) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "uploadSummernoteImageFile",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(data) {
			$(el).summernote('editor.insertImage', data.url);
		}
	});
}