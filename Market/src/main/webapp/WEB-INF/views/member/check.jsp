<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css"
	href="../resources/css/header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/member/check.css">
<!--헤더 부분 삽입-->

<title>Index Page</title>
</head>
<body>

<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
	<div class="check_form">
		<div class="check_container">
			<div class="check_title">회원가입</div>
			<hr />

			<div class="check_step_form">
				<div class="check_step">
					<div class="progressbar-wrapper">
						<ul class="progressbar">
							<li class="active">약관동의</li>
							<li>정보입력</li>
							<li>가입완료</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="check_subtitle_form">
				<div class="check_subtitle_text">약관동의</div>
				<div class="check_subtitle_text2">회원가입에 필요한 약관에 동의해주세요</div>
			</div>

			<div class="check_check_form">
				<div class="check_check_allCform">
					<div class="check_check_allCboxtext">
						<div class="check_check_allCbox">
							<input type="checkbox" class="check_all">
						</div>
						<div class="check_check_allCtext">모두 동의합니다</div>
					</div>

					<div class="check_check_allCsub">현재 동의는 필수정보에 대한 동의가 필요한
						사항입니다. 모두 동의 하시겠습니까?</div>
				</div>

				<div class="check_check_selectC">
					<div class="check_check_selectC1_title">서비스 약관 동의</div>
					<div class="check_check_selectC1_text">
						<textarea name="" id="" cols="40" rows="5"></textarea>
					</div>
					<div class="check_check_selectC1_boxtext">
						<div class="check_check_selectC1_box">
							<input type="checkbox" class="check_1">
						</div>
						<div class="check_check_selectC1_text">동의합니다.</div>
					</div>

					<div class="check_check_selectC2_title">개인정보 수집 및 이용 동의</div>
					<div class="check_check_selectC2_text">
						<textarea name="" id="" cols="40" rows="5"></textarea>
					</div>
					<div class="check_check_selectC2_boxtext">
						<div class="check_check_selectC2_box">
							<input type="checkbox" class="check_2">
						</div>
						<div class="check_check_selectC2_text">동의합니다.</div>
					</div>
				</div>
			</div>

			<hr>

			<div class="check_btn_form">
				<div class="check_btn_cancel">취소</div>
				<div class="check_btn_next" onclick="javascript:location.href='/member/join'">다음</div>

			</div>

		</div>
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>