<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="findForm" action="${contextPath }/member/findIdCheck" method="post">
	<div class="form-group">
    	<input type="text" name="nickName" id="nickName" placeholder="이름">
    </div>
    <div class="form-group">
    	<input type="email" name="email" id="email" placeholder="이메일">
    </div>
    <button type="submit" id="id-find" onclick="findSubmit(); return false;">아이디 찾기</button>
</form>
</body>
</html>