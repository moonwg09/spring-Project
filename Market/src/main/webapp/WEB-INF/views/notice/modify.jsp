<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Subash || Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/icon/favicon.png">

    <!-- All CSS Files -->
    <link rel="stylesheet" type="text/css" href="../resources/css/header.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/footer.css">
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <!-- Nivo-slider css -->
    <link rel="stylesheet" href="/resources/lib/css/nivo-slider.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="/resources/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="/resources/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="/resources/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="/resources/css/responsive.css">
    <!-- Template color css -->
    <link href="/resources/css/color/color-core.css" data-style="styles" rel="stylesheet">
    <!-- User style -->
    <link rel="stylesheet" href="/resources/css/custom.css">
    

    <!-- Modernizr JS -->
    <script src="/resources/js/vendor/modernizr-2.8.3.min.js"></script>
    <!-- jquery latest version -->
    <script src="/resources/js/vendor/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css"
	href="../resources/css/header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet"
	href="../resources/css/transation/detailProduct.css">

<link rel="stylesheet" href="detail.css" />

 <!-- summerNote -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
</head>

	
<body>
		
   

        

        <!-- END MOBILE MENU AREA -->
        
        <!-- BREADCRUMBS SETCTION START -->
        <div class="breadcrumbs-section plr-200 mb-80 section">
            <div class="breadcrumbs overlay-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumbs-inner">
                                <h1 class="breadcrumbs-title">modify Form</h1>
                                <ul class="breadcrumb-list">
                                    <li><a href="/notice/list">List</a></li>
                                    <li>modify Form</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- BREADCRUMBS SETCTION END -->   

        <!-- Start page content -->
        <section id="page-content" class="page-wrapper section">

            <!-- MESSAGE BOX SECTION START -->
            <div class="message-box-section mb-80">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="message-box box-shadow white-bg">
						        <form action="/notice/modify" method="post" enctype="multipart/form-data">
						             <div class="row">
                                        <div class="col-lg-12">
                                            <h4 class="blog-section-title border-left mb-30">공지 등록</h4>
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="text" name="notice_title" value="<c:out value='${notice.notice_title }'/>">
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="text" id="notice_writer" name="notice_writer" value="<c:out value='${notice.notice_writer }'/>">
                                        </div>
                                        <div class="col-lg-6">
											<p class="color-title f-left">메인 사진</p>
											<div id="image-button">
												
												<c:if test="${notice.notice_image ne null }">
													<li>${notice.notice_image.image_name }<button type="button" id = "delete-image"> x </button></li>
												</c:if>
												<c:if test="${notice.notice_image eq null }">
													<input type="file" id='notice_image' name='noticeImage' accept = "image/jpg, image/jpeg, image/png, image/gif">
												</c:if>
											</div>
										</div>
                                        <div class="col-lg-12">
                                            <textarea class="mb-20" name="notice_information" placeholder="요약" ><c:out value='${notice.notice_information }'/></textarea>
                                        </div>
                                        
                                        <div class="col-lg-12">
                                            <textarea class="mb-20" id="summernote" name="notice_description"></textarea>
                                        </div>
                                        
                                        <input type="hidden" name="notice_id" value="${notice.notice_id }">
                                        <div class="col-lg-12">
                                        	<button class="submit-btn-1 mt-30 btn-hover-1" type="submit">수정</button>
                                        	<button class="submit-btn-1 mt-30 btn-hover-1" type="reset" style="background-color : #575757;">초기화</button>
                                        	<button class="submit-btn-1 mt-30 btn-hover-1" type="button" onClick="location.href='/notice/list'" style="background-color : #4FC1F0;">목록</button>
                                        </div>
						  			</div>
								</form>
								<p class="form-messege"></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- MESSAGE BOX SECTION END -->               
        </section>
        <!-- End page content -->

    
        <!-- START FOOTER AREA -->
        <footer id="footer" class="footer-area section">
            <div class="footer-top">
                <div class="container-fluid">
                    <div class="plr-185">
                        <div class="footer-top-inner gray-bg">
                            <div class="row">
                                <div class="col-lg-4 col-md-5 col-sm-4">
                                    <div class="single-footer footer-about">
                                        <div class="footer-logo">
                                            <img src="/resources/img/logo/logo.png" alt="">
                                        </div>
                                        <div class="footer-brief">
                                            <p>본 프로젝트는 Spring Framework을 이용한 쇼핑몰 웹 프로젝트입니다.</p>
                                            <p>Java8, Spring Framework 5.0, MyBatis, MySQL, Spring Security, bootstrap4, JQuery 3.0, 카카오와 구글 API를 사용하였으며 REST방식을 일부 적용하였습니다.</p>
                                        </div>
                                        <ul class="footer-social">
                                            <li>
                                                <a class="facebook" href="https://github.com/mangdo/shoppingMallProject" title="github"><i class="zmdi zmdi-github"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 hidden-md hidden-sm">
                                    <div class="single-footer">
                                        <h4 class="footer-title border-left">Menu</h4>
                                        <ul class="footer-menu">
                                            <li>
                                                <a href="/product/list"><i class="zmdi zmdi-circle"></i><span>Products</span></a>
                                            </li>
                                            <li>
                                                <a href="/notice/list"><i class="zmdi zmdi-circle"></i><span>Notice</span></a>
                                            </li>
                                            <li>
                                                <a href="/about"><i class="zmdi zmdi-circle"></i><span>About Us</span></a>
                                            </li>
                                            <li>
                                                <a href="/contact"><i class="zmdi zmdi-circle"></i><span>Contact</span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-3 col-sm-4">
                                    <div class="single-footer">
                                        <h4 class="footer-title border-left">my page</h4>
                                        <ul class="footer-menu">
                                            <li>
                                                <a href="/myPurchase"><i class="zmdi zmdi-circle"></i><span>My Purchase</span></a>
                                            </li>
                                            <li>
                                                <a href="/mypage/myReviews"><i class="zmdi zmdi-circle"></i><span>My Reviews</span></a>
                                            </li>
                                            <li>
                                                <a href="/mypage/myCoupon"><i class="zmdi zmdi-circle"></i><span>My Coupon</span></a>
                                            </li>
                                            <li>
                                                <a href="/mypage/myInfo"><i class="zmdi zmdi-circle"></i><span>My Info</span></a>
                                            </li>
                                            <li>
                                                <a href="/mypage/wishList"><i class="zmdi zmdi-circle"></i><span>My Wishlist</span></a>
                                            </li>
                                            <li>
                                                <a href="/purchase/viewCart"><i class="zmdi zmdi-circle"></i><span>My Cart</span></a>
                                            </li>
                                            
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-4">
                                    <div class="single-footer">
                                        <h4 class="footer-title border-left">Get in touch</h4>
                                        <div class="footer-message">
                                            <form class="contact-form" action="/mail/send" method="post">
                                                <input type="text" name="name" placeholder="Your name here...">
                                                <input type="text" name="email" placeholder="Your email here...">
                                                <textarea class="height-80" name="message" placeholder="Your messege here..."></textarea>
                                                <button class="submit-btn-1 mt-20 btn-hover-1" type="submit">submit message</button> 
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </footer>
        <!-- END FOOTER AREA --> 
    </div>
    <!-- Body main wrapper end -->


    <!-- Placed JS at the end of the document so the pages load faster -->

    <!-- jquery.nivo.slider js -->
    <script src="/resources/lib/js/jquery.nivo.slider.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="/resources/js/plugins.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="/resources/js/main.js"></script>

	<!-- cartPreview -->
	
		<script src="/resources/js/ajax-cartPreview.js"></script>
	
	
	<!-- ajax-mail js -->
    <script src="/resources/js/ajax-mail.js"></script>
    
