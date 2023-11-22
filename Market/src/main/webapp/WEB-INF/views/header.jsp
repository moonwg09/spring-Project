<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.vam.VO.MemberVO" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
    <script
      src="https://kit.fontawesome.com/a91a455094.js"
      crossorigin="anonymous"
    ></script>
<%
// 헤더에서 세션을 가져옴
HttpSession sess = request.getSession();
MemberVO member = (MemberVO) sess.getAttribute("member");
%>
	<c:if test="${member == null}">
    <div class="header_container">
      <div class="header_main_div">
        <div class="logo_div"><img src="/resources/image/logo.jpg" alt="" onclick="window.location.href = '/main'" style="cursor: pointer;"/></div>
        <div class="header_content_div">
          <div class="content_div_font"><span onclick="window.location.href = '/transation/usedTransation'">중고거래</span></div>
          <div class="content_div_font"><span>동네업체</span></div>
          <div class="content_div_font"><span>알바</span></div>
          <div class="content_div_font"><span>부동산 직거래</span></div>
          <div class="content_div_font"><span>이벤트</span></div>
        </div>
        <div class="search_div">
          <div class="header_input_div">
            <input type="text" placeholder="물품이나 동네를 검색해보세요" />
          </div>
          <div class="header_button_div">
            <button>검색하기</button>
          </div>
        </div>
      </div>
    </div>
    </c:if>
    <c:if test="${member !=null }">
    <div class="header_container2" style="background-color: white;">
      <div class="header_main_div2">
        <div class="logo_div2"><img src="/resources/image/logo.jpg" alt="" onclick="window.location.href = '/main'" style="cursor: pointer;"/></div>
        <div class="header_content_div2">
          <div class="content_div_font2"><span onclick="window.location.href ='/transation/usedTransation'">중고거래</span></div>
          <div class="content_div_font2"><span>동네업체</span></div>
          <div class="content_div_font2"><span>알바</span></div>
          <div class="content_div_font2"><span>부동산 직거래</span></div>
          <div class="content_div_font2"><span>이벤트</span></div>
        </div>
        <div class="search_div2">
          <div class="header_input_div2">
            <input type="text" placeholder="물품이나 동네를 검색해보세요" />
          </div>
          <div class="header_button_div2">
            <button>검색하기</button>
          </div>
        </div>
        <div class="icon_div2">
          <div class="icon_detail_div2">
            <i
              class="fa-solid fa-comments"
              style="color: #f2991c; font-size: 20px"
            ></i>
            <p style="font-size: 10px">채팅</p>
          </div>
          <div class="icon_detail_div2">
            <i
              class="fa-solid fa-pen-to-square"
              style="color: #eea811; font-size: 20px"
            ></i>
            <p style="font-size: 10px; text-align: center">판매</p>
          </div>
          <div class="icon_detail_div2">
            <i class="fa-solid fa-user" style=""></i>
            <p style="font-size: 10px; text-align: center">마이페이지</p>
          </div>
        </div>
      </div>
    </div>
    </c:if>