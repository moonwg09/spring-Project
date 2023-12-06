<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.vam.VO.MemberVO"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<script src="https://kit.fontawesome.com/a91a455094.js"
	crossorigin="anonymous"></script>
<%
// 헤더에서 세션을 가져옴
HttpSession sess = request.getSession();
MemberVO member = (MemberVO) sess.getAttribute("member");
%>
<c:if test="${member == null}">
	<div class="header_container">
		<div class="header_main_div">
			<div class="logo_div">
				<img src="/resources/image/logo.jpg" alt=""
					onclick="window.location.href = '/main'" style="cursor: pointer;" />
			</div>
			<div class="header_content_div">
				<div class="content_div_font">
					<span onclick="window.location.href = '/transation/usedTransation'">중고거래</span>
				</div>
				<div class="content_div_font">
					<span
						onclick="window.location.href ='/localBussiness/localBussinessMain'">동네업체</span>
				</div>
				<div class="content_div_font">
					<span>알바</span>
				</div>
				<div class="content_div_font">
					<span>부동산 직거래</span>
				</div>
				<div class="content_div_font">
					<span onclick="window.location.href = '/notice/list'">이벤트</span>
				</div>
			</div>
			<form id="searchForm">
				<div class="search_div2">
					<div class="header_input_div2">
						<input type="text" id="searchInput" placeholder="물품이나 동네를 검색해보세요" />
					</div>
					<div class="header_button_div2">
						<button type="button" onclick="searchAndRedirect()">검색하기</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</c:if>
<c:if test="${member !=null }">

	<div class="header_container2" style="background-color: white;">
		<div class="header_main_div2">
			<div class="logo_div2">
				<img src="/resources/image/logo.jpg" alt=""
					onclick="window.location.href = '/main'" style="cursor: pointer;" />
			</div>
			<div class="header_content_div2">
				<div class="content_div_font2">
					<span onclick="window.location.href ='/transation/usedTransation'">중고거래</span>
				</div>
				<div class="content_div_font2">
					<span
						onclick="window.location.href ='/localBussiness/localBussinessMain'">동네업체</span>
				</div>
				<div class="content_div_font2">
					<span>알바</span>
				</div>
				<div class="content_div_font2">
					<span>부동산 직거래</span>
				</div>
				<div class="content_div_font2">
					<span onclick="window.location.href = '/notice/list'">이벤트</span>
				</div>
			</div>
			<form>
				<div class="search_div2">
					<div class="header_input_div2">
						<input type="text" placeholder="물품이나 동네를 검색해보세요" />
					</div>
					<div class="header_button_div2">
						<button>검색하기</button>
					</div>
				</div>
			</form>
			<div class="icon_div2">


				<div class="icon_detail_div2">
					<i class="fa-solid fa-user" style=""></i>
					<p style="font-size: 10px; text-align: center">마이페이지</p>
				</div>
			</div>
		</div>
	</div>
</c:if>

<c:if test="${member.adminCk == 1 }">
	<div class="header_container2" style="background-color: white;">
		<div class="header_main_div2">
			<div class="logo_div2">
				<img src="/resources/image/logo.jpg" alt=""
					onclick="window.location.href = '/main'" style="cursor: pointer;" />
			</div>
			<div class="header_content_div2">
				<div class="content_div_font2">
					<span onclick="window.location.href ='/transation/usedTransation'">중고거래</span>
				</div>
				<div class="content_div_font2">
					<span
						onclick="window.location.href ='/localBussiness/localBussinessMain'">동네업체</span>
				</div>
				<div class="content_div_font2">
					<span>알바</span>
				</div>
				<div class="content_div_font2">
					<span onclick="window.location.href = '/notice/list'">이벤트</span>
				</div>
				<div class="content_div_font2">
					<span onclick="window.location.href ='/admin/main'">관리자페이지</span>
				</div>

			</div>
			<form>
				<div class="search_div2">
					<div class="header_input_div2">
						<input type="text" placeholder="물품이나 동네를 검색해보세요" />
					</div>
					<div class="header_button_div2">
						<button>검색하기</button>
					</div>
				</div>
			</form>
			<div class="icon_div2">


				<div class="icon_detail_div2" id="modal_click">
					<img src="/resources/image/defaultprofile.png" alt="" style="width: 40px; height: 40px; border:1px solid rgba(0,0,0,0.3); border-radius: 50%;" />

				</div>
				<div class="header_modal_container" id="header_mypage_container"> 
					<div class="header_modal_div">
						<div class="header_modal_info">
							<span>${member.nickName}</span> <p>${member.email}</p>
						</div>
						<div class="header_mypage_move">
							<i class="fa-solid fa-user" style="margin-right: 5%"></i> <a href="/member/mypage?nickName=${member.nickName}">마이페이지</a>
						</div>
						<div class="header_mypage_logout">
							<i class="fa-solid fa-power-off" style="margin-right: 5%;"></i><a href="/main">로그아웃</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</c:if>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>

<script>
	function searchAndRedirect() {
		// 검색어 가져오기
		var searchKeyword = $('#searchInput').val();

		// 검색어가 비어있지 않은 경우에만 검색 및 이동 수행
		if (searchKeyword.trim() !== '') {
			// 여기에 검색 및 이동하는 코드 작성
			// 예시: window.location.href = '/transation/research?keyword=' + encodeURIComponent(searchKeyword);
			// encodeURIComponent를 사용하여 URL 파라미터 인코딩
		}
	}
</script>
<script>
	document.getElementById("modal_click").addEventListener(
			"click",
			function() {
				var headerMypageContainer = document
						.getElementById("header_mypage_container");

				if (headerMypageContainer.style.display === "none"
						|| headerMypageContainer.style.display === "") {
					headerMypageContainer.style.display = "block";
				} else {
					headerMypageContainer.style.display = "none";
				}
			});
</script>