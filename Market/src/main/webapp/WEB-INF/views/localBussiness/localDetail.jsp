<%@page import="com.vam.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
HttpSession sessi = request.getSession();
MemberVO member = (MemberVO) sessi.getAttribute("member");
%>

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
<link rel="stylesheet"
	href="../resources/css/localBussiness/localDetail.css" />
<body>
	<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
	<div class="localDetail_container">
		<div class="localDetail_div">
			<div id="carouselExampleIndicators" class="carousel slide"
				data-bs-ride="carousel" style="width: 100%">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="image/logo.jpg" class="d-block w-100" alt="..."
							style="height: 587px" />
					</div>
					<div class="carousel-item">
						<img src="image/풋.png" class="d-block w-100" style="height: 587px"
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
			<div class="localDetail_info_contaitner">
				<div class="localDetail_info_div">
					<div class="localDetail_info_profile_div">
						<div class="localDetail_info_profile_sub_info">
							<div class="localDetail_info_profile_img">
								<img src="image/풋.png" alt="" style="width: 40px; height: 40px" />
							</div>
							<div class="detail_info_profile_info">
								<div class="detail_info_profile_name">${localDetail.writer}</div>
								<div class="detail_info_profile_address">
									<span>${localDetail.address}</span><span>단골</span><span>${localDetail.revisitCount}</span>
								</div>
							</div>
						</div>

						<div class="localDetail_info_revisit_div">
							<div class="detail_info_detail_div">
								<a href="/localBussiness/revisit?productNo=${localDetail.productNo }">단골맺기</a>
							</div>
						</div>
					</div>
					<div class="localDetail_main_info_container">
						<div class="localDetail_main_info_div">
							<p class="localDetail_main_info_p">정보</p>
							<p class="localDetail_main_info_p fw500">${localDetail.content}</p>
							<div class="localDetail_address_div">
								<i class="fa-solid fa-location-dot" style="font-size: 18px"></i>
								<div class="localDetail_address">
									<span class="localDetail_main_info_p fw500">
										${localDetail.address} </span>
								</div>
							</div>
						</div>
					</div>
					<div id="map" style="width: 100%; height: 200px"></div>
					<div class="localDetail_price_div">
						<p class="localDetail_main_info_p">가격</p>
						<div class="localDetail_price_menu">
							<div>
								<span>오뎅</span>
							</div>
							<div class="localDetail_price_span_div">
								<span class="localDetail_price_span"></span> <span>2500원</span>
							</div>
						</div>
						<div class="localDetail_price_menu">
							<div>
								<span>마약김밥 </span>
							</div>
							<div class="localDetail_price_span_div">
								<span class="localDetail_price_span"></span> <span>2500원</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<form action="" method="" style="width: 100%">
				<div class="detail_info_content_container">
					<div class="detail_info_content_div_comment" style="width:100%">
						<div class="detail_info_comment">
							<div class="detail_info_title">
								<span>댓글</span> <span class="detail_info_span" id="modal-open">댓글작성</span>
							</div>
							<hr />
							<c:forEach items="${commentList}" var="chatItem">

								<div class="detail_comment_profile_div">
									<div class="detail_comment_profile_sub_info">
										<div class="detail_info_profile_img">
											<img src="../resources/image/profile.png" alt="" />
										</div>
										<div class="detail_info_profile_info">
											<div class="detail_info_profile_name">${chatItem.mvo.nickName}</div>
											<div class="detail_info_profile_address">${chatItem.mvo.addr2}</div>
										</div>
										<c:if test="${member.nickName eq chatItem.mvo.nickName}">



											<div style="width: 100%; height: 100%; text-align: end;"
												class="detailProduct_deleteBtn">

												<a
													href="/transation/delete?chatNo=${chatItem.chatNo}&productNo=${chatItem.pvo.productNo}"><i
													class="fa-solid fa-trash-can"
													style="color: black; cursor: pointer;"></i></a>
											</div>


										</c:if>
									</div>
									<p class="comment_Ptag">${chatItem.content}</p>

								</div>
							</c:forEach>
							<c:if test="${empty commentList}">
								<p
									style="padding: 0px 20px; text-align: center; height: 300px; display: flex; width: 100%; align-items: center; justify-content: center;">등록된
									댓글이 없습니다.</p>
							</c:if>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<c:if test="${member ==null }">
		<div class="container">
			<div class="popup-wrap" id="popup">
				<div class="modal_div">
					<div class="circle-icon">
						<i class="fa-solid fa-exclamation"></i>
					</div>
					<p class="modal_title">로그인후 이용 가능합니다.</p>
					<p class="modal_title smft">로그인 하시겠습니까?</p>
					<div class="modal_button_div">
						<div class="modal_button yes">
							<span>예</span>
						</div>
						<div class="modal_button no" id="close">
							<span>아니요</span>
						</div>
					</div>
				</div>
			</div>
		</div>

	</c:if>
	<c:if test="${member != null}">
		<form id="frmm" action="/transation/chat" method="post">
			<input type="hidden" value="${productDetail.productNo}"
				class="product_comment_content" name="productNo"> <input
				type="hidden" value="${member.memberNo}" name="memberNo">
			<div class="container">
				<div class="popup-wrap" id="popup">
					<div class="modal_div_login">
						<p class="modal_title_login">댓글작성</p>

						<hr style="width: 100%; margin: 0 auto; margin-bottom: 3%" />
						<div class="modal_button_div">
							<div class="modal_button_login">
								<input type="text" class="comment_textarea" id="" name="content"></input>
							</div>
						</div>
						<div class="modal_button_div">
							<div class="modal_button_div_login">
								<input class="modal_button_comment" type="submit" value="예"></input>
							</div>
							<div class="modal_button_div_login">
								<span class="modal_button_comment" id="close">아니요</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</c:if>

	<div style="display: flex; justify-content: center;">
		<jsp:include page="../footer.jsp"></jsp:include>

	</div>
	</div>
	</form>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7829d38593feb9a538108e0c91873472&libraries=services"></script>
	<script>
		var productAddress = '<c:out value="${localDetail.address}" />';
	</script>
	<script type="text/javascript">
		$(function() {

			$('#modal-open').click(function() {
				$('#popup').css('display', 'flex').hide().fadeIn();
				document.body.style.overflow = 'hidden';
			});
			$('#close').click(function() {
				modalClose();
			});
			function modalClose() {
				$('#popup').fadeOut();
				document.body.style.overflow = 'auto';
			}
		});
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = {
			//지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level : 3, //지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
		var geocoder = new kakao.maps.services.Geocoder();

		map.setDraggable(false);
		map.setZoomable(false);

		function setZoomable(zoomable) {
			// 마우스 휠로 지도 확대,축소 가능여부를 설정합니다
			map.setZoomable(zoomable);
		}
		function setDraggable(draggable) {
			// 마우스 드래그로 지도 이동 가능여부를 설정합니다
			map.setDraggable(draggable);
		}
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
		var marker = new kakao.maps.Marker({
			zIndex : 0
		});
		marker.getZIndex(); // 4
		var comentCheck = false;
	</script>
</body>
</html>