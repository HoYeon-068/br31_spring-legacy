<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.baskinrobbins.co.kr/menu/fom.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 00:52:21 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<title>배스킨라빈스</title>

<meta name="description"
	content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta name="keywords" content="baskinrobbins, br31, 배스킨라빈스, 배라, 베라">
<meta name="author" content="배스킨라빈스">
<meta property="og:site_name" content="배스킨라빈스">
<meta property="og:url"
	content="${pageContext.request.contextPath}/index.html">
<meta property="og:title" content="[배스킨라빈스] 이달의 맛">
<meta property="og:description" content="배스킨라빈스에서 매달 새로운 이달의 맛을 만나보세요.">
<meta property="og:image"
	content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/sdk1659.js?appkey=8c71dfbb0129b7e25a985c72328e967b"></script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/app.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<body id="${bodyId}" class="${bodyClass}">
	<div class="skipnav">
		<a href="#content">본문 영역으로 바로가기</a>
	</div>
	
	<!-- header 영역 시작 -->
	<tiles:insertAttribute name="header" />
	<!-- header 영역 끝 -->
	<div class="site-container">
	<tiles:insertAttribute name="storeHeader"/>
	<!-- content 영역 시작 -->	
	<tiles:insertAttribute name="content"/>
	<!-- content 영역 끝 -->	
	</div>
	
	<!-- footer 영역 시작 -->
	<tiles:insertAttribute name="footer" />
	<!-- footer 영역 끝 -->

</body>


</html>