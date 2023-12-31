<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  

<link rel="stylesheet" type="text/css"
	href="../resources/css/header.css">
<link rel="stylesheet" type="text/css" href="../resources/css/main.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/member/login.css">
</head>
<body>
<div id="header">
		<jsp:include page="../header.jsp"></jsp:include>
	</div>
 <div class='signupScreen'>
       <div class="container">
      
        <img src="../resources/image/login.jpg" style="margin-bottom: 15%;">
        <form action="/member/login" method="POST" id="login_form">
            <div class="form-group">
                <input type="text" class="username" name="id" placeholder="아이디를 입력해주세요" required>
            </div><br>
            <div class="form-group">
                <input type="password" class="password" name="password" placeholder="비밀번호를 입력해주세요" required>
            </div><br>
            <div class="form-group1">
                <input type="checkbox" class="remember" name="remember">
                <label for="remember">아이디 저장</label>
                <input type="checkbox" class="keepLoggedIn" name="keepLoggedIn">
                <label for="keepLoggedIn">로그인 유지</label>
            </div><br>
            <div class="form-group2">
                <button type="submit" class="submit">로그인</button>
            </div>
            <a href="https://kauth.kakao.com/oauth/authorize
            ?client_id=febbfe0c7cdec9f4b935100d5cbc597d&redirect_uri=http://localhost:8081/member/kakao&response_type=code">
            	<img src="../resources/image/kakao_login_large_narrow.png" style="height:60px">
            </a>
        </form>
       
        <div class="links">
            <a href="/member/findId">아이디 찾기</a>
            <a href="/member/findPassword">비밀번호 찾기</a>
            <a href="/member/check">회원 가입 하기</a>
        </div>
    </div>
	<jsp:include page="../footer.jsp"></jsp:include>
</div>

<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(".submit").click(function(){
        
       // alert("로그인 버튼 작동");
       
    	/* 로그인 메서드 서버 요청 */
        $("#login_form").submit();
 

        
    });
 
</script>

</body>
</html>