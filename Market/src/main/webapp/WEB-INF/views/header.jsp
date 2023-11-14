<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" type="text/css" href="resources/css/header.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<link rel="stylesheet" type="text/css" href="resources/css/footer.css">
</head>
<div class="Main_Header" style="height: 10%;">
        <div class="Main_Logo">
            <!--메인 로고 메인 화면으로 들어가는 경로-->
            <a target="_blank" href="Index.html"><img class="LogoImg" src="resources/image/logo.jpg"></a>
        </div>

        <!--상단바 모양 틀-->
        <div class="Main_Bar_Grid" style="margin-left: -6%;">
            <div class="Main_Bar_top">
               <!--중고거래 html-->
               <div class="Main_Bar">
                <a class="Bar_bar" target="_blank" href="GerRea.html" style="text-decoration: none;">중고 거래</a>
               </div>
             <!--동네업체 html-->
             <div class="Main_Bar">
                <a class="Bar_bar" target="_blank" href="UpChae.html" style="text-decoration: none;">동네 업체</a>
            </div>
             <!--알바 html-->
             <div class="Main_Bar">
                <a class="Bar_bar" target="_blank" href="AlBar.html" style="text-decoration: none;">알바</a>
             </div>
             <!--부동산 직거래 html-->
             <div class="Main_Bar">
                <a class="Bar_bar" target="_blank" href="BuDong.html" style="text-decoration: none;">부동산 직거래</a>
             </div>
             <!--중고차 직거래 html-->
             <div class="Main_Bar">
                <a class="Bar_bar" target="_blank" href="Car.html" style="text-decoration: none;">중고차 직거래</a>
             </div>
            </div>
        </div>
        <!--검색 기능-->
        <div class="search-container">
            <form action="/search" method="get">
                <input type="text" name="search" placeholder="물품이나 동네를 검색해보세요." value="">
                <button type="submit" class="search-button">검색하기</button>
            </form>
        </div>
        </div>
    </div>