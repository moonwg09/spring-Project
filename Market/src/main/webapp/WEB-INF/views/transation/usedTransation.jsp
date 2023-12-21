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
	href="../resources/css/transation/usedTransation.css">
</head>
<body>
	<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
	<div class="wrapper">
		<div class="main_content">
			<div class="main_header_container">
				<div class="maing_header_content">
					<div class="header_button_div">
						<div class="button_div">
							<h1>
								믿을만한 <br />이웃 간 중고거래
							</h1>
							<p style="margin-top: 1%">동네 주민들과 가깝고 따뜻한 거래를 지금 경험해보세요.</p>
						</div>
					</div>
					<div>
						<img src="../resources/image/transationimg.webp"
							style="width: 100%; height: 225px" />
					</div>
				</div>
			</div>

			<div class="content_header">
				<div class="content_div">
					<div class="content_title">
						<h1>중고거래 인기매물</h1>
					</div>
					<div class="content_categori">
						<span>BEST</span> <span> ➡️ </span> <span>인기매물</span>
					</div>
				</div>
			</div>
			<div id="menu">
				<span id="toggleMenu"><i class="fa-solid fa-bars"></i>&nbsp;&nbsp;카테고리</span><br />
				<ul class="active">
					<li>패션의류
						<ul>
							<li><a class="category" href="1">교복/체육복/단복</a></li>
							<li><a  class="category"href="2">티셔츠</a></li>
							<li><a  class="category"href="3">니트/스웨터/가디건</a></li>
							<li><a  class="category"href="4">원피스/정장</a></li>
							<li><a  class="category"href="5">스커트/치마</a></li>
							<li><a  class="category"href="6">바지/팬츠/청바지</a></li>
							<li><a  class="category"href="7">트레이닝복</a></li>
							<li><a  class="category"href="8">자켓/코트</a></li>
							<li><a  class="category"href="9">패딩/야상/점퍼</a></li>
						</ul></li>
					<li>패션잡화
						<ul>
							<li><a class="category"  href="10">운동화</a></li>
							<li><a class="category"  href="11">여성신발</a></li>
							<li><a class="category"  href="12">남성신발</a></li>
							<li><a class="category"  href="13">가방/핸드백</a></li>
							<li><a class="category"  href="14">지갑/벨트</a></li>
							<li><a class="category"  href="15">시계</a></li>
							<li><a class="category"  href="16">선글라스/안경</a></li>
							<li><a class="category"  href="17">모자</a></li>
							<li><a class="category"  href="18">기타</a></li>
						</ul></li>
					<li>뷰티
						<ul>
							<li><a class="category"  href="19">스킨케어</a></li>
							<li><a class="category"  href="20">메이크업</a></li>
							<li><a class="category"  href="21">팩/클렌징/필링</a></li>
							<li><a class="category"  href="22">헤어/바디</a></li>
							<li><a class="category"  href="23">향수</a></li>
							<li><a class="category"  href="24">네일케어</a></li>
							<li><a class="category"  href="25">남성 화장품</a></li>
							<li><a  class="category" href="26">가발/기타용품</a></li>
						</ul></li>
					<li>출산/육아용품
						<ul>
							<li><a class="category"  href="27">유아동의류</a></li>
							<li><a class="category"  href="28">유아동잡화</a></li>
							<li><a class="category"  href="29">유아동가구</a></li>
							<li><a class="category"  href="30">유아동교구/완구</a></li>
							<li><a class="category"  href="31">기타 유아동용품</a></li>
							<li><a class="category"  href="32">코너마켓</a></li>
						</ul></li>
					<li>리빙/생활
						<ul>
							<li><a class="category"  href="33">주방용품</a></li>
							<li><a class="category"  href="34">식품</a></li>
							<li><a class="category"  href="35">욕실용품</a></li>
							<li><a class="category"  href="36">청소/세탁용품</a></li>
							<li><a class="category"  href="37">생활잡화</a></li>
							<li><a class="category"  href="38">기타잡화</a></li>
							<li><a class="category"  href="39">차량용품</a></li>
						</ul></li>
					<li>전자기기
						<ul>
							<li><a class="category"  href="40">모바일/태블릿</a></li>
							<li><a class="category"  href="41">가전제품</a></li>
							<li><a class="category"  href="42">노트북/PC</a></li>
							<li><a class="category"  href="43">카메라/캠코더</a></li>
						</ul></li>
					<li>가전제품
						<ul>
							<li><a class="category"  href="44">냉장고</a></li>
							<li><a class="category"  href="45">TV</a></li>
							<li><a class="category"  href="46">세탁기/건조기</a></li>
							<li><a class="category"  href="47">주방가전</a></li>
							<li><a class="category"  href="48">스마트홈</a></li>
							<li><a class="category"  href="49">영상가전</a></li>
							<li><a class="category"  href="50">음향가전</a></li>
							<li><a class="category"  href="51">생활가전</a></li>
						</ul></li>
					<li>게임
						<ul>
							<li><a class="category"  href="52">PC 게임</a></li>
							<li><a class="category"  href="53">플레이스테이션</a></li>
							<li><a class="category"  href="54">PSP</a></li>
							<li><a class="category"  href="55">닌텐도</a></li>
							<li><a class="category"  href="56">Wii</a></li>
							<li><a class="category"  href="57">XBox</a></li>
							<li><a class="category"  href="58">게임타이틀</a></li>
							<li><a class="category"  href="59">기타 게임</a></li>
						</ul></li>
					<li>반려동물/취미
						<ul>
							<li><a class="category"  href="60">반려동물</a></li>
							<li><a class="category"  href="61">키덜트</a></li>
							<li><a class="category"  href="62">핸드메이드/DIY</a></li>
							<li><a class="category"  href="63">악기</a></li>
							<li><a class="category"  href="64">예술작품.공동품/수집</a></li>
							<li><a class="category"  href="65">미술재료/미술도구</a></li>
						</ul></li>
					<li>티켓/쿠폰
						<ul>
							<li><a class="category"  href="66">티켓</a></li>
							<li><a class="category"  href="67">상품권/쿠폰</a></li>
							<li><a class="category"  href="68">여행숙박/이용권</a></li>
							<li><a class="category"  href="69">기타티켓/쿠폰/이용권</a></li>
						</ul></li>
					<li>스포츠
						<ul>
							<li><a class="category"  href="70">골프</a></li>
							<li><a class="category"  href="71">자전거</a></li>
							<li><a class="category"  href="72">축구</a></li>
							<li><a class="category"  href="73">야구</a></li>
							<li><a class="category"  href="74">농구</a></li>
							<li><a class="category"  href="75">라켓/스포츠</a></li>
							<li><a class="category"  href="76">수상스포츠</a></li>
							<li><a class="category"  href="77">겨울스포츠</a></li>
							<li><a class="category"  href="78">기타</a></li>
						</ul></li>
					<li><a href="79" class="category">무료나눔</a></li>
				</ul>
			</div>
			<div class="driver_list_div">
				<div class="content_div">
					<div class="const_width_div">
						<div class="content_font">
							<div class="content_ul_div"
								style="padding: 10px 10px; width: 100%; height: 100%">
								<ul
									style="list-style: none; margin: 0 auto; width: 100%; height: 100%;">
									<c:forEach items="${product}" var="product"
										varStatus="varstatus">
										<li><a class="move"
											href="detailProduct?productNo=${product.productNo}"
											style="text-decoration: none; color: black">
												<div>
													<span style="text-align: center"><img class="Img_a"
														id="main-img${varstatus.index}" src=""
														style="width: 100%; height: 130px" alt="" /></span>
												</div> <script>
													console.log("${product}");
													console.log("sa");
													var imageName = encodeURIComponent('${product.product_imageList[0].image_uploadPath}'
															+ '/'
															+ '${product.product_imageList[0].image_uuid}'
															+ '_'
															+ '${product.product_imageList[0].image_name}');
													var realSrc = '/display?fileName='
															+ imageName;
													document
															.getElementById("main-img${varstatus.index}").src = realSrc;
												</script>
												<p class="detail_font">${product.title}</p>
												<div class="content_button_div">
													<c:set var="formattedPrice" value="${product.price}" />
													<fmt:formatNumber var="formattedPrice"
														value="${formattedPrice}" type="number" pattern="#,##0" />
													<p class="price">${formattedPrice}원</p>
													<p class="pTag">${product.address}</p>
													<div class="button_div2" style="display: flex">
														<span>관심</span><span>0</span><span>∙</span> <span>채팅</span><span>${product.chatcount}</span>
														<span>∙</span> <span>조회수</span><span>${product.viewcount}</span>
													</div>
												</div>
										</a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="driver_list_container">
				<div class="button_container">
					<div class="button_div">
						<button class="page_button">이전 페이지</button>
						<span> {currentPage} / {totalPages} </span>
						<button>다음 페이지</button>
					</div>
				</div>
			</div>
			<div style="display: flex; justify-content: center;">
				<jsp:include page="../footer.jsp"></jsp:include>

			</div>
			<form id="moveForm" method="get"></form>
		</div>


	</div>

	<script type="text/javascript">
		let moveForm = $('#moveForm')

		$(".category")
				.on(
						"click",
						function(e) {
							e.preventDefault();
							moveForm
									.append("<input type='hidden' name='categori' value='"
											+ $(this).attr("href") + "'>");
							moveForm.attr("action", "usedTransation");
							moveForm.submit();
						});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var toggleMenu = document.getElementById("toggleMenu");
			var menuList = document.querySelector("#menu ul");

			toggleMenu.addEventListener("click", function() {
				menuList.classList.toggle("active");
				toggleMenu.classList.toggle("clicked");

				if (!toggleMenu.classList.contains("clicked")) {
					toggleMenu.style.backgroundColor = "#dee2e686";
					toggleMenu.style.color = "#fff";
				} else {
					toggleMenu.style.backgroundColor = "white";
					toggleMenu.style.color = "black";
				}
			});

			toggleMenu.addEventListener("mouseover", function() {
				if (!toggleMenu.classList.contains("clicked")) {
					toggleMenu.style.backgroundColor = "white";
					toggleMenu.style.color = "black";
				}
			});

			toggleMenu.addEventListener("mouseout", function() {
				if (!toggleMenu.classList.contains("clicked")) {
					toggleMenu.style.backgroundColor = "#dee2e686";
					toggleMenu.style.color = "#fff";
				}
			});

			toggleMenu.click();
		});
	</script>
</body>
</html>