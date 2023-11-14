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

    <link rel="stylesheet" type="text/css" href="resources/css/header.css">
    <link rel="stylesheet" type="text/css" href="resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="resources/css/footer.css">
<!--헤더 부분 삽입-->

<title>Index Page</title>
</head>
<body>
	<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
	</div>

	<!--메인 전체 화면 세션-->
	<section class="Main_main">
		<!--메인 첫단 시작-->
		<section class="Main_a">
			<div class="Main_a_Top">
				<div class="Main_a_div">
					<div class="Main_a_Title">
						<h1 class="Main_a_Text">
							당신 근처의<br> 지역 생활 커뮤니티
						</h1>
						<p class="Main_desc">
							동네라서 가능한 모든 것<br> 당근에서 가까운 이웃과 함께해요.
						</p>
						<br>
						<!--당근 마켓 회원가입 로그인 경로-->
						<div class="Main_a_Button">
						<%-- <c:if test="${member == null}"> --%>
						<a href="/member/check" class="Main_aa_Button"> 회원 가입 <!--Signup.html-->
							</a> <a href="member/login" class="Main_aa_Button"> 로그인 <!--Login.html-->
							</a>
						<%-- </c:if> --%>
							
						</div>
					</div>
					<div>
						<img src="resources/image/MainLogo.png" class="Main_a_Logo"
							alt="중고거래">
					</div>
				</div>
			</div>
		</section>
		<!--메인 두번째단 시작-->
		<section class="Main_b">
			<div class="Main_b_Content">
				<div class="Main_b_image">
					<img src="resources/image/MainImg.png" class="MainImg1"
						alt="중고거래사진" style="height: 60%;">
				</div>
				<div>
					<p class="Main_Service">중고 거래</p>
					<h1 class="Main_Title1">
						믿을만한<br> 이웃간 중고 거래
					</h1>
					<p class="Main_desc">
						동네 주민들과 가깝고 따뜻한 거래를<br> 지금 경험해보세요.
					</p>
					<div class="Main_b_Button">
						<a class="TextBtn" href="">인기 매물 보기 <!--인기 매물 보기 클릭 .html-->
						</a> <a class="TextBtn" href="">믿을 수 있는 중고 거래 <!--믿을 수 있는 중고 거래 클릭 .html-->
						</a>
					</div>
				</div>
			</div>
		</section>
		<section class="Main_c">
			<div class="Main_c_Content">
				<div class="Main_c_img1">
					<img src="resources/image/MainHomeTown.png" class="MainImg2"
						alt="이웃과 함께하는 동네생활">
				</div>
				<div>
					<p class="Main_Service">동네 생활</p>
					<h1 class="Main_Title1">
						이웃만 아는<br> 동네 정보 이야기
					</h1>
					<p class="Main_desc">
						우리동네의 다양한 정보의 이야기를<br> 공감과 댓글로 나누어요.
					</p>
					<br>
					<br>
					<br>
					<div class="Main_c_img2">
						<img src="resources/image/MainLife.png" class="MainImg3"
							alt="동네 생활 아래">
					</div>
				</div>
			</div>
		</section>
		<!--3번째 Main 시작-->
		<section class="Main_d">
			<div class="Main_d_Content">
				<div class="Main_d_img1">
					<img src="resources/image/MainImg2.png" class="MainImg4"
						alt="근처 동네 알바 구하기">
				</div>
				<div>
					<p class="Main_Service">알바</p>
					<h1 class="Main_Title1">
						걸어서 10분!<br> 동네 알바 구하기
					</h1>
					<p class="Main_desc">
						당근하듯 쉽고, 편하게<br> 당근 알바로 동네 알바를 구할 수 있어요.
					</p>
					<div class="Main_b_Button">
						<a class="TextBtn" href="">내 근처 알바 보기 <!--내 근처 알바 보기 클릭 .html-->
						</a>
					</div>
				</div>
			</div>
		</section>
		<section class="Main_e">
			<div class="Main_e_Content">
				<div class="Main_e_img1">
					<img src="resources/image/MainNext.png" class="MainImg5"
						alt="당근 동네 업체">
				</div>
				<div>
					<p class="Main_Service">동네 업체</p>
					<h1 class="Main_Title1">
						내 근처에서 찾는<br> 동네업체
					</h1>
					<p class="Main_desc">
						이웃들의 추천 후기를 확인하고<br> 동네 곳곳의 업체들을 찾을 수 있어요.
					</p>
					<div class="Main_b_Button">
						<a target="blank" class="TextBtn" href="">당근 동네 업체 보기 <!--당근 동네 업체 보기 href-->
						</a>
					</div>
				</div>
			</div>
		</section>


	</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>