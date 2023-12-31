<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
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

		
<!-- BREADCRUMBS SETCTION START -->
        <div class="breadcrumbs-section plr-200 mb-80 section">
            <div class="breadcrumbs overlay-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumbs-inner">
                                <h1 class="breadcrumbs-title">Notice</h1>
                                <ul class="breadcrumb-list">
                                    <li><a href="/">Home</a></li>
                                    <li><a href="/notice/list">Notice</a></li>
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

            <!-- BLOG SECTION START -->
            <div class="blog-section mb-50">
                <div class="container">
                	<div class="row">
                        <div class="col-md-12">
                            <div class="section-title text-left ">
                                <h2 class="uppercase mb-40">Notice</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="blog-details-area">
                            
                                <div class="blog-share-tags box-shadow clearfix mb-60">
                                    <table class="table" style="margin-bottom:0px;">
										<thead>
											<tr>
		                                        <th class="share-tags-title" style="width:10%;">title</th>
		                                        <td style="color:#666666; border-bottom:2px solid #ddd;"><c:out value="${notice.notice_title }"/></td>
		                                    </tr>
										</thead>
		                                <tbody>
		                                    <!-- tr -->
		                                    
		                                    <tr>
		                                        <th class="share-tags-title">writer</th>
		                                        <td> <c:out value="${notice.notice_writer }"/></td>
		                                    </tr>
		                                    <tr>
		                                        <th class="share-tags-title">date</th>
		                                        <td> <fmt:formatDate value="${notice.notice_regDate }" type="both"/> </td>
		                                    </tr>
		                                   </tbody>
                                        </table>

                                </div>
                                
                                <!-- blog-details-photo -->
                                <div class="col-lg-12">
                                	<div class="col-lg-3"></div>
	                                <div class="col-lg-6 blog-details-photo bg-img-1 p-20 mb-30" style="overflow: visible;">
	                                    <img id="notice-img" onError="this.src='/resources/img/blog/10.jpg'" alt="error" style="width: 100%; height: auto;">
	                                    <script>
                                           	var imageName = encodeURIComponent('${notice.notice_image.image_uploadPath}'+'/'+'${notice.notice_image.image_uuid}'+'_'+'${notice.notice_image.image_name}');
                                           	var realSrc = '/display?fileName='+imageName;
                                       		document.getElementById('notice-img').src= realSrc;
										</script>
	                                    <div class="today-date bg-img-1">
	                                    	<fmt:setLocale value="en_US" scope="session"></fmt:setLocale>
											
	                                        <span class="meta-date"><fmt:formatDate value="${notice.notice_regDate }" pattern="dd"/></span>
	                                        <span class="meta-month"><fmt:formatDate value="${notice.notice_regDate }" pattern="MMM"/></span>
	                                    	<fmt:setLocale value="ko_kr" scope="session"></fmt:setLocale>
	                                    </div>
	                                </div>
	                                <div class="col-lg-3"></div>
                                </div>
                                
                                <!-- blog-description -->
                                <div class="blog-description mb-60">                                  
                                    <p><pre style="background-color:transparent; border: none"> ${notice.notice_description} </pre>
                                	<c:if test="${member.adminCk == 1 }">
                                		<a class="button extra-small button-white f-right" href='modify?notice_id=${notice.notice_id }'><span>수정</span></a>
                                		<a class="button extra-small button-white f-right" href='javascript:remove()'><span>삭제</span></a>
                                	</c:if>
                                </div>
                                <hr style="border-bottom:2px solid #eeeeee">
                                <div class="text-center"> <a class="button extra-small button-black mb-20" href="list"><span>LIST</span></a></div>
								<table class="table table-bordered">
	                                <tbody>
	                                    <tr>
	                                        <th class="share-tags-title" style="width:10%"> &nbsp;&#9650;&nbsp;prev </th>
	                                        <td> 
		                                        <c:if test="${notice.prev_id ne null}">
		                                        	<a href="get?notice_id=${notice.prev_id}"><c:out value="${notice.prev_title}"/></a>
		                                        </c:if>
		                                        <c:if test="${notice.prev_id eq null}">이전글이 없습니다.</c:if>
	                                        </td>
	                                    </tr>
	                                    <tr style="border-bottom: 1px solid #ddd; ">
	                                        <th class="share-tags-title">&nbsp;&#9660;&nbsp;next </th>
	                                        <td> 
		                                        <c:if test="${notice.next_id ne null}">
		                                        	<a href="get?notice_id=${notice.next_id}"><c:out value="${notice.next_title}"/></a>
		                                        </c:if>
		                                        <c:if test="${notice.next_id eq null}">다음글이 없습니다.</c:if>
	                                        </td>
	                                    </tr>
	                                   </tbody>
	                               </table>
                            </div>
                        </div>
                     </div>
                 </div>
             </div>
         </section>
         
<form id='operForm' action='/notice/remove' method='post'>
	<input type="hidden" id='notice_id' name='notice_id' value='<c:out value="${ notice.notice_id}"/>'>
</form>


<script>

	function remove(){
		$("#operForm").submit();
	}
</script>

<jsp:include page="../footer.jsp"></jsp:include>