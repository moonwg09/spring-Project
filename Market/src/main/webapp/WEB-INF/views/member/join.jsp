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
		<form id="join_form" action="/member/join" method="post">
		<div class="signup_container">
			<div class="signup_title">회원가입</div>


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
				<p class="final_id_ck">아이디를 입력해주세요.</p>
			</div>

			<div class="signuppw_input_textbox_1">
				<div class="singuppw_input_text_1">비밀번호</div>

				<input type="text" class="signuppw_input_box_1" name="password">
				<p class="final_pw_ck">비밀번호를 입력해주세요.</p>

			</div>

			<div class="signuppw_input_textbox_1">
				<div class="singuppw_input_text_1">비밀번호 확인</div>

				<input type="text" class="signuppw_input_box_1_re">
				
				<p class="final_pwck_ck">비밀번호를 확인을 입력해주세요.</p>
				<p class="pwck_input_re_1">비밀번호가 일치합니다.</p>
				<p class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</p>
				
			</div>

			<div class="signup_input_textbox_1">
				<div class="singup_input_text_1">이름</div>

				<input type="text" class="signup_input_box_2" name="nickName">
				
				<p class="final_nickname_ck">이름을 입력해주세요.</p>
			</div>

			<div class="signup_input_email_boxtext">
            <div class="signup_input_email_text">
                이메일
            </div>

            <div class="signup_input_email_boxbtn">
            <input type="text" class="signup_input_email_box" placeholder="예시) 1234@naver.com" id="pInput" name="email">
           
          
            
            <div class="signup_input_email_btn" onclick="showPopup();">
              인증메일 발송
              
              
          </div>
           
        </div>
        	<p class="signupid_input_re_1">인증번호가 일치합니다.</p>
				<p class="signupid_input_re_2">인증번호가 틀립니다. </p>
				  <p class="final_mail_ck">이메일을 입력해주세요.</p>
        	
        </div>

			<div class="signup_input_phoneNum">
				<div class="singup_input_text_1">휴대폰 번호</div>
				<div class="signup_input_phoneNum_scrollBoxBtn">
					<!-- <div class="signup_input_phoneNum_scroll">
                    list
                </div> -->
					<input type="text" class="signup_input_phoneNum_box"
						placeholder="-없이 입력해주세요" name="phone" id="phoneInput">
					<div class="signup_input_phoneNum_btn" onclick="showPopup1()" >
						인증번호 발송</div>
				</div>
					<p class="signupid_input_re_1">인증번호가 일치합니다.</p>
				<p class="signupid_input_re_2">인증번호가 틀립니다. </p>
				  <p class="final_mail_ck">휴대폰 번호를 입력해주세요.</p>
        	
			</div>


			<div class="signup_input_add">
				<div class="singup_input_text_1">주소</div>
				<div class="signup_input_add_boxbtn">

					<input type="text" class="signup_input_add_box"
						id="signup_input_add_box" name="addr1" readonly="readonly">

					<div class="signup_input_add_btn">
						<div class="signup_input_add_btn_text" onclick="execution_daum_address()">
							주소검색</div>
						<script
							src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					</div>
				</div>

				<input type="text" class="signup_input_box_3"
					placeholder="상세주소를 입력해주세요" name="addr2" readonly="readonly">
					
					<p class="final_addr_ck">주소를 입력해주세요.</p>
			</div>

			<div class="signup_btn_form">
				<input type="button" class="signup_btn_cancel" value="취소">
				<input type="submit" class="signup_btn_next" value="가입하기">
			</div>
		</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
	
	<script type="text/javascript" src="https://t1.doumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
