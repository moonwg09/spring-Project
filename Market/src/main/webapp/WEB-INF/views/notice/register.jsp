<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="no-js" lang="en">
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
    
    <!-- summerNote -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>

</head>



<body>

		
    <!-- Body main wrapper start -->
    <div class="wrapper">

       
        <!-- END MOBILE MENU AREA -->
        
        <!-- BREADCRUMBS SETCTION START -->
        <div class="breadcrumbs-section plr-200 mb-80 section">
            <div class="breadcrumbs overlay-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumbs-inner">
                                <h1 class="breadcrumbs-title">Register Form</h1>
                                <ul class="breadcrumb-list">
                                    <li><a href="/notice/list">list</a></li>
                                    <li>Register Form</li>
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
						        <form action="/notice/register" method="post" enctype="multipart/form-data">
						             <div class="row">
                                        <div class="col-lg-12">
                                            <h4 class="blog-section-title border-left mb-30">공지 등록</h4>
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="text" name="notice_title" placeholder="제목">
                                        </div>
                                        <div class="col-lg-12">
                                            <input type="text" id="notice_writer" name="notice_writer" placeholder="작성자">
                                        </div>
                                        <div class="col-lg-6">
											<p class="color-title f-left">메인 사진</p>
											<input type="file" id='noticeImage' name='noticeImage' accept = "image/jpg, image/jpeg, image/png, image/gif">
										</div>
                                        <div class="col-lg-12">
                                            <textarea class="mb-20" name="notice_information" placeholder="요약"></textarea>
                                        </div>
                                        
                                        <div class="col-lg-12">
                                            <textarea class="mb-20" id="summernote" name="notice_description"></textarea>
                                        </div>
                                        
                                        <div class="col-lg-12">
                                        	<button class="submit-btn-1 mt-30 btn-hover-1" type="submit">등록</button>
                                        	<button class="submit-btn-1 mt-30 btn-hover-1" type="reset" style="background-color :#4FC1F0;">초기화</button>
                                        	<button class="submit-btn-1 mt-30 btn-hover-1" type="button" onClick="location.href='/notice/list'" style="background-color : #575757;">목록</button>
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
    $(document).ready(function(){
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
    
    $("button[type='reset']").on("click",function(e){
    	$("#summernote").summernote('undo');
    });
	});
    </script>
    <jsp:include page="../footer.jsp"></jsp:include>
</body>

</html>