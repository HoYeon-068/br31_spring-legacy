<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.baskinrobbins.co.kr/information-center/consulting/faq.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 00:56:16 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<title>배스킨라빈스</title>

<meta name="description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta name="keywords" content="baskinrobbins, br31, 배스킨라빈스, 배라, 베라">
<meta name="author" content="배스킨라빈스">
<meta property="og:site_name" content="배스킨라빈스">
<meta property="og:url" content="../../index.html">
<meta property="og:title" content="[배스킨라빈스] 점포개설문의">
<meta property="og:description" content="배스킨라빈스 점포개설 문의 페이지 입니다.">
<meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">


<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>


<body id="baskinrobbins-information-center-consulting-faq" class="baskinrobbins-information-center-consulting-faq">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="site-container">
     <jsp:include page="../consulting/layout/consulting_header.jsp" /> 

        <section class="consulting-faq__container">
            <div class="consulting-faq__content">
	            <div class="consulting-faq__header">
		            <h3 class="consulting-faq__title">창업FAQ</h3>
		            <p>창업과 관련해 고객님들께서 자주 물으시는 질문들 입니다. </p>
	            </div>
	            <ul class="faq-list__list consulting-faq__list">
	            
	            
	            <c:forEach items="${list}" var="vo">
	            	<li class="faq-list__item">
			            <button type="button" class="faq-list__title">${vo.question}</button>
			            <div class="faq-list__answer">
				            <p>${vo.answer}</p>
			            </div>
		            </li>
	            </c:forEach>
                        	            </ul>
            </div>
                    </section>
    </div>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>

</html>
