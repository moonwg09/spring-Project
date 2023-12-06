<%@page import="com.vam.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<%
// 헤더에서 세션을 가져옴
HttpSession sess = request.getSession();
MemberVO member = (MemberVO) sess.getAttribute("member");
%>
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="../resources/css/member/mypage.css" />
</head>
<body>
	<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
	<div class="mypage_main_container">
		<div class="mypage_main_div">
			<div class="mypage_mainInfo_left">
				<div class="mypage_mainInfo_left_div">
					<div class="mypage_profile_img">
						<img src="../resources/image/defaultprofile.png" alt="" style="width: 70px; height: 70px" />
					</div>
					<div class="mypage_profile_main_info">
						<div class="mypage_profile_span">
							<span>${member.nickName}</span>
						</div>
						<div class="mypage_profile_span fs13">
							<span>${member.email}</span>
						</div>
						<div class="mypage_profile_span fs13">
							<span>${member.addr2}</span>
						</div>
						<div class="mypage_profile_a">
							<a href="">프로필수정</a>
						</div>
					</div>
				</div>
			</div>
			<div class="mypage_mainInfo_right">
				<div class="mypage_profile_manner_div">
					<div class="mypage_profile_manner">
						<span class="mypage_profile_manner_span">매너온도</span><span
							class="mypage_profile_manner_span">${member.manner} °C</span>
					</div>
					<div class="progress_bar_div">
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: ${member.manner}%" aria-valuenow="25"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
					<div class="mypage_profile_sub_info">
						<div class="mypage_chatCount_div">
							<div>
								<span>채팅</span>
							</div>
							<div>
								<span>${mypageChatCount}</span>
							</div>
						</div>
						<div class="mypage_chatCount_div">
							<div>
								<span>작성한 상품</span>
							</div>
							<div>
								<span>${myWriteCount}</span>
							</div>
						</div>
						<div class="mypage_chatCount_div">
							<div>
								<span>후기</span>
							</div>
							<div>
								<span>${mypageReplyCount }</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="myapge_write_product">
			<div class="myapge_write_product_container">
				<span>판매내역</span>
				<c:forEach items="${mypageList}" var="member">
					<c:forEach items="${member.pvo}" var="product">
						<div class="myapge_write_product_div">
							<div class="myapge_write_product_img">
								<!-- 이미지 출력 코드 (product.img 등 사용) -->
								<img src="image/logo.jpg" alt=""
									style="width: 100px; height: 100px" />
							</div>
							<div class="myapge_write_product_title">
								<a href="/transation/detailProduct?productNo=${product.productNo}" style="text-decoration: none; color:black;">${product.title}</a>
								<p>${member.nickName}</p>
								<c:set var="formattedPrice" value="${product.price}" />
								<fmt:formatNumber var="formattedPrice" value="${formattedPrice}"
									type="number" pattern="#,##0" />
								<p>${formattedPrice}원</p>

							</div>
						</div>
					</c:forEach>
				</c:forEach>
			</div>
		</div>
		<div class="myapge_write_product">
			<div class="myapge_write_product_container">
				<span>관심상품</span>
				<c:forEach items="${likeProductLists}" var="likeProductLists">
					<c:forEach items="${likeProductLists.pvo}" var="likeProductLists">
						<div class="myapge_write_product_div">
							<div class="myapge_write_product_img">
								<img src="image/logo.jpg" alt=""
									style="width: 100px; height: 100px" />
							</div>
							<div class="myapge_write_product_title">
								<a href="/transation/detailProduct?productNo=${likeProductLists.productNo}">${likeProductLists.title }</a>
								<p>용호</p>
								<c:set var="formattedPrice" value="${likeProductLists.price}" />
								<fmt:formatNumber var="formattedPrice" value="${formattedPrice}"
									type="number" pattern="#,##0" />
								<p>${formattedPrice}원</p>
							</div>
						</div>
					</c:forEach>
				</c:forEach>
			
			</div>
		</div>
		<div style="display: flex; justify-content: center;">
			<jsp:include page="../footer.jsp"></jsp:include>

		</div>
	</div>
</body>
</html>