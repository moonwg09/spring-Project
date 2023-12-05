
<%@page import="com.vam.VO.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link rel="stylesheet" href="../resources/css/notice/list.css" />
</head>
<div class="event_form">
      <div class="event_main_form">
        <div class="event_main_title_form">
          <div class="event_main_title">이벤트</div>
          <div>
            <hr />
          </div>
          <div class="nation_A">
            <input
              class="nation_btn"
              type="radio"
              id="menu_all"
              name="menu"
              value="전체"
              checked
            />
            <label class="nation_text" for="menu_all">진행중</label>

            <input
              class="nation_btn"
              type="radio"
              id="menu_restaurant"
              name="menu"
              value="식당"
            />
            <label class="nation_text" for="menu_restaurant">종료</label>
          </div>
        </div>
        <div id="nation1">
          <div class="event_main_set">
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/11/16/1700124521618.png"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-17 ~ 2023-11-31</div>
                <div class="event_main_count">D-37</div>
              </div>
            </div>
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/11/21/1700559394592.jpg"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-21 ~ 2023-11-27</div>
                <div class="event_main_count">D-3</div>
              </div>
            </div>
          </div>

          <div class="event_main_set">
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/11/21/1700559125799.jpg"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-21 ~ 2023-11-27</div>
                <div class="event_main_count">D-3</div>
              </div>
            </div>
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/11/21/1700549494182.png"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-23 ~ 2023-11-30</div>
                <div class="event_main_count">D-6</div>
              </div>
            </div>
          </div>

          <div class="event_main_set">
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/11/13/1699866394928.png"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-13 ~ 2023-01-14</div>
                <div class="event_main_count">D-51</div>
              </div>
            </div>
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/10/26/1698315529276.png"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-01 ~ 2023-11-30</div>
                <div class="event_main_count">D-6</div>
              </div>
            </div>
          </div>
        </div>

        <div id="nation2">
          <div class="event_main_set">
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/11/23/1700728684846.png"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-23 ~ 2023-11-24</div>
                <div class="event_main_count">종료</div>
              </div>
            </div>
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/11/15/1700032490725.jpg"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-16 ~ 2023-11-22</div>
                <div class="event_main_count">종료</div>
              </div>
            </div>
          </div>

          <div class="event_main_set">
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/10/31/1698730799647.jpg"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-01 ~ 2023-11-14</div>
                <div class="event_main_count">종료</div>
              </div>
            </div>
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/10/17/1697542806461.png"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-17 ~ 2023-11-24</div>
                <div class="event_main_count">종료</div>
              </div>
            </div>
          </div>

          <div class="event_main_set">
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/08/23/1692777905966.png"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-13 ~ 2023-11-23</div>
                <div class="event_main_count">종료</div>
              </div>
            </div>
            <div class="event_main_box">
              <img
                class="event_img"
                src="https://img2.joongna.com/media/original/2023/03/03/1677813266871.png"
                width="500px"
                height="200px"
                alt=""
              />
              <div class="event_main_daybox">
                <div class="event_main_day">2023-11-15 ~ 2023-11-22</div>
                <div class="event_main_count">종료</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
                    <!-- shop-pagination start -->
                
	                <ul class="shop-pagination box-shadow text-center ptblr-10-30">
	                	<c:if test = "${pageMaker.prev}">
	                		<li class="paginate_button"><a href="list?page=${pageMaker.startPage - 1}">
	                		<i class="zmdi zmdi-chevron-left"></i>
	                		</a></li>
	                	</c:if>
	                    
	                    <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	                    	<c:if test="${num eq pageMaker.cri.pageNum}">
	                    		<li class="paginate_button active"><a href="list?page=${num}">${num}</a></li>
	                    	</c:if>
	                    	<c:if test="${num ne pageMaker.cri.pageNum}">
	                    		<li class="paginate_button"><a href="list?page=${num}">${num}</a></li>
	                    	</c:if>
	                    </c:forEach>
	                    
	                    <c:if test = "${pageMaker.next}">
	                    	<li class="paginate_button active">
	                    	<a href="list?page=${pageMaker.endPage + 1}">
	                    	<i class="zmdi zmdi-chevron-right">
	                    	</i></a></li>
	                	</c:if>
	                </ul>
	                <!-- shop-pagination end -->
                </div>
                
            </div>
            <!-- BLOG SECTION END -->             

        </div>
        <!-- End page content -->

<!-- modal -->
<div class="modal fade" id ="myModal" tabindex="-1" role ="dialog"
aria-lablelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type = "button" class = "close" data-dimiss="modal"
				aria-hidden="true">&times;</button>
				<h4 class= "modal-title" id ="myModalLabel">Modal Title</h4>
			</div>
			<div class="modal-body">처리가 완료되었습니다.</div>
			<div class = "modal-footer">
				<button type ="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<!-- btn btn-primary는 파란색으로 구성된 버튼을 말한다.btn-success,warning등이 있다. -->
			</div>
		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/layout/foot.jsp" %>


<script type="text/javascript">
$(document).ready(function(){
	var result = '<c:out value="${result}"/>';

	checkModal(result);
	
	history.replaceState({},null,null);
	
	function checkModal(reusult){
		//모달창은 한번만 보여주도록 history를 사용한다.
		if(result ==='' || history.state){
			return;
		}
		
		if(parseInt(result)>0){
			$(".modal-body").html("공지"+parseInt(result)+" 번이 등록되었습니다.");
		}
		
		if(result == "success"){
			$(".modal-body").html("삭제되었습니다.");
		}
		
		$("#myModal").modal("show");
	}
});
	
</script>