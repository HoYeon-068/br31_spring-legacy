<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="date=no">
<meta name="format-detection" content="address=no">
<meta name="format-detection" content="email=no">
<title>배스킨라빈스</title>

<meta name="description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta name="keywords" content="baskinrobbins, br31, 배스킨라빈스, 배라, 베라">
<meta name="author" content="배스킨라빈스">
<meta property="og:site_name" content="배스킨라빈스">
<meta property="og:url" content="https://www.baskinrobbins.co.kr">
<meta property="og:title" content="배스킨라빈스">
<meta property="og:description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta property="og:image" content="https://www.baskinrobbins.co.kr${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">


<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

</head>
<body id="baskinrobbins-story-history" class="baskinrobbins-story-history">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">
    <nav class="page-menu">
    <ul class="page-menu__list">
        <!--            현재 페이지인 경우 page-menu__item--active 추가-->
        <li class="page-menu__item ">
            <a href="${pageContext.request.contextPath}/story/story.do" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">브랜드 스토리</span>
                </div>
            </a>
        </li>        
        <li class="page-menu__item page-menu__item--active">
            <a href="${pageContext.request.contextPath}/story/history.do" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">이달의 맛 히스토리</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ">
            <a href="${pageContext.request.contextPath}/story/be-better.do" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">Be Better</span>
                </div>
            </a>
        </li>
    </ul>
</nav>
    <section id="content" class="story-history">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        이달의 맛 히스토리
                    </h2>
                </div>

                <div class="page-header__content">
                    <p class="page-header__text">
                        일년 열 두 달 새로운 맛, 배스킨라빈스 이달의 맛 히스토리
                    </p>
                </div>
            </div>
        </header>

        <c:set var="viewMode" value="${empty mode ? 'year' : mode}" />
        <nav id="page-tab" class="page-tab">
            <ul class="page-tab__list">
                <!-- 현재 페이지인 경우 page-tab__item--active 추가 -->
                <li class="page-tab__item ${viewMode eq 'year' ? 'page-tab__item--active' : ''} ">
                    <a href="${pageContext.request.contextPath}/story/history.do?releaseYear=2025#page-tab" class="page-tab__link">
                        <span class="page-tab__text">연도별 보기</span>
                    </a>
                </li>
                <li class="page-tab__item ${viewMode eq 'theme' ? 'page-tab__item--active' : ''}">
                    <a href="${pageContext.request.contextPath}/story/history.do?mkt=A#page-tab" class="page-tab__link">
                        <span class="page-tab__text">테마별 보기</span>
                    </a>
                </li>
            </ul>
        </nav>
        
		<c:if test="${viewMode eq 'year' }">
		
        <nav id="story-history-menu" class="story-history-menu story-history-nav  ${viewMode eq 'year' ? 'story-history-nav--active' : ''}">
            <div class="story-history-menu__container">
                <ul class="story-history-menu__list">
                        <li class="story-history-menu__item ${releaseYear == 2025 ? 'story-history-menu__item--active' : ''}">
                            <a href="${pageContext.request.contextPath}/story/history.do?releaseYear=2025#page-tab" class="story-history-menu__link">2025</a>
                        </li>
                        <li class="story-history-menu__item ${releaseYear == 2024 ? 'story-history-menu__item--active' : ''} ">
                            <a href="${pageContext.request.contextPath}/story/history.do?releaseYear=2024#page-tab" class="story-history-menu__link">2024</a>
                        </li>
                        <li class="story-history-menu__item ${releaseYear == 2023 ? 'story-history-menu__item--active' : ''} ">
                            <a href="${pageContext.request.contextPath}/story/history.do?releaseYear=2023#page-tab" class="story-history-menu__link">2023</a>
                        </li>
                        <li class="story-history-menu__item ${releaseYear == 2022 ? 'story-history-menu__item--active' : ''} ">
                            <a href="${pageContext.request.contextPath}/story/history.do?releaseYear=2022#page-tab" class="story-history-menu__link">2022</a>
                        </li>
                        <li class="story-history-menu__item ${releaseYear == 2021 ? 'story-history-menu__item--active' : ''} ">
                            <a href="${pageContext.request.contextPath}/story/history.do?releaseYear=2021#page-tab" class="story-history-menu__link">2021</a>
                        </li>
                        <li class="story-history-menu__item ${releaseYear == 2020 ? 'story-history-menu__item--active' : ''} ">
                            <a href="${pageContext.request.contextPath}/story/history.do?releaseYear=2020#page-tab" class="story-history-menu__link">2020</a>
                        </li>
                        <li class="story-history-menu__item ${releaseYear == 2019 ? 'story-history-menu__item--active' : ''} ">
                            <a href="${pageContext.request.contextPath}/story/history.do?releaseYear=2019#page-tab" class="story-history-menu__link">2019</a>
                        </li>
                        <li class="story-history-menu__item ${releaseYear == 2018 ? 'story-history-menu__item--active' : ''} ">
                            <a href="${pageContext.request.contextPath}/story/history.do?releaseYear=2018#page-tab" class="story-history-menu__link">2018</a>
                        </li>
                 </ul>
            </div>
        </nav>
        </c:if>

		<c:if test="${viewMode eq 'theme'}">
        <nav id="story-history-category" class="story-history-category story-history-nav ${viewMode eq 'theme' ? 'story-history-nav--active' : ''}">
            <ul class="story-history-category__list">
                <li class="story-history-category__item story-history-category__item--is-back  ${mkt eq 'A' ? 'story-history-category__item--active' : ''}">
                    <a href="${pageContext.request.contextPath}/story/history.do?mkt=A#page-tab" class="story-history-category__link">
                        <span class="story-history-category__text">배라이즈백</span>
                    </a>
                </li>
                <li class="story-history-category__item story-history-category__item--legend ${mkt eq 'B' ? 'story-history-category__item--active' : ''} ">
                    <a href="${pageContext.request.contextPath}/story/history.do?mkt=B#page-tab" class="story-history-category__link">
                        <span class="story-history-category__text">레전더리플레이버</span>
                    </a>
                </li>
                <li class="story-history-category__item story-history-category__item--gray ${mkt eq 'D' ? 'story-history-category__item--active' : ''}">
                    <a href="${pageContext.request.contextPath}/story/history.do?mkt=D#page-tab" class="story-history-category__link">
                        <span class="story-history-category__text">그래이맛어워드</span>
                    </a>
                </li>
                <li class="story-history-category__item story-history-category__item--gray ${mkt eq 'H' ? 'story-history-category__item--active' : ''}">
                    <a href="${pageContext.request.contextPath}/story/history.do?mkt=H#page-tab" class="story-history-category__link">
                        <span class="story-history-category__text">올해의플레이버</span>
                    </a>
                </li>
            </ul>
        </nav>
		</c:if>
		<!-- 아이스크림 list 출력 -->
        <div>
            <div class="story-history-list">
                <div class="story-history-list__container">
                    <ul class="story-history-list__list">
                    	<c:forEach var="y" items="${list}" >
	                        <li class="story-history-list__item">
	                            <div class="story-history-list__content">
	                                <div class="story-history-list__menu">
	                                    <img src="${pageContext.request.contextPath}${y.historyImgPath}" alt="${y.historyIceName}" class="story-history-list__image">
	                                </div>
	                            </div>
	                        </li>
                    	
                    	
                    	</c:forEach>
                    </ul>
                </div>
            </div>
        </div>


    </section>
    
   
</div>
<script>

</script>




<jsp:include page="/WEB-INF/views/layout/footer.jsp" />


</body>
</html>