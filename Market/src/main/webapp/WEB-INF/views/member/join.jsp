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
</head>
<body>
	<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
	<div class="signup_form">
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

			<div class="signup_input_textbox">
				<div class="signup_input_text">아이디</div>
				<div class="signup_input_boxcheck">
					<input type="text" class="signup_input_box_id" />

					<div class="signup_input_check">중복확인</div>
				</div>
			</div>

			<div class="signup_input_textbox_1">
				<div class="singup_input_text_1">비밀번호</div>

				<input type="text" class="signup_input_box_1">

			</div>

			<div class="signup_input_textbox_1">
				<div class="singup_input_text_1">비밀번호 확인</div>

				<input type="text" class="signup_input_box_1_re">

			</div>

			<div class="signup_input_textbox_1">
				<div class="singup_input_text_1">이름</div>

				<input type="text" class="signup_input_box_2">

			</div>

			<div class="signup_input_email_boxtext">
				<div class="signup_input_email_text">이메일</div>

				<div class="signup_input_email_boxbtn">
					<input type="text" class="signup_input_email_box"
						placeholder="예시) 1234@naver.com">

					<div class="signup_input_email_btn" onclick="showPopup();">
						인증메일 발송</div>
				</div>
			</div>

			<div class="signup_input_phoneNum">
				<div class="singup_input_text_1">휴대폰 번호</div>
				<div class="signup_input_phoneNum_scrollBoxBtn">
					<!-- <div class="signup_input_phoneNum_scroll">
                    list
                </div> -->
					<input type="text" class="signup_input_phoneNum_box"
						placeholder="-없이 입력해주세요">
					<div class="signup_input_phoneNum_btn" onclick="showPopup1()">
						인증번호 발송</div>
				</div>
			</div>


			<div class="signup_input_add">
				<div class="singup_input_text_1">주소</div>
				<div class="signup_input_add_boxbtn">

					<input type="text" class="signup_input_add_box"
						id="signup_input_add_box">

					<div class="signup_input_add_btn">
						<div class="signup_input_add_btn_text" onclick="findAddr()">
							주소검색</div>
						<script
							src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					</div>
				</div>

				<input type="text" class="signup_input_box_3"
					placeholder="상세주소를 입력해주세요">

			</div>

			<hr />

			<div class="signup_btn_form">
				<div class="signup_btn_cancel" onclick="/member/check">뒤로</div>
				<div class="signup_btn_next" onclick="/member/complete">가입</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>