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
<meta property="og:url" content="${pageContext.request.contextPath}/index.html">
<meta property="og:title" content="배스킨라빈스">
<meta property="og:description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">


<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

</head>


<body id="baskinrobbins-brapp" class="baskinrobbins-brapp">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<article class="site-container">
    <nav class="page-menu">
        <ul class="page-menu__list">
            <!--            현재 페이지인 경우 page-menu__item--active 추가-->
            <li class="page-menu__item page-menu__item--active">
                <a href="#" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">배라앱 소개 및 다운로드</span>
                    </div>
                </a>
            </li>
        </ul>
    </nav>

    <div id="content">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        배라앱
                    </h2>
                </div>

                <div class="page-header__content">
                    <p class="page-header__text">
                        <strong>배스킨라빈스 앱 출시</strong>
                        배라를 배라앱으로<i>!</i> <br>
                        이젠 내 손 안에서 더 편안하게 즐겨보세요.
                    </p>
                </div>
            </div>
        </header>

        <div class="brapp">
            <div class="brapp__container">
                <section class="brapp__content">
                    <header>
                        <h2>배라앱</h2>
                        <h3>
                            배스킨라빈스 공식<br>
                            모바일 어플리케이션
                        </h3>
                    </header>

                    <p>
                        내 위치에서 가까운 매장을 바로 확인하고<br>
                        케이크는 미리 예약해서 매장에서 간편 픽업<br>
                        등급이 올라갈수록 혜택도 업!<br>
                        멤버십 고객을 위한 5+1 혜택까지!<br>
                        핑크 컨테이너로 친구,가족과<br>
                        쿠폰/교환권을 손쉽게 공유할 수 있는 배라앱

                        <strong>
                            지금 바로 설치하고<br>
                            내 손안의 배라 라이프를 즐겨보세요.
                        </strong>
                    </p>

                    <ul>
                        <li>
                            <h4>편리하고 스마트한 오더</h4>
                            <p>배라앱으로 다양한 상품을<br>쉽고 빠르게 주문!</p>
                        </li>
                        <li>
                            <h4>멤버십 혜택</h4>
                            <p>등급이 올라갈수록<br/>혜택도 업되는 배라앱 멤버십!</p>
                        </li>
                        <li>
                            <h4>함께 담기 주문</h4>
                            <p>가족 혹은 친구와 함께<br/>담아 완성하는 주문!</p>
                        </li>
                        <li>
                            <h4>핑크 컨테이너</h4>
                            <p>가족 혹은 친구와<br/>쿠폰/교환권을 손쉽게 공유하기!</p>
                        </li>
                        <li>
                            <h4>케이크 예약 주문</h4>
                            <p>케이크는 미리 예약해서<br/>매장에서 맘편하게 픽업!</p>
                        </li>
                        <li>
                            <h4>이벤트</h4>
                            <p>배스킨라빈스의 다양한 이벤트와<br/>제휴 혜택 소식을 한 번에!</p>
                        </li>
                    </ul>
                </section>
            </div>

            <div class="brapp__guide">
                <div class="brapp__guide-container">
                    <div class="brapp__guide-content">
                        <div class="swiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div>
                                        <p>배라앱 스마트하게 이용하는 법 01</p>
                                        <h4>내 근처 매장에서 바로 주문</h4>
                                        <p>배라앱을 통해 가까운 매장을 바로 확인하고<br>간편하게 주문하여 쉽고 빠르게 주문한 메뉴를 수령해보세요!</p>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div>
                                        <p>배라앱 스마트하게 이용하는 법 02</p>
                                        <h4>함께 담기 주문</h4>
                                        <p>가족, 친구, 연인, 좋아하는 사람들과 함께 골라담아<br/>주문을 완성하여 더 즐거운 아이스크림 타임을 즐기세요!</p>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div>
                                        <p>배라앱 스마트하게 이용하는 법 03</p>
                                        <h4>핑크 컨테이너</h4>
                                        <p>연락처 연동 후 핑크 컨테이너를 생성하여,<br/>쿠폰과 모바일 상품권을 가족, 친구들과 함께 쓸 수 있어요!</p>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div>
                                        <p>배라앱 스마트하게 이용하는 법 04</p>
                                        <h4>멤버십 혜택</h4>
                                        <p>등급이 오를 수록 커지는 배라앱 멤버십 혜택!<br/>리워드 5개 쌓일 때마다 싱글레귤러가 FREE<br/>등급에 따라 더 큰 혜택을 누려보세요!</p>
                                    </div>
                                </div>

                                <div class="swiper-slide">
                                    <div>
                                        <p>배라앱 스마트하게 이용하는 법 05</p>
                                        <h4>케이크 예약 주문</h4>
                                        <p>특별한 날 원하는 케이크를 미리 예약하여<br/>재고 걱정 없이 완벽하고 특별한 하루를 보내세요!</p>
                                    </div>
                                </div>
                            </div>
                            <div class="brapp__guide-pagination">
                                <div class="swiper-pagination"></div>
                                <div class="swiper-pagination2"></div>
                            </div>
                        </div>
                    </div>
                    <div class="brapp__guide-thumbnail">
                        <div class="swiper">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/app/slide_img01.png" alt="가까운 매장 확인">
                                </div>
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/app/slide_img02.png" alt="함께 담기 주문">
                                </div>
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/app/slide_img03.png" alt="핑크 컨테이너">
                                </div>
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/app/slide_img04.png" alt="멤버십 혜택">
                                </div>
                                <div class="swiper-slide">
                                    <img src="${pageContext.request.contextPath}/resources/images/app/slide_img05.png" alt="케이크 예약 주문">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <aside class="brapp__app-down">
                <div>
                    <p>배라앱 다운로드</p>
                    <a href="https://bra-brus.baskinrobbins.co.kr/web/share" target="_blank">배라앱 다운로드</a>
                </div>
            </aside>
        </div>
    </div>
</article>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>

<!-- Mirrored from www.baskinrobbins.co.kr/brapp/brapp.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 00:53:55 GMT -->
</html>
