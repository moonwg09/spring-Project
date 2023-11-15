<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../resources/css/header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/member/join.css">
	<script src="https://code.jquery.com/jquery-3.4.1.js"
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
   crossorigin="anonymous"></script>
   <script type="text/javascript" src="../resources/js/signup.js"></script>
</head>
<body>
	<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
	<div class="signup_form">
		<form id="join_form" method="post">
		<div class="signup_container">
			<div class="signup_title">회원가입</div>
			<hr />

			<div class="signup_step_form">
				<div class="signup_step">
					<div class="progressbar-wrapper">
						<ul class="progressbar">
							<li>약관동의</li>
							<li class="active">정보입력</li>
							<li>가입완료</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="signup_subtitle_form">
				<div class="signup_subtitle_text">정보입력</div>
				<div class="signup_subtitle_text2">회원가입에 필요한 정보를 입력해주세요</div>
			</div>

			<div class="signupid_wrap">
				<div class="signupid_name">아이디</div>
				<div class="signupid_input_box">
					<input type="text" class="signupid_input" name="id"/>
				</div>
				<span class="signupid_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="signupid_input_re_2">아이디가 이미 존재합니다.</span>
			</div>

			<div class="signuppw_input_textbox_1">
				<div class="singuppw_input_text_1">비밀번호</div>

				<input type="text" class="signuppw_input_box_1" name="password">

			</div>

			<div class="signuppw_input_textbox_1">
				<div class="singuppw_input_text_1">비밀번호 확인</div>

				<input type="text" class="signuppw_input_box_1_re">

			</div>

			<div class="signup_input_textbox_1">
				<div class="singup_input_text_1">이름</div>

				<input type="text" class="signup_input_box_2" name="nickName">

			</div>

			<div class="signup_input_email_boxtext">
            <div class="signup_input_email_text">
                이메일
            </div>

            <div class="signup_input_email_boxbtn">
            <input type="text" class="signup_input_email_box" placeholder="예시) 1234@naver.com" id="pInput">
            
            <div class="signup_input_email_btn" onclick="showPopup();">
              인증메일 발송
          </div>
          
        </div>
        	<p id="mail_check_input_box_warn"></p>
        </div>

			<div class="signup_input_phoneNum">
				<div class="singup_input_text_1">휴대폰 번호</div>
				<div class="signup_input_phoneNum_scrollBoxBtn">
					<!-- <div class="signup_input_phoneNum_scroll">
                    list
                </div> -->
					<input type="text" class="signup_input_phoneNum_box"
						placeholder="-없이 입력해주세요" name="phone">
					<div class="signup_input_phoneNum_btn" onclick="showPopup1()">
						인증번호 발송</div>
				</div>
			</div>


			<div class="signup_input_add">
				<div class="singup_input_text_1">주소</div>
				<div class="signup_input_add_boxbtn">

					<input type="text" class="signup_input_add_box"
						id="signup_input_add_box" name="addr1">

					<div class="signup_input_add_btn">
						<div class="signup_input_add_btn_text" onclick="findAddr()">
							주소검색</div>
						<script
							src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					</div>
				</div>

				<input type="text" class="signup_input_box_3"
					placeholder="상세주소를 입력해주세요" name="addr2">

			</div>

			<hr>

			<div class="signup_btn_form">
				<input type="button" class="signup_btn_cancel" value="취소">
				<input type="button" class="signup_btn_next" value="가입하기">
			</div>
		</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
	
<script>

	var code = ""; //이메일 전송 인증번호 저장위한 코드
	
	$(document).ready(function(){
		//회원가입 버튼(회원가입 기능 작동)
		$(".signup_btn_next").click(function(){
			$("#join_form").attr("action", "/member/join");
			$("#join_form").submit();
		});
	});
	
	//아이디 중복검사
	$('.signupid_input').on("propertychange change keyup paste input", function(){
		
		var id = $('.signupid_input').val(); //signup_input에 입력되는 값
		var data = {id : id}
		
		$.ajax({
			type : "post",
			url : "/member/idChk",
			data : data,
			success : function(result) {
				if(result != 'fail'){
					$('.signupid_input_re_1').css("display", "inline-block");
					$('.signupid_input_re_2').css("display", "none");
					
				} else {
					$('.signupid_input_re_2').css("display", "inline-block");
					$('.signupid_input_re_1').css("display", "none");
				}
			}
		});
	});
	
	//인증번호 이메일 전송
	$(".signup_input_email_btn").click(function(){
		
		var email = $(".signup_input_email_box").val();
		
		$.ajax({
			
			type:"GET",
			url:"mailCheck?email=" + email,
			success:function(data){
				
				code = data;
				
			}
		});
	});
	
	//인증번호 비교
	$(".signup_input_email_box").blur(function(){
		
		var inputCode = $(".signup_input_email_box").val(); //입력코드
		var checkResult = $("#mail_check_input_box_warn"); //비교결과
		
		if(inputCode == code){
			checkResult.html("인증번호가 일치합니다.");
			checkResult.attr("class", "correct");
		} else {
			checkResult.html("인증번호를 다시 확인해주세요");
			checkResult.attr("class", "incorrect");
		}
	});
	
	
	
	
</script>
</body>
</html>