<script>
    $(document).ready(function() {
      $('#summernote').summernote({
        placeholder: '내용을 작성해주세요.',
        height: 400,
        lang : 'ko-KR', // menu language chage(US->KR)
        toolbar: [
			    // [groupName, [list of button]]
		    ['fontname', ['fontname']],
		    ['fontsize', ['fontsize']],
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    ['color', ['forecolor','color']],
		    ['table', ['table']],
		    ['para', ['ul', 'ol', 'paragraph']],
		    ['height', ['height']],
		    ['insert',['picture','link','video']],
		    ['view', ['fullscreen', 'help']]
		  ],
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
      }).on("summernote.enter", function(we, e) { 
    	  $(this).summernote("pasteHTML", "<br><br>"); e.preventDefault(); 
    	  }); //Enter 후에 <br><br> 제거 하는 코드
    $("#summernote").summernote('code',  '${notice.notice_description }');
    	  
    $("button[type='reset']").on("click",function(e){
    	$("#summernote").summernote('undo');
    });
    
	$('#delete-image').on("click",function(e){
		
		var str ="<li><input type='file' id='noticeImage' name='noticeImage' accept = 'image/jpg, image/jpeg, image/png, image/gif' style='margin-bottom:5px;'></li>";
		$(this).closest("li").remove();
		$("#image-button").append(str);
		
	});
  });
</script>

<jsp:include page="../footer.jsp"></jsp:include>
</body>

</html>