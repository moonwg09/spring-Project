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
			<div class="main_sidebar">
				<div class="brand_link">
					<span class="brand_text">카테고리</span>
				</div>
				<div class="sidebar">
					<div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>BEST</span>
						</div>
						<div class="nav_item_a">
							<a class="category" href='1'> <span>인기매물</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>패션의류</span>
						</div>
						<div class="nav_item_a">
							<a class="category" href='2'> <span>여성의류</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='3'> <span>남성의류</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>패션잡화</span>
						</div>
						<div class="nav_item_a">
							<a class="category" href='4'> <span>여성신발</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='5'> <span>남성신발</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='6'> <span>시계</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='7'> <span>기타잡화</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>노트북/PC</span>
						</div>
						<div class="nav_item_a">
							<a class="category" href='8'> <span>노트북</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='9'> <span>데스크탑/본체</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='10'> <span>모니터</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='11'> <span>키보드/마우스/헤드셋</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='12'> <span>기타</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>가전제품</span>
						</div>
						<div class="nav_item_a">
							<a class="category" href='13'> <span>냉장고</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='14'> <span>TV</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='15'> <span>세탁기/건조기</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='16'> <span>주방가전</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a class="category" href='17'> <span>기타 가전제품</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>무료나눔</span>
						</div>
						<div class="nav_item_a">
							<a class="category" href='18'> <span>무료나눔</span>
							</a>
						</div>
					</div>
				</div>
			</div>
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
						<img src="${productImage.image_uploadPath }"
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
													<span style="text-align: center"><img
														id="main-img${varstatus.index}"
														style="width: 100%; height: auto" alt="" /></span>
												</div> <script>
													var imageUploadPath = '<c:out value="${product.product_imageList[0].image_uploadPath}" />';
													var imageUuid = '<c:out value="${product.product_imageList[0].image_uuid}" />';
													var imageName = '<c:out value="${product.product_imageList[0].image_name}" />';
													var imageNameEncoded = encodeURIComponent(imageUploadPath
															+ '/'
															+ imageUuid
															+ '_' + imageName);
													var realSrc = '../display?fileName='
															+ imageNameEncoded;

													document
															.getElementById('main-img${varstatus.index}').src = realSrc;
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

</body>
</html>