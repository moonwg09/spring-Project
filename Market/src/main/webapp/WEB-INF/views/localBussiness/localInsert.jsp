<%@page import="com.vam.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css"
	href="../resources/css/header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet"
	href="../resources/css/transation/detailProduct.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="../resources/css/transation/writeProduct.css" />
<link rel="stylesheet" href="../resources/css/member/join.css" />
<style>
/* Hide the checkboxes by default */
.write_category_li.selected {
	background-color: #c0c0c0;
	/* Change this to your desired background color */
}
</style>
</head>
>
</script>
<%
// 헤더에서 세션을 가져옴
HttpSession sess = request.getSession();
MemberVO member = (MemberVO) sess.getAttribute("member");
%>
<body>
	<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
	<form action="localInsert" method="post" enctype="multipart/form-data"
		style="width: 100%" multiple>
		<div class="modal_button_div"
			style="display: block; margin-top: 100px;">
			<span style="font-weight: 700; font-size: 20px">판매글 작성</span>
			<p class="product_write_img_p">
				상품이미지를 등록해주세요<span class="product_write_img_span">* 최대 6장까지
					등록가능합니다.</span>
			</p>
			<input type="hidden" value="${member.nickName}" name="writer">
			<div style="display: flex; margin-right: 1%">
				<div class="comment_form"
					onclick="document.querySelector('.input_filed').click()">

					<input type="file"
						accept="image/jpg, image/jpeg, image/png, image/gif"
						class="input_filed" hidden multiple onchange="readURL(this);"
						name='img' id='img' /> <i class="fa-solid fa-cloud-arrow-up"
						style="color: #1475cf; font-size: 35px"></i>
				</div>
				<div id="imagePreviewContainer" style="display: flex"></div>
			</div>
			<div class="product_write_title" style="margin-bottom: 3%">
				<input type="text" placeholder="상품명" name="title" />
			</div>
			<div class="write_category_container">

					<ul class="write_category_ul first" style="display: block ;width:100%;">
						<li class="write_category_li"><input type="checkbox"
							name="categori" value="1">전체</li>
						<li class="write_category_li">식당 <input type="checkbox"
							name="categori" value="2">
						</li>
			
						<li class="write_category_li">카페 <input type="checkbox"
							name="categori" value="3">
						</li>
						<li class="write_category_li">용달/이사 <input type="checkbox"
							name="categori" value="4">
						</li>
						<li class="write_category_li">뷰티/미용 <input type="checkbox"
							name="categori" value="5">
						</li>
						<li class="write_category_li">헬스/필라테스/요가 <input
							type="checkbox" name="categori" value="6">
						</li>
					</ul>
				
			</div>
			<div class="product_write_price">
				<input type="text" placeholder="상품가격" name="price" />
			</div>

			<div class="product_write_content_container">
				<p>상품내용</p>
				<textarea rows="20" class="product_write_content_textarea"
					name="content"></textarea>
			</div>
			<div class="signup_input_add">
				<div class="singup_input_text_1">주소</div>
				<div class="signup_input_add_boxbtn">

					<input type="text" class="signup_input_add_box"
						style="border: 1px solid rgba(0, 0, 0, 0.3); background-color: white"
						id="signup_input_add_box" name="addr1" readonly="readonly">

					<div class="signup_input_add_btn">
						<div class="signup_input_add_btn_text"
							onclick="execution_daum_address()">주소검색</div>
						<script
							src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					</div>
				</div>

				<input type="text" class="signup_input_box_3"
					style="border: 1px solid rgba(0, 0, 0, 0.3); background-color: white"
					placeholder="상세주소를 입력해주세요" name="address" readonly="readonly">

				<p class="final_addr_ck">주소를 입력해주세요.</p>
			</div>
			<div class="write_product_button_container">
				<div style="width: 100%; margin: 0 auto; text-align: center">
					<input class="write_button_input" type="submit" value="등록" /> <input
						class="write_button_input no_write" type="button" value="취소" />
				</div>
			</div>
		</div>
	</form>

	<script>
		function readURL(input) {
			var imagePreviewContainer = document
					.getElementById('imagePreviewContainer');
			imagePreviewContainer.innerHTML = ''; // Clear previous previews

			if (input.files && input.files.length > 0) {
				// Limit the number of images to 4
				var maxImages = 6;
				for (var i = 0; i < Math.min(input.files.length, maxImages); i++) {
					var reader = new FileReader();
					reader.onload = function(e) {
						var img = document.createElement('img');
						img.src = e.target.result;
						img.style.width = '100px'; // Adjust the width as needed
						img.style.height = '100px'; // Adjust the height as needed
						imagePreviewContainer.appendChild(img);
					};
					reader.readAsDataURL(input.files[i]);
				}
			}
		}
	</script>

	<script>
		function execution_daum_address() {

			new daum.Postcode(
					{
						oncomplete : function(data) {
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
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
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
							$(".signup_input_box_3").attr("readonly", false);
						}
					}).open();
		}
	</script>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>