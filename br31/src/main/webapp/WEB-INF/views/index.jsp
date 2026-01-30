<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
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
<meta property="og:url" content="index.html">
<meta property="og:title" content="배스킨라빈스">
<meta property="og:description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">



<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">


<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

</head>
<body id="baskinrobbins-main" class="baskinrobbins-main ">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div id="content" class="main">
    <div class="main-hero">
        <div class="main-hero__container">
            <div class="main-hero__content">
                                <div class="main-hero__box">
                                    <a href="menu/list9c26.html?category=B" target='_self' class="main-hero__link">
                        <span class="main-hero__text">타이틀</span>
                    </a>
                                    <img src="${pageContext.request.contextPath}/resources/images/upload/main/banner/8d8b43a04a4a994b3d6aea329d1da086.jpg" alt="">
                </div>
                
                <div class="main-hero-list">
                    <div class="main-hero-list__content">
                        <ul class="main-hero-list__list">
                                                        <li class="main-hero-list__item">
                                                                    <a href="play/event/view.do?seq=7" target='_self' class="main-hero-list__link">
                                        <img src="${pageContext.request.contextPath}/resources/images/upload/main/banner/ea53de187a1a3330c7eec5679f63a637.png" alt="" class="main-hero-list__image">
                                    </a>
                                                            </li>
                                                            <li class="main-hero-list__item">
                                                                    <a href="play/event/view.do?seq=8" target='_self' class="main-hero-list__link">
                                        <img src="${pageContext.request.contextPath}/resources/images/upload/main/banner/4b18bd067af44ccecf7809adb3aa1e4b.png" alt="" class="main-hero-list__image">
                                    </a>
                                                            </li>
                                                            <li class="main-hero-list__item">
                                                                    <a href="play/event/view.do?seq=10" target='_self' class="main-hero-list__link">
                                        <img src="${pageContext.request.contextPath}/resources/images/upload/main/banner/b384fc1868507ac1f19a6eee4926635e.png" alt="" class="main-hero-list__image">
                                    </a>
                                                            </li>
                                                        </ul>
                    </div>
                                        <button type="button" class="main-hero-list__button">
                        <span class="main-hero-list__button-text">toggle button</span>
                    </button>
                    
                </div>
            </div>
        </div>
    </div>

        <section class="main-promotion">
        <div class="main__container">
            <header class="main-header">
                <div class="main-header__container">
                    <h2 class="main-header__title" lang="en">
                        <span class="main-header__text">Promotion</span>
                    </h2>

                    <p class="main-header__description">
                        배라의 다양한 혜택과 이벤트를 만나보세요
                    </p>
                </div>
            </header>

            <div class="main-promotion__container">
                <div class="swiper">
                    <div class="swiper-wrapper">
                      <c:forEach items="${ plist }" var="dto">
	                       <div class="swiper-slide">
	                            <a href="play/event/view.do?seq=${dto.eventId}&category=${dto.evtCategoryId}" class="main-promotion__link">
	                                <div class="main-promotion__frame">
	                                    <img src="${pageContext.request.contextPath}${dto.imgPath}" alt="${dto.title}" class="main-promotion__image">
	                                </div>
	
	                                <div class="main-promotion__content">
	                                    <p class="main-promotion__date">
	                                    <c:choose>
										    <c:when test="${empty dto.startDate and empty dto.endDate}">
										      상시 운영
										    </c:when>
										
										    <c:when test="${not empty dto.startDate and empty dto.endDate}">
										      ${dto.startDate} ~ 소진 시 까지
										    </c:when>
										
										    <c:otherwise>
										      ${dto.startDate} ~ ${dto.endDate}
										    </c:otherwise>
										  </c:choose>
	                                    </p>
	
	                                    <p class="main-promotion__text">
	                                        ${ dto.title }
	                                    </p>
	                                </div>
	                            </a>
	                        </div>
                      </c:forEach>

                      </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </section>
        <section class="main-new">
        <div class="main__container">
            <header class="main-header">
                <div class="main-header__container">
                    <h2 class="main-header__title" lang="en">
                        <span class="main-header__text">New Item</span>
                    </h2>

                    <p class="main-header__description">
                        새로 나온 배라의 신제품을 소개합니다
                    </p>
                </div>
            </header>

            <div class="main-new__container">
                <div class="swiper">
                    <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                            <div class="main-new__content">
                                <ul class="main-new__list">
                                    <li class="main-new__item">
                                        <a href="menu/view9dc3.html?seq=840" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/a0c2854fd424430028246bfc094fc078.png" alt="초코포키해♥" class="main-new__frame">
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view4348.html?seq=846" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/26898fd791b8c5be0cfcd168827b68c3.png" alt="달콤 가득 포키 케이크" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">달콤 가득 포키 케이크</p>
                                                <div class="main-new__button" style="background-color:#ffe3c3;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view5280.html?seq=845" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/9e7540e9fb9077e99e0ac602281093c6.png" alt="한입 쏙! 포키 케이크" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">한입 쏙! 포키 케이크</p>
                                                <div class="main-new__button" style="background-color:#ffe3c3;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view32e0.html?seq=852" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/d7db5bc58163ac95be41f5f7225e9ff3.png" alt="골든 프랄렌 버터 쿠키 샌드" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">골든 프랄렌 버터 쿠키 샌드</p>
                                                <div class="main-new__button" style="background-color:#ffe3c3;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view5247.html?seq=853" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/1676d64ffbf8dd5e1868da41f97e24ca.png" alt="스트로베리 버터 쿠키 샌드" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">스트로베리 버터 쿠키 샌드</p>
                                                <div class="main-new__button" style="background-color:#ffe3c3;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                        </ul>
                            </div>
                        </div>
                                                <div class="swiper-slide">
                            <div class="main-new__content">
                                <ul class="main-new__list">
                                    <li class="main-new__item">
                                        <a href="menu/view599c.html?seq=834" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/a875797e861588de68b0a5b5dacbde03.png" alt="골든 프랄린 버터" class="main-new__frame">
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view926a.html?seq=847" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/02a1b39092800f09dc77c85fd8178600.png" alt="골든 프랄린 버터 케이크" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#7D3B0E;">골든 프랄린 버터 케이크</p>
                                                <div class="main-new__button" style="background-color:#F2C06E;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view6253.html?seq=832" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/4491e9462749c3338086d46ea0c89966.png" alt="마이멜로디와 더 듬뿍 딸기" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">마이멜로디와 더 듬뿍 딸기</p>
                                                <div class="main-new__button" style="background-color:#EA6082;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view14f5.html?seq=812" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/ad72ac1361e2c846f1d78fb5a6022fde.png" alt="네모 블록 마이멜로디" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">네모 블록 마이멜로디</p>
                                                <div class="main-new__button" style="background-color:#EA6082;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view56ac.html?seq=831" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/1c620b143e24330df572e0dce69ff4b0.png" alt="더 듬뿍 오렌지 앤 자몽케이크" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">더 듬뿍 오렌지 앤 자몽케이크</p>
                                                <div class="main-new__button" style="background-color:#EA6082;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                        </ul>
                            </div>
                        </div>
                                                <div class="swiper-slide">
                            <div class="main-new__content">
                                <ul class="main-new__list">
                                    <li class="main-new__item">
                                        <a href="menu/view3a03.html?seq=825" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/29c099ccc07d67d20d18084e47aebe7a.png" alt="핑크 베리 말차" class="main-new__frame">
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view9ef0.html?seq=839" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/6a358aeeb18e770c6967cef44d84edff.png" alt="말차 밀크 쉐이크" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#6b4135;">말차 밀크 쉐이크</p>
                                                <div class="main-new__button" style="background-color:#ffe3c3;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view2be3.html?seq=838" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/44a8c2e8e4d21bbe67b726d5e7895eca.png" alt="핑크 베리 말차 쉐이크" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#99582a;">핑크 베리 말차 쉐이크</p>
                                                <div class="main-new__button" style="background-color:#ffbf69;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view3557.html?seq=828" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/d28468b13fbe546c8967a601bc7f4afa.png" alt="핑크 베리 말차" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">핑크 베리 말차</p>
                                                <div class="main-new__button" style="background-color:#EA6082;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/viewac4a.html?seq=829" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/4e998fc0cde462caec1aa3ab74d99b62.png" alt="진정한 말차 티라미수" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">진정한 말차 티라미수</p>
                                                <div class="main-new__button" style="background-color:#EA6082;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                        </ul>
                            </div>
                        </div>
                                                <div class="swiper-slide">
                            <div class="main-new__content">
                                <ul class="main-new__list">
                                    <li class="main-new__item">
                                        <a href="menu/view565c.html?seq=803" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/18335ef0951b5821b4028682651aaf23.png" alt="말차다미아" class="main-new__frame">
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/viewf094.html?seq=835" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/707327a2f019f692e5e0d6083981ec49.png" alt="아이스 흑임자 경단" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#6b4135;">아이스 흑임자 경단</p>
                                                <div class="main-new__button" style="background-color:#6b4135;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view34a1.html?seq=836" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/447077ee2026d1237b96f2e13892ba3e.png" alt="아이스 인절미 경단" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#6b4135;">아이스 인절미 경단</p>
                                                <div class="main-new__button" style="background-color:#6b4135;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view9e7f.html?seq=779" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/898bcdd99056dec50a069874df728edf.png" alt="더 듬뿍 프루티 케이크" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#EA6082;">더 듬뿍 프루티 케이크</p>
                                                <div class="main-new__button" style="background-color:#EA6082;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                            <li class="main-new__item">
                                        <a href="menu/view617a.html?seq=732" class="main-new__link">
                                            <div class="main-new__frame">
                                                <img src="${pageContext.request.contextPath}/resources/images/upload/main/newitems/f7f0884e6f9127044d09d3718135e6db.png" alt="더 듬뿍 딸기 케이크" class="main-new__image">
                                            </div>
                                            <div class="main-new__box">
                                                <p class="main-new__title" style="color:#f6c4be;">더 듬뿍 딸기 케이크</p>
                                                <div class="main-new__button" style="background-color:#f6c4be;" ></div>
                                            </div>
                                        </a>
                                    </li>
                                                        </ul>
                            </div>
                        </div>
                                            </div>

                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </section>

    <section class="main-play">
        <div class="main__container">
            <header class="main-header">
                <div class="main-header__container">
                    <h2 class="main-header__title" lang="en">
                        <span class="main-header__text">BR Play</span>
                    </h2>

                    <p class="main-header__description">
                        배라와 함께한 당신의 다양한 의견을 듣습니다
                    </p>
                </div>
            </header>

            <div class="main-play__container">
                <ul class="main-play__list">
                                        <li class="main-play__item">
                        <a href="play/myflavor/list.do" class="main-play__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/main/brplay/38ec45e00b62db0f26e4ee90ce889841.png" alt="MY FLAVOR LIST" class="main-play__image">
                        </a>
                    </li>
                                        <li class="main-play__item">
                        <a href="play/plaza/list.do" class="main-play__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/main/brplay/99847b6c140916bfe27eceea5c2ed9dc.png" alt="배묻배답" class="main-play__image">
                        </a>
                    </li>
                                    </ul>
            </div>
        </div>
    </section>

    <section class="main-be-better">
        <div class="main__container">
            <header class="main-header">
                <div class="main-header__container">
                    <h2 class="main-header__title" lang="en">
                        <span class="main-header__text">Be Better</span>
                    </h2>

                    <p class="main-header__description">
                        배라가 사회와 함께 하는 방법, 가치 있는 같이
                    </p>
                </div>
            </header>

            <div class="main-be-better__container">
                <ul class="main-be-better__list">
                                        <li class="main-be-better__item main-be-better__item--farm">
                        <a href="story/be-better.html#farm" class="main-be-better__link">
                            <div class="main-be-better__frame">
                                <img src="${pageContext.request.contextPath}/resources/images/main/img_farm.png" alt="핑크팜 캠페인" class="main-be-better__image">
                            </div>

                            <div class="main-be-better__content">
                                <h3 class="main-be-better__title">핑크팜 캠페인</h3>

                                <p class="main-be-better__text">지역 농가 상생 프로젝트</p>
                            </div>
                        </a>
                    </li>
                    <li class="main-be-better__item main-be-better__item--dream">
                        <a href="story/be-better.html#dream" class="main-be-better__link">
                            <div class="main-be-better__frame">
                                <img src="${pageContext.request.contextPath}/resources/images/main/img_dream.png" alt="핑크드림 캠페인" class="main-be-better__image">
                            </div>

                            <div class="main-be-better__content">
                                <h3 class="main-be-better__title">핑크드림 캠페인</h3>

                                <p class="main-be-better__text">청소년 자립 지원 프로젝트</p>
                            </div>
                        </a>
                    </li>
                    <li class="main-be-better__item main-be-better__item--link">
                        <a href="story/be-better.html#link" class="main-be-better__link">
                            <div class="main-be-better__frame">
                                <img src="${pageContext.request.contextPath}/resources/images/main/img_link.png" alt="핑크링크 캠페인" class="main-be-better__image">
                            </div>

                            <div class="main-be-better__content">
                                <h3 class="main-be-better__title">핑크링크 캠페인</h3>

                                <p class="main-be-better__text">중소 기업 콜라보 프로젝트</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

        <section class="main-br-benefit">
        <div class="main__container">
            <header class="main-header">
                <div class="main-header__container">
                    <h2 class="main-header__title" lang="en">
                        <span class="main-header__text">BR Benefit</span>
                    </h2>

                    <p class="main-header__description">
                        배라와 함께 다양한 혜택을 즐기세요
                    </p>
                </div>
            </header>
        </div>

        <div class="main-br-benefit__container">
            <div class="swiper">
                <div class="swiper-wrapper">
                
                  <c:forEach items="${ blist }" var="dto">
	                   <div class="swiper-slide">
	                        <a href="play/event/view.do?seq=${dto.eventId}&category=${dto.evtCategoryId}" class="main-br-benefit__link">
	                            <div class="main-br-benefit__frame">
	                                <img src="${pageContext.request.contextPath}${dto.imgPath}" alt="${dto.title}" class="main-br-benefit__image">
	                            </div>
	                        </a>
	                    </div>
                  </c:forEach>
                  
                </div>
            </div>
        </div>
    </section>
    
    <div class="main-box">
        <div class="main__container">
            <div class="main-box__container">
                <section class="main-store">
                    <header class="main-header">
                        <div class="main-header__container">
                            <h2 class="main-header__title" lang="en">
                                <span class="main-header__text">Store</span>
                            </h2>

                            <p class="main-header__description">
                                내 주변 가까운<br>
                                배스킨라빈스 매장을 찾아보세요
                            </p>
                        </div>
                    </header>

                    <div class="main-store__container">
                        <a href="store/map.html">
                            <img src="${pageContext.request.contextPath}/resources/images/main/img_store_map.png" alt="">
                        </a>
                    </div>
                </section>

                <section class="main-br-way">
                    <header class="main-header">
                        <div class="main-header__container">
                            <h2 class="main-header__title" lang="en">
                                <span class="main-header__text">BR Way</span>
                            </h2>

                            <p class="main-header__description">
                                오랜 시간 우리 곁에 함께한<br>
                                배스킨라빈스의 이야기
                            </p>
                        </div>
                    </header>

                    <div class="main-br-way__container">
                        <a href="story/story.html">
                            <img src="${pageContext.request.contextPath}/resources/images/main/img_story_story.png" alt="">
                        </a>
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>


<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>
