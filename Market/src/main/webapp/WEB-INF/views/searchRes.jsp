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

<link rel="stylesheet" type="text/css" href="/resources/css/header.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="/resources/css/footer.css">
<link rel="stylesheet" type="text/css" href="/resources/css/searchRes.css">

</head>
<body>
<div id="header">
		<jsp:include page="header.jsp"></jsp:include>
	</div>
 <div class="wrapper" style="margin-top: 100px">
          <div class="main_content">
            <div class="main_header_container">
              <div class="maing_header_content">
                <div>
                  <img
                    src="/resources/image/searchBanner.png"
                    style="width: 100%; height: 225px"
                  />
                </div>
              </div>
            </div>
            <div class="content_header">
              <div class="content_div">
                <div class="content_title">
                  <h1>검색결과</h1>
                </div>
              </div>
            </div>
            <div class="driver_list_div">
              <div class="content_div">
                <div class="const_width_div">
                  <div class="content_font">
                    <div
                      class="content_ul_div"
                      style="padding: 10px 10px; width: 100%; height: 100%"
                    >
                      <ul
                        style="
                          list-style: none;
                          margin: 0 auto;
                          width: 100%;
                          height: 100%;
                        "
                      >
                      <c:forEach items="${products }" var="products" varStatus="varstatus">
                      
                        <li>
                          <div>
                            <span style="text-align: center"
                              ><img
                                src="/resources/image/wkaqk.png"
                                style="width: 100%; height: auto"
                                alt=""
                            /></span>
                          </div>
                          <p class="detail_font">${products.title}</p>
                          <div class="content_button_div">
                            <p class="price">${products.price}</p>
                            <p class="pTag">${products.address}</p>
                            <div class="button_div2" style="display: flex">
                              <span>관심</span><span>∙</span> <span>채팅</span>
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
          </div>
  
        </div>
        
</body>
</html>