<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html lang="ko"><head>
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
<body id="baskinrobbins-mypage" class="baskinrobbins-mypage">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<section class="site-container">
    <div id="content" class="mypage">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        MY PAGE
                    </h2>
                </div>
            </div>
        </header>

        <div class="mypage__container">
            <div class="mypage__content">
                <div class="mypage-info">
                    <div class="mypage-info__box">
                        <div class="mypage-info__content">
                            <div class="mypage-info__frame">
                                <c:choose>
								  <c:when test="${not empty loginUser.profile_img_path}">
								    <img src="${pageContext.request.contextPath}${loginUser.profile_img_path}" alt="" class="mypage-info__image">
								  </c:when>
								  <c:otherwise>
								    <img src="${pageContext.request.contextPath}/resources/images/mypage/img_profile_1.png" alt="" class="mypage-info__image">
								  </c:otherwise>
								</c:choose>
                            </div>

                            <a class="mypage-info__button"   href="${pageContext.request.contextPath}/mypage/profileEditForm.do">
							  프로필 수정
							</a>
                        </div>

                        <div class="mypage-info__content">
                            <p class="mypage-info__text mypage-info__text--big">${loginUser.name}님!</p>
                            <p class="mypage-info__text mypage-info__text--big">반갑습니다!</p>
                        </div>
                    </div>
                    <div class="mypage-info__content">
                        <a href="https://www.happypointcard.com/page/presentation/membership.spc" target="_blank" class="mypage-info__link">해피포인트 등급/혜택안내</a>
                    </div>
                </div>

                <div class="mypage__box">
                    <h3 class="mypage__title">참여 마이플레이버리스트 내역 <strong class="mypage__point">0</strong>건 입니다.</h3>

                    <div class="mypage-myflavor">
                                            <!-- 마이플레이버리스트 없을 때 -->
                        <div class="mypage-not">
                            <div class="mypage-not__container">
                                <p class="mypage-not__text">참여하신 마이플레이버리스트가 없습니다.</p>
                                <a href="/play/myflavor/list.php" class="mypage-not__link">
                                    <span class="mypage-not__link-text">마이플레이 리스트 참여하기</span>
                                </a>
                            </div>
                        </div>
                                        </div>
                </div>

                <div class="mypage__box">
                    <h3 class="mypage__title">작성 배라광장 내역 <strong class="mypage__point">0</strong>건 입니다.</h3>

                    <div class="mypage-plaza">
                                            <!-- 작성 배라광장 없을 때 -->
                        <div class="mypage-not">
                            <div class="mypage-not__container">
                                <p class="mypage-not__text">참여하신 배라광장이 없습니다.</p>
                                <a href="/play/plaza/list.php" class="mypage-not__link">
                                    <span class="mypage-not__link-text">배라광장 참여하기</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
<img src="https://t.co/1/i/adsct?bci=4&amp;dv=Etc%2FGMT-9%26ko-KR%2Cko%2Cen-US%2Cen%26Google%20Inc.%26Win32%26255%261920%261080%2624%2624%261920%261032%260%26na&amp;eci=3&amp;event=%7B%7D&amp;event_id=2bfc840c-fdd0-4185-a093-1f1d41c77555&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=a5169865-0bfd-47db-952f-e611280fcf90&amp;pt=%EB%B0%B0%EC%8A%A4%ED%82%A8%EB%9D%BC%EB%B9%88%EC%8A%A4&amp;tw_document_href=https%3A%2F%2Fwww.baskinrobbins.co.kr%2Fmypage%2Fmain.php&amp;tw_iframe_status=0&amp;txn_id=ogfh2&amp;type=javascript&amp;version=2.3.35" height="1" width="1" style="display: none;"><img src="https://analytics.twitter.com/1/i/adsct?bci=4&amp;dv=Etc%2FGMT-9%26ko-KR%2Cko%2Cen-US%2Cen%26Google%20Inc.%26Win32%26255%261920%261080%2624%2624%261920%261032%260%26na&amp;eci=3&amp;event=%7B%7D&amp;event_id=2bfc840c-fdd0-4185-a093-1f1d41c77555&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=a5169865-0bfd-47db-952f-e611280fcf90&amp;pt=%EB%B0%B0%EC%8A%A4%ED%82%A8%EB%9D%BC%EB%B9%88%EC%8A%A4&amp;tw_document_href=https%3A%2F%2Fwww.baskinrobbins.co.kr%2Fmypage%2Fmain.php&amp;tw_iframe_status=0&amp;txn_id=ogfh2&amp;type=javascript&amp;version=2.3.35" height="1" width="1" style="display: none;"></body></html>