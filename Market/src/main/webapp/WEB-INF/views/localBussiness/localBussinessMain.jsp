<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../resources/css/header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet"
	href="../resources/css/localBussiness/localBussinessMain.css">
</head>
<body>
	<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
	<div id="wrap" style="margin-top: 6%;">
		<section class="Top_Header" style="display: flex;">
			<div class="Header">
				<h1>
					동네 이웃들이 <br> 자주 가는 동네 업체
				</h1>
				<span class="Header_span"> 우리 동네 사람들이<br> 이용하는 업체를
					찾아보세요.
				</span>
			</div>
			<div class="Img">
				<img src="../resources/image/local_logo.png"
					style="margin-left: 5%;">
			</div>

		</section>
		<!--다양한 동네 업체 시작-->
		<div id="Body">
			<section class="nation">
				<br> <br>
				<h2>다양한 동네 업체를 볼 수 있어요</h2>
				<div class="nation_A">
					<input type="radio" id="menu_all" name="menu" value="전체" checked>
					<label for="menu_all">전체</label> <input type="radio"
						id="menu_restaurant" name="menu" value="식당"> <label
						for="menu_restaurant">식당</label> <input type="radio"
						id="menu_cafe" name="menu" value="카페"> <label
						for="menu_cafe">카페</label> <input type="radio" id="menu_delivery"
						name="menu" value="용달/이사"> <label for="menu_delivery">용달/이사</label>

					<input type="radio" id="menu_beauty" name="menu" value="뷰티/미용">
					<label for="menu_beauty">뷰티/미용</label> <input type="radio"
						id="menu_fitness" name="menu" value="헬스/필라테스/요가"> <label
						for="menu_fitness">헬스/필라테스/요가</label>
				</div>

				<!--전체창-->
				<div id="nation1">
					<ul class="menu_all" style="display: flex;">
						<c:forEach items="${local}" var="local" varStatus="loop">
							<c:if test="${local.categori == 1}">


								<li class="A"><a class="a"
									href="localDetail?productNo=${local.productNo}"
									style="width: 100%">
										<div class="Menu_AA" style="display: flex;">
											<div class="Main_Img">
												<img src="image/오.png">
											</div>
											<div class="Sub_content" style="width: 100%">
												<div class="Sub_wrapper">
													<p class="Sub_list">${local.title }</p>
													<span class="Sub_list_region">${local.address }</span>
												</div>
												<span class="Sub_list_description">${local.content}</span> <span
													class="Sub_list_infos">후기 ${local.replyCount} ∙ 단골
													${local.revisitCount}</span>
											</div>
										</div>
								</a></li>

							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div id="nation2">
					<ul class="menu_all" style="display: flex;">
						<c:forEach items="${local}" var="local" varStatus="loop">
							<c:if test="${local.categori == 2}">


								<li class="A"><a class="a"
									href="localDetail?productNo=${local.productNo}"
									style="width: 100%">
										<div class="Menu_AA" style="display: flex;">
											<div class="Main_Img">
												<img src="image/오.png">
											</div>
											<div class="Sub_content" style="width: 100%">
												<div class="Sub_wrapper">
													<p class="Sub_list">${local.title }</p>
													<span class="Sub_list_region">${local.address }</span>
												</div>
												<span class="Sub_list_description">${local.content}</span> <span
													class="Sub_list_infos">후기 ${local.replyCount} ∙ 단골
													${local.revisitCount}</span>
											</div>
										</div>
								</a></li>

							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div id="nation3">
					<ul class="menu_all" style="display: flex;">
						<c:forEach items="${local}" var="local" varStatus="loop">
							<c:if test="${local.categori == 3}">


								<li class="A"><a class="a"
									href="localDetail?productNo=${local.productNo}"
									style="width: 100%">
										<div class="Menu_AA" style="display: flex;">
											<div class="Main_Img">
												<img src="image/오.png">
											</div>
											<div class="Sub_content" style="width: 100%">
												<div class="Sub_wrapper">
													<p class="Sub_list">${local.title }</p>
													<span class="Sub_list_region">${local.address }</span>
												</div>
												<span class="Sub_list_description">${local.content}</span> <span
													class="Sub_list_infos">후기 ${local.replyCount} ∙ 단골
													${local.revisitCount}</span>
											</div>
										</div>
								</a></li>

							</c:if>

						</c:forEach>

					</ul>
				</div>
				<div id="nation4">
					<ul class="menu_all" style="display: flex;">
						<c:forEach items="${local}" var="local" varStatus="loop">
							<c:if test="${local.categori == 4}">


								<li class="A"><a class="a"
									href="localDetail?productNo=${local.productNo}"
									style="width: 100%">
										<div class="Menu_AA" style="display: flex;">
											<div class="Main_Img">
												<img src="image/오.png">
											</div>
											<div class="Sub_content" style="width: 100%">
												<div class="Sub_wrapper">
													<p class="Sub_list">${local.title }</p>
													<span class="Sub_list_region">${local.address }</span>
												</div>
												<span class="Sub_list_description">${local.content}</span> <span
													class="Sub_list_infos">후기 ${local.replyCount} ∙ 단골
													${local.revisitCount}</span>
											</div>
										</div>
								</a></li>

							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div id="nation5">
					<ul class="menu_all" style="display: flex;">
						<c:forEach items="${local}" var="local" varStatus="loop">
							<c:if test="${local.categori == 5}">


								<li class="A"><a class="a"
									href="localDetail?productNo=${local.productNo}"
									style="width: 100%">
										<div class="Menu_AA" style="display: flex;">
											<div class="Main_Img">
												<img src="image/오.png">
											</div>
											<div class="Sub_content" style="width: 100%">
												<div class="Sub_wrapper">
													<p class="Sub_list">${local.title }</p>
													<span class="Sub_list_region">${local.address }</span>
												</div>
												<span class="Sub_list_description">${local.content}</span> <span
													class="Sub_list_infos">후기 ${local.replyCount} ∙ 단골
													${local.revisitCount}</span>
											</div>
										</div>
								</a></li>

							</c:if>
						</c:forEach>
					</ul>
				</div>
				<div id="nation6">
					<ul class="menu_all" style="display: flex;">
						<c:forEach items="${local}" var="local" varStatus="loop">
							<c:if test="${local.categori == 6}">


								<li class="A"><a class="a"
									href="localDetail?productNo=${local.productNo}"
									style="width: 100%">
										<div class="Menu_AA" style="display: flex;">
											<div class="Main_Img">
												<img src="image/오.png">
											</div>
											<div class="Sub_content" style="width: 100%">
												<div class="Sub_wrapper">
													<p class="Sub_list">${local.title }</p>
													<span class="Sub_list_region">${local.address }</span>
												</div>
												<span class="Sub_list_description">${local.content}</span> <span
													class="Sub_list_infos">후기 ${local.replyCount} ∙ 단골
													${local.revisitCount}</span>
											</div>
										</div>
								</a></li>

							</c:if>
						</c:forEach>
					</ul>
				</div>
			</section>
			</dv>

			<!--두번째 시작-->
			<div class="Secound">
				<h6>동네 이웃이 남긴 후기를 찾아보세요</h6>
				<div class="big" style="display: flex;">


					<!--미소 후기-->

					<div class="Ba" style="width: 50%; margin: 10px;">
						<a href="#" class="aLink"> <!--플렉스-->
							<div class="B">
								<!--미소 프로필 전체-->
								<div class="BImg">
									<img src="image/프.png" class="B-Img">
								</div>
								<div class="B-2">
									<span class="Nick">미소</span> <span class="btn">단골</span><br>
									<span class="Nick-1">삼산동 인증 8회</span>
								</div>

							</div>

							<div class="Text">
								<p>원장님이 인상도 좋으시고 자세하고 친절하게 설명해 주신 덕분에 편안하게 체험할 수 있었습니다. 당근
									보고 왔다고 하니 2만원정도 하는 디톡스 차 서비스로 주셨습니다^^ 땀을 쭉 빼고 와서 그런지 몸이 개운합니다~
									수술한 무릎과 돌덩이 같은 어깨의 통증 치료에 효과를 볼수 있기를 바랍니다. 오늘 감사 했습니다~~</p>
							</div>
						</a> <a href="#" class="bLink">
							<div class="ReviewBox">
								<div class="BoxImg">
									<img src="image/리뷰1.png" class="BoxImgaa">
								</div>
								<div class="BoxText">
									<span class="BoxT">다이어트뷰티카페 미타임</span><br> <span
										class="Boxt">후기 20 ∙ 단골 96 ∙ 카페</span>
								</div>
							</div>
						</a>

					</div>


					<!--ABC후기-->

					<div class="Ba">
						<a href="#" class="aLink"> <!--플렉스-->
							<div class="B">
								<!--미소 프로필 전체-->
								<div class="BImg">
									<img src="image/프사.png" class="B-Img">
								</div>
								<div class="B-2">
									<span class="Nick">ABC쥬스맛있어</span><br> <span
										class="Nick-1">연동 인증 0회</span>
								</div>
							</div>

							<div class="Text">
								<p>후기먼저 쓰고 세차받기! 대만족 미리 예상 + 세차 후 사진 업로드 완료 첫번째 비교사진 광이
									살아났네요!^^</p></a>
					</div>

					<a href="#" class="bLink">
						<div class="ReviewBox">
							<div class="BoxImg">
								<img src="image/리뷰2.png" class="BoxImgaa">
							</div>
							<div class="BoxText">
								<span class="BoxT">디테일링K</span><br> <span class="Boxt">후기
									14 ∙ 단골 252 ∙ 광택전문</span>
							</div>
						</div>
					</a>
				</div>
			</div>



			<div class="big" style="display: flex;">
				<!--돌이 리뷰-->
				<div class="Ba" style="width: 50%; margin: 10px;">
					<a href="#" class="aLink"> <!--플렉스-->
						<div class="B">
							<!--미소 프로필 전체-->
							<div class="BImg">
								<img src="image/프사.png" class="B-Img">
							</div>
							<div class="B-2">
								<span class="Nick">톨이</span> <span class="btn">단골</span><br>
								<span class="Nick-1">북부동 인증 0회</span>
							</div>
						</div>

						<div class="Text">
							<p>제가 원하는 조건에 맞춰주셔서 너무 감사해요~! 너무 이뻐서 좋아요😆 감사합니다❣️</p></a>
				</div>

				<a href="#" class="bLink">
					<div class="ReviewBox">
						<div class="BoxImg">
							<img src="image/리뷰3.png" class="BoxImgaa">
						</div>
						<div class="BoxText">
							<span class="BoxT">트라이 플라워</span><br> <span class="Boxt">후기
								15 ∙ 단골 148 ∙ 꽃집/꽃배달</span>
						</div>
					</div>
				</a>
			</div>


			<!--제이 리뷰-->
			<div class="Ba">
				<a href="#" class="aLink"> <!--플렉스-->
					<div class="B">
						<!--미소 프로필 전체-->
						<div class="BImg">
							<img src="image/프사.png" class="B-Img">
						</div>
						<div class="B-2">
							<span class="Nick">제이</span> <span class="btn">단골</span><br>
							<span class="Nick-1">물금읍 인증 12회</span>
						</div>
					</div>

					<div class="Text">
						<p>케어도 너무 시원하고깔끔하게 해주시고 감각짱~^^ 담에 또뵐께요. 이따 꼭 식사 맛나게 하세요♡</p></a>
			</div>

			<a href="#" class="bLink">
				<div class="ReviewBox">
					<div class="BoxImg">
						<img src="image/리뷰4.png" class="BoxImgaa">
					</div>
					<div class="BoxText">
						<span class="BoxT">양산 진짜 저렴한 네일~!!!</span><br> <span
							class="Boxt">후기 114 ∙ 단골 811 ∙ 네일샵</span>
					</div>
				</div>
			</a>
		</div>
	</div>




	</div>




	</div>

	<script>
		$(document)
				.ready(
						function() {
							$('#nation2').hide(); // 초깃값 설정
							$('#nation3').hide();
							$('#nation4').hide();
							$('#nation5').hide();
							$('#nation6').hide();

							$("input[name='menu']")
									.change(
											function() {
												//전체 선택시
												if ($(
														"input[name='menu']:checked")
														.val() == '전체') {
													$('#nation2').hide();
													$('#nation3').hide();
													$('#nation4').hide();
													$('#nation5').hide();
													$('#nation6').hide();
													$('#nation1').show();
												}
												//식당 선택시
												else if ($(
														"input[name='menu']:checked")
														.val() == '식당') {
													$('#nation1').hide();
													$('#nation3').hide();
													$('#nation4').hide();
													$('#nation5').hide();
													$('#nation6').hide();
													$('#nation2').show();
												}
												// 카페 선택시
												else if ($(
														"input[name='menu']:checked")
														.val() == '카페') {
													$('#nation1').hide();
													$('#nation2').hide();
													$('#nation4').hide();
													$('#nation5').hide();
													$('#nation6').hide();
													$('#nation3').show();
												}
												//용달 이사 선택시
												else if ($(
														"input[name='menu']:checked")
														.val() == '용달/이사') {
													$('#nation1').hide();
													$('#nation3').hide();
													$('#nation2').hide();
													$('#nation5').hide();
													$('#nation6').hide();
													$('#nation4').show();
												}
												//뷰티/미용 선택시
												else if ($(
														"input[name='menu']:checked")
														.val() == '뷰티/미용') {
													$('#nation1').hide();
													$('#nation3').hide();
													$('#nation4').hide();
													$('#nation2').hide();
													$('#nation6').hide();
													$('#nation5').show();
												}
												//헬스/필라테스/요가
												else if ($(
														"input[name='menu']:checked")
														.val() == '헬스/필라테스/요가') {
													$('#nation1').hide();
													$('#nation2').hide();
													$('#nation3').hide();
													$('#nation4').hide();
													$('#nation5').hide();
													$('#nation6').show();
												}
											});
						});
	</script>
	<!--동네업체 마지막-->
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>