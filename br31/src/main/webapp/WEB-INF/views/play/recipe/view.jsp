<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
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
    <meta property="og:url" content="${pageContext.request.contextPath}/">
    <meta property="og:title" content="[배스킨라빈스] BR레시피">
    <meta property="og:description" content="다양한 전문가들이 제안하는 배스킨라빈스 행복 레시피 입니다.">
    <meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
    <meta property="og:type" content="website">

    <!-- 프로젝트 리소스 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>

<body id="baskinrobbins-play-recipe-view" class="baskinrobbins-play-recipe-view">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<section class="site-container">

    <!-- page-menu -->
    <nav class="page-menu">
        <ul class="page-menu__list">
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/event/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">이벤트</span></div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">배라광장</span></div>
                </a>
            </li>
            <li class="page-menu__item page-menu__item--active">
                <a href="${pageContext.request.contextPath}/play/recipe/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">BR 레시피</span></div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/myflavor/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">마이플레이버 리스트</span></div>
                </a>
            </li>
        </ul>
    </nav>

    <!-- CONTENT -->
    <div id="content" class="recipe-view">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">BR Recipe</h2>
                    <div class="event-view__header">
                        다양한 전문가들이 제안하는 배라 행복레시피
                    </div>
                </div>
            </div>
        </header>

        <!-- HTML -->
        <c:set var="html" value="${dto.contentHtml}" />

        <!-- /assets 경로 치환 -->
        <c:set var="html" value="${fn:replace(
            html,
            'src=&quot;/assets',
            'src=&quot;https://www.baskinrobbins.co.kr/assets'
        )}" />

        <!--/upload 경로 치환 -->
        <c:set var="html" value="${fn:replace(
            html,
            'src=&quot;/upload',
            'src=&quot;https://www.baskinrobbins.co.kr/upload'
        )}" />

        <!-- 출력 -->
        <article class="recipe-view-article">
            <c:out value="${html}" escapeXml="false" />
        </article>

        <!-- 목록 버튼 -->
        <div class="recipe-view__box">
            <a href="list.do?category=${param.category}&page=${param.page}"
               class="recipe-view__button">목록</a>
        </div>

    </div>
</section>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
