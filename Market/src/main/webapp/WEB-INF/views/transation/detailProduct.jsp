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
<link rel="stylesheet" href="detail.css" />
</head>
<body>
	<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
	<form action="" method="" style="width: 90%">
		<div class="detail_container">
			<div class="detail_div">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-bs-ride="carousel" style="width: 50%" data-interval="false">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="../resources/image/eximg.webp" class="d-block w-100"
								alt="..." style="width: 500px; height: 587px" />
						</div>
						<div class="carousel-item">
							<img src="../resources/image/transationimg.webp"
								class="d-block w-100" style="width: 500px; height: 587px"
								alt="..." />
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
				<div class="detail_infO_contaitner">
					<div class="detail_info_div">
						<div class="detail_info_categori">
							<span>홈> 패션의류 > 남성의류</span>
						</div>
						<div class="detail_info_title">
							<div class="detail_info_title_font">
								<span><c:out value="${productDetail.title}" /></span>
							</div>
							<div>
								<span style="cursor: pointer"><i
									class="fa-solid fa-arrow-up-from-bracket"></i></span>
							</div>
						</div>
						<div class="detail_info_price">
							<c:set var="formattedPrice" value="${productDetail.price}" />
							<fmt:formatNumber var="formattedPrice" value="${formattedPrice}"
								type="number" pattern="#,##0" />
							<span>${formattedPrice}원</span>
						</div>
						<hr />
						<div class="detail_info_sub">
							<div class="detail_font">
								<span>1시간전</span><span class="font_dot">·</span><span>조회</span><span>
									${productDetail.viewcount}</span> </span><span class="font_dot">·</span><span>관심
									0 </span>
							</div>
						</div>
						<div class="detail_info_profile_div">
							<div class="detail_info_profile_sub_info">
								<div class="detail_info_profile_img">
									<img src="../resources/image/profile.png" alt="" />
								</div>
								<div class="detail_info_profile_info">
									<div class="detail_info_profile_name">${writerProductInfo.mvo.nickName}</div>
									<div class="detail_info_profile_address">${writerProductInfo.mvo.addr2}</div>
								</div>
							</div>
							<div class="detail_info_manner_div">
								<div class="detail_info_detail_div">
									<p>${writerProductInfo.mvo.manner}°C</p>
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: ${writerProductInfo.mvo.manner}%"
											aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
								<div class="manner_div_img">
									<img src="../resources/image/profile.png" alt="" />
								</div>
							</div>
						</div>
						<div class="detail_warn_container">
							<div class="detail_warn_div">
								<span>❗</span><span>거래 전 주의사항 안내</span>
								<p class="font_p1">
									판매자가 별도의 메신저로 결제링크를 보내거나 직거래(직접송금)을 <br />유도하는 경우 사기일 가능성이 높으니
									거래를 자제해 주시고<br />
								</p>
								<p class="font_p2">
									<span>신고</span>해주시기 바랍니다.
								</p>
							</div>
						</div>
						<div id="map" style="width: 100%; height: 200px"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="detail_info_content_container">
			<div class="detail_info_content_div">
				<div class="detail_info_left">
					<div class="detail_info_title">
						<span>판매자정보</span>
					</div>
					<hr />
					<div class="detail_product_info_div">
						<span> 하타케야마 m62 카이타쿠야모델 판매합니다.(글러브 주머니 포함) 20년12월 구매하여
							3년동안 하타케야마 전용 왁스 바르며 잘관리 하였고 웹부분 살짝 까짐 있습니다. 사진 확인 부탁드립니다. 필요하시면
							사용하던 하타케야마 전용 왁스도 같이 보내드립니다. 대구 직거래 택배거래 가능합니다. </span>
					</div>
				</div>
				<div class="detail_info_right">
					<div class="detail_info_title">
						<span>상품정보</span>
					</div>
					<hr style="width: 100%" />
					<div class="detail_info_content_box">
						<div class="detail_info_content_address">
							<div class="address_title">
								<i class="fa-solid fa-location-dot" style="color: #b2b2b2"></i><span
									style="margin-left: 5%">거래지역</span>
							</div>
							<div class="address_info">${productDetail.address}</div>
						</div>
						<div class="detail_info_content_categori">
							<div class="address_title">
								<i class="fa-regular fa-clipboard"
									style="color: #b2b2b2; margin-right: 5%"></i><span>카테고리</span>
							</div>
							<div class="address_info">글러브</div>
						</div>
					</div>
					<div class="product_detail_button_div">
						<div class="product_detail_button">
							<button class="likeButton">관심</button>
							<button class="chatButton">대화하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="detail_info_content_container">
			<div class="detail_info_content_div_comment">
				<div class="detail_info_comment">
					<div class="detail_info_title">
						<span>댓글</span>
						<span class="detail_info_span">후기작성</span>
					</div>
					<hr />
					<div class="detail_comment_profile_div">
						<div class="detail_comment_profile_sub_info">
							<div class="detail_info_profile_img">
								<img src="../resources/image/profile.png" alt="" />
							</div>
							<div class="detail_info_profile_info">
								<div class="detail_info_profile_name">yen</div>
								<div class="detail_info_profile_address">관악구 신림동</div>
							</div>
						</div>
						<p class="comment_Ptag">있었는데 없어졌습니다..!포장 사진이 없어서 매장에서 먹었던 사진 올려요 ^^다 맛있어요. 떡볶이 순대 튀김 포장했는데요.사장님 센스가 최고에요!!분식 정말 좋아하는데 남기지 않았어요^^최고!
    					</p>
					</div>
				</div>
			</div>
		</div>
	</form>
	
	<hr style="width: 100%">
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7829d38593feb9a538108e0c91873472&libraries=services"></script>

	<jsp:include page="../footer.jsp"></jsp:include>
	<script>
		var productAddress = '<c:out value="${productDetail.address}" />';
	</script>
	<script type="text/javascript">
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = {
			//지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level : 3, //지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(productAddress, function(result, status) {
			// 정상적으로 검색이 완료됐으면
			if (status === kakao.maps.services.Status.OK) {
				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

				// 결과값으로 받은 위치를 마커로 표시합니다
				var marker = new kakao.maps.Marker({
					map : map,
					position : coords,
				});

				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				map.setCenter(coords);
			}
		});
	</script>
</body>
</html>