<script>

	var code = "0"; //이메일 전송 인증번호 저장위한 코드
	var phoneCode = "0";
	
	//유효성 검사
	var idCheck = false; 	//아이디
	var idckCheck = false; 	// 아이디 중복 검사
	var pwCheck = false; 	// 비번
	var pwckCheck = false; 	// 비번 확인
	var pwckcorCheck = false; //비번 확인 일치 확인
	var nicknameCheck = false; 		//이름
	var mailCheck = false;
	var mailnumCheck = false;
	var phoneCheck = false;
	var phonenumCheck = false;
	var addressCheck = false;
	
	$(document).ready(function(){
		//회원가입 버튼(회원가입 기능 작동)
		$(".signup_btn_next").click(function(){
			/* $("#join_form").attr("action", "/member/join");
			$("#join_form").submit(); */
			
			var id = $(".signupid_input").val();
			var pw = $(".signuppw_input_box_1").val();
			var pwck = $("signuppw_input_box_1_re").val();
			var nickname = $("signup_input_box_2").val();
			var mail = $('.signup_input_email_box').val();
			var phone = $('.signup_input_phoneNum_box').val();
			var addr = $("signup_input_box_3").val();
			
			//아이디 유효성검사
			if(id == "") {
				$('.final_id_ck').css('display', 'block');
				idCheck = false;
			}else{
				$('.final_id_ck').css('display', 'none');
				idCheck = true;
			}
			
			//비밀번호 유효성검사
			if(pw == "") {
				$('.final_pw_ck').css('display', 'block');
				pwCheck = false;
			}else{
				$('.final_pw_ck').css('display', 'none');
				pwCheck = true;
			}
			
			//비밀번호 확인 유효성검사
			if(pwck == "") {
				$('.final_pwck_ck').css('display', 'block');
				pwckCheck = false;
			}else{
				$('.final_pwck_ck').css('display', 'none');
				pwckCheck = true;
			}
			
			//이름 유효성 검사
			if(nickname == ""){
				$('.final_nickname_ck').css('display', 'block');
				nicknameCheck = false;
			}else {
				$('.final_nickname_ck').css('display', 'none');
				nicknameCheck = true;
			}
			
			//이메일 유효성 검사
			if(mail == ""){
				$('.final_mail_ck').css('display', 'block');
				
				mailCheck = false;
			}else {
				$('.final_mail_ck').css('display', 'none');
				mailCheck = true;
			}
			
			//휴대폰 유효성 검사
			if(phone == ""){
				$('.final_phone_ck').css('display', 'block');
				phoneCheck = false;
			}else {
				$('.final_phone_ck').css('display', 'none');
				phoneCheck = true;
			}
			
			//주소 유효성 검사
			if(addr == ""){
				$('.final_addr_ck').css('display', 'block');
				addressCheck = false;
			}else {
				$('.final_addr_ck').css('display', 'none');
				addressCheck = true;
			}
			
			//최종 유효성 검사
			if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck&&mailnumCheck&&phoneCheck&&phonenumCheck&&addressCheck) {
				
				$("#join_form").submit();
			}
			
			return false;
			
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
					idckCheck = true;
					
				} else {
					$('.signupid_input_re_2').css("display", "inline-block");
					$('.signupid_input_re_1').css("display", "none");
					idckCheck = false;
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
			$('.signupid_input_re_1').css("display", "inline-block");
			$('.signupid_input_re_2').css("display", "none");
			mailnumCheck = true;
			
		}else if(mail==""){
			$('.signupid_input_re_1').css("display", "none");
			$('.signupid_input_re_2').css("display", "none");
		}
		
		else {
			$('.signupid_input_re_2').css("display", "inline-block");
			$('.signupid_input_re_1').css("display", "none");
			mailnumCheck = false;
		}
		
	});
	
	$('.signup_input_phoneNum_btn').on(
			"click",
			function() {
				var memberPhone = $('.signup_input_phoneNum_box').val(); // .id_input에 입력되는 값
				var data = {
						memberPhone : memberPhone
				} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
		
				$.ajax({
					type : "post",
					url : "memberPhoneCheck",
					data : data,
					success : function(result) {
						if (result != 'fail') {
							phoneCode = result;
							updatePhoneCheckResult();
						} 
					}// success 종료

				}); // ajax 종료	

			});// function 종료
			// 휴대폰 인증번호 비교
			$(".signup_input_phoneNum_box").blur(function(){
				 updatePhoneCheckResult();
				 function updatePhoneCheckResult() {
				        var inputCode = $(".signup_input_phoneNum_box").val();
				        var checkResult = $("#mail_check_input_box_warning");

				        if (inputCode == phoneCode) {
				            checkResult.html("인증번호가 일치합니다.");
				            checkResult.attr("class", "correct");
				            phonenumCheck = true;
				        }else if(mail==""){
							$('.signupid_input_re_1').css("display", "none");
							$('.signupid_input_re_2').css("display", "none");
						}
				        else {
				            checkResult.html("인증번호를 다시 확인해주세요");
				            checkResult.attr("class", "incorrect");
				            phonenumCheck = false;
				        }
				    }	
			});
			
			//다음 주소 연동
			function execution_daum_address(){
				
				new daum.Postcode({
					oncomplete: function(data) {
						//팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
						
						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수
		 
		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }
		 
		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    //주소 변수 문자열과 참고항목 문자열 합치기
		                    addr += extraAddr;
		                
		                } else {
		                    addr += ' ';
		                }
		 
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                $(".signup_input_add_box").val(data.zonecode);
		                $(".signup_input_box_3").val(addr);
		                $(".signup_input_box_3").attr("readonly",false);
					}
				}).open();
			}
			
			// 비밀번호 확인 일치 유효성 검사
			
			$('.signuppw_input_box_1_re').on("propertychange change keyup paste input", function(){
				
				var pw = $('.signuppw_input_box_1').val();
				var pwck = $('.signuppw_input_box_1_re').val();
				$('.final_pwck_ck').css('display', 'none');
				
				if(pw == pwck){
					$('.pwck_input_re_1').css('display', 'block');
					$('.pwck_input_re_2').css('display', 'none');
					pwckcorCheck = true;
				}else {
					$('.pwck_input_re_1').css('display', 'none');
					$('.pwck_input_re_2').css('display', 'block');
					pwckcorCheck = false;
				}
				
			});
			
</script>

</body>
</html>