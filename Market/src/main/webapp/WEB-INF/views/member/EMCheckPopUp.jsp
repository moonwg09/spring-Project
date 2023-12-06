<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/member/popup.css">
</head>
<body>
<div class="EMPopup_form">
        <div class="EMPopup_form_container">
        <div class="EMPopup_title">
        발송된 메일의 인증코드를 입력해주세요
        </div>
        <div class="EMPopup_main_form">
            <div class="EMPopup_form_main_box">
            <input type="text" class="EMPopup_form_main_input" id="cInput">
            </div>
            <div class="EMPopup_main_btn" onclick="setParentText()">
                확인
            </div>
        </div>
        <div class="EMPopup_under">
            <div class="EMPopup_under_retext">
                메일이 가지 않았나요?
            </div>
            <div class="EMPopup_under_btn">
                재전송하기
            </div>
        </div>
    </div>
    </div>
    
   <script>
   	
   	function setParentText() {
   		opener.document.getElementById("pInput").value = document.getElementById("cInput").value;
   		window.close();
   	}
   	
  //인증번호 이메일 전송
	$(".EMPopup_under_btn").click(function(){
		
		var email = $(".EMPopup_under_btn").val();
		
		$.ajax({
			
			type:"GET",
			url:"mailCheck?email=" + email,
			success:function(data){
				
				code = data;
				
			}
		});
	});
   
   
   </script>

</body>
</html>