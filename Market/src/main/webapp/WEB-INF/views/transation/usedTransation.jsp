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
							<a href="/main"> <span>인기매물</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>패션의류</span>
						</div>
						<div class="nav_item_a">
							<a href="/main"> <span>여성의류</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>남성의류</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>패션잡화</span>
						</div>
						<div class="nav_item_a">
							<a href="/main"> <span>여성신발</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>남성신발</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>시계</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>기타잡화</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>노트북/PC</span>
						</div>
						<div class="nav_item_a">
							<a href="/main"> <span>노트북</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>데스크탑/본체</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>모니터</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>키보드/마우스/헤드셋</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>기타</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>가전제품</span>
						</div>
						<div class="nav_item_a">
							<a href="/main"> <span>냉장고</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>TV</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>세탁기/건조기</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>주방가전</span>
							</a>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>기타 가전제품</span>
							</a>
						</div>
						<div class="nav_item_title">
							<i class="fa-regular fa-square-plus" style="margin-right: 2%"></i><span>무료나눔</span>
						</div>
						<div class="nav_item_a">
							<a href=""> <span>무료나눔</span>
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
			<div class="driver_list_div">
				<div class="content_div">
					<div class="const_width_div">
						<div class="content_font">
							<div class="content_ul_div"
								style="padding: 10px 10px; width: 100%; height: 100%">
								<ul
									style="list-style: none; margin: 0 auto; width: 100%; height: 100%;">
									<c:forEach items="${product}" var="product">
										<li>

											<div>
												<span style="text-align: center"><img
													src="../resources/image/eximg.webp"
													style="width: 100%; height: auto" alt="" /></span>
											</div>
											<p class="detail_font">${product.title}</p>
											<div class="content_button_div">
												<c:set var="formattedPrice" value="${product.price}" />
												<fmt:formatNumber var="formattedPrice"
													value="${formattedPrice}" type="number" pattern="#,##0" />
												<p class="price">${formattedPrice}원</p>
												<p class="pTag">${product.address}</p>
												<div class="button_div2" style="display: flex">
													<span>관심</span><span>0</span><span>∙</span> <span>채팅</span><span>${product.chatCount}</span>
												</div>
											</div>

										</li>
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
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>