<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Subash || Home</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/icon/favicon.png">

    <!-- All CSS Files -->
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
    <link rel="stylesheet" type="text/css"
	href="../resources/css/header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet"
	href="../resources/css/transation/detailProduct.css">

<link rel="stylesheet" href="detail.css" />
</head>

		<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
        <!-- BREADCRUMBS SETCTION START -->
        <div class="breadcrumbs-section plr-200 mb-80">
            <div class="breadcrumbs overlay-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="breadcrumbs-inner">
                                <h1 class="breadcrumbs-title">Notice</h1>
                                <ul class="breadcrumb-list">
                                    <li><a href="/main">Home</a></li>
                                    <li>Notice</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- BREADCRUMBS SETCTION END -->

        <!-- Start page content -->
        <div id="page-content" class="page-wrapper">

            <!-- BLOG SECTION START -->
            <div class="blog-section mb-50">
                <div class="container">
                	<div class="row">
                        <div class="col-md-12">
                            <div class="section-title text-left ">
                                <h2 class="uppercase">Notice</h2>
                                <c:if test="${member.adminCk == 1 }">
                                	<a class="button extra-small button-black f-right" href='register'><span>Register</span></a>
                               </c:if>
                                <h6 class="mb-40">공지사항과 다양한 이벤트들을 확인해주세요.</h6>
                                
                            </div>
                        	
                        </div>
                    </div>
                    
                    <div class="row">
                    	
                    	<c:forEach items="${notice }" var="notice" varStatus="varstatus">
                    	
                        <!-- blog-item start -->
                       <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="blog-item" style="position:relative; padding-top:81%; display:block;">
                                <img id="main-img${varstatus.index}" onError ="this.src='/resources/img/blog/1.jpg'" alt="error"
                                style="position:absolute; top:0; width:100%;height:100%">
                                <script>
                                  	var imageName = encodeURIComponent('${notice.notice_image.image_uploadPath}'+'/'+'${notice.notice_image.image_uuid}'+'_'+'${notice.notice_image.image_name}');
                                  	var realSrc = '/display?fileName='+imageName;
                                  	
                              		document.getElementById('main-img${varstatus.index}').src= realSrc;
								</script>
                                <div class="blog-desc">
                                    <h5 class="blog-title"><a href="get?notice_id=${notice.notice_id}"><c:out value="${notice.notice_title }"/></a></h5>
                                    <p>${notice.notice_information }</p>
                                    <div class="read-more">
                                        <a href="get?notice_id=${notice.notice_id }">Read more</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <!-- blog-item end -->
                        </c:forEach>
                        
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

<jsp:include page="../footer.jsp"></jsp:include>