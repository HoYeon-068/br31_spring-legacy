<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.baskinrobbins.co.kr/store/workshop.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 00:53:48 GMT -->
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
<meta property="og:url" content="../index.html">
<meta property="og:title" content="[배스킨라빈스] 워크샵">
<meta property="og:description" content="달콤한 상상이 현실이 되는 실험과 창조의 공간">
<meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>


</head>
<body id="baskinrobbins-store-workshop" class="baskinrobbins-store-workshop">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="site-container">
    <jsp:include page="../store/layout/store_header.jsp" /> 

	<div class="content">
		<header class="page-header">
			<div class="page-header__container">
				<div class="page-header__content">
					<h2 class="page-header__title">
                        Workshop
                    </h2>
				</div>
				<div class="page-header__content">
					<p class="page-header__text">
						달콤한 상상이 현실이 되는 실험과 창조의 공간
					</p>
				</div>
			</div>
		</header>

		<div class="store-workshop">
			<div class="store-workshop__container">
				<div class="store-workshop__content">
                    <section class="store-workshop__top">
                        <img src="${pageContext.request.contextPath}/resources/images/store/workshop/top.png" alt="Workshop by baskinrobbins">
                    </section>
                    <section class="store-workshop__list">
                        <ul>
                            <li>
                                <img src="${pageContext.request.contextPath}/resources/images/store/workshop/best.png" alt="Best & Exclusive Flavors">
                                <div class="store-workshop__text">
                                    <h3>Best & Exclusive Flavors</h3>
                                    <p>오직 워크샵에서만 만날 수 있는<br/>특별한 플레이버와 스토리</p>
                                </div>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/resources/images/store/workshop/chef.png" alt="Chef’s Made Ice Cream Cake">
                                <div class="store-workshop__text">
                                    <h3>Chef’s Made Ice Cream Cake</h3>
                                    <p>처음부터 끝까지 셰프의 손으로 완성한<br/>프리미엄 시그니처 케이크</p>
                                </div>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/resources/images/store/workshop/premium.png" alt="Premium Italian Gelato">
                                <div class="store-workshop__text">
                                    <h3>Premium Italian Gelato</h3>
                                    <p>원료를 선별하여 만든<br/>이탈리안 정통의 수제 젤라또</p>
                                </div>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/resources/images/store/workshop/barista.png" alt="Barista’s Coffee & Beverage">
                                <div class="store-workshop__text">
                                    <h3>Barista’s Coffee & Beverage</h3>
                                    <p>바리스타가 발견한 브랜딩과<br/>베리에이션 노하우</p>
                                </div>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/resources/images/store/workshop/special.png" alt="Special Curated Gift">
                                <div class="store-workshop__text">
                                    <h3>Special Curated Gift</h3>
                                    <p>받는 사람의 취향까지 담은<br/>아이스크림 디저트 기프트</p>
                                </div>
                            </li>
                        </ul>
                    </section>
                    <section class="store-workshop__docent">
                        <div class="program">
                            <h3>Ice cream 도슨트 프로그램</h3>
                            <h4>워크샵을 더 스페셜하게 즐기는 방법!</h4>
                            <p>브랜드 스토리텔러 ‘닥터’가 들려주는<br/>배스킨라빈스의 비하인드 스토리와  아이스크림 테이스팅 기회까지!</p>
                        </div>
                        <img src="${pageContext.request.contextPath}/resources/images/store/workshop/docent.png" alt="Ice cream Docent Program">
                        <div class="time">
                            <div class="hours">운영시간</div>
                            <div class="box">
                                <div>
                                    <div class="title">평일</div>
                                    <div>11:00 ~ 11:30</div>
                                    <div>15:00 ~ 15:30</div>
                                    <div>17:00 ~ 17:30</div>
                                </div>
                                <img src="${pageContext.request.contextPath}/resources/images/store/workshop/line.png">
                                <div>
                                    <div class="title">주말</div>
                                    <div>12:00 ~ 12:30</div>
                                    <div>17:00 ~ 17:30</div>
                                </div>
                            </div>
                            <a href="https://booking.naver.com/booking/6/bizes/1085740/items/5688631?theme=place&amp;area=pll" target="_blank" title="도슨트 프로그램 예약하러 가기">
                                도슨트 프로그램 예약하러 가기
                                <img src="${pageContext.request.contextPath}/resources/images/store/workshop/arrow.png">
                            </a>
                        </div>
                    </section>
                    <section class="store-workshop__map">
                        <div class="title">
                            <img src="${pageContext.request.contextPath}/resources/images/store/workshop/map_title.png" alt="Workshop by baskinrobbins">
                        </div>
                        <div class="box">
                            <h3>오시는길</h3>
                            <p>서울특별시 강남구 논현로 201 SPC2023 1층</p>
                        </div>
                        <div class="map">
                            <img src="${pageContext.request.contextPath}/resources/images/store/workshop/map.png" alt="map">
                        </div>
                        <div class="box">
                            <h3>영업시간</h3>
                            <p>평일 : 07:30 - 22:00</p>
                            <p>금요일 : 07:30 - 23:00</p>
                            <p>주말, 공휴일 : 10:00 - 23:00</p>
                        </div>
                    </section>
				</div>
			</div>
		</div>

	</div>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>

<!-- Mirrored from www.baskinrobbins.co.kr/store/workshop.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 00:53:51 GMT -->
</html>
