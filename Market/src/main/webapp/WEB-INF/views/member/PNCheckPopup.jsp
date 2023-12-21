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
 <div class="PNPopup_form">
        <div class="PNPopup_form_container">
        <div class="PNPopup_title">
        발송된 문자안에 인증코드를 입력해주세요
        </div>
        <div class="PNPopup_main_form">
            <div class="PNPopup_form_main_box">
            <input type="text" class="PNPopup_form_main_input" id="ckInput">
            </div>
            <div class="PNPopup_main_btn" onclick="setParentText()" >
                확인
            </div>
        </div>
        <div class="PNPopup_under">
            <div class="PNPopup_under_retext">
                문자가 가지 않았나요?
            </div>
            <div class="PNPopup_under_btn">
                재전송하기
            </div>
        </div>
    </div>
    </div>
    
    <script>
	function setParentText() {
   		
   		window.close();
   	}
    </script>
</body>
</html>