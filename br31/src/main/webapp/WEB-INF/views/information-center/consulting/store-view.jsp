<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.baskinrobbins.co.kr/information-center/consulting/store-view.php?seq=14&findword=&page=2 by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 01:00:33 GMT -->
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


<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/sdk1659.js?appkey=8c71dfbb0129b7e25a985c72328e967b"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">


<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>



</head>
<body id="baskinrobbins-information-center-consulting-store-view" class="baskinrobbins-information-center-consulting-store-view">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">
    <nav class="page-menu">
        <ul class="page-menu__list">
            <!--            현재 페이지인 경우 page-menu__item--active 추가-->
            <li class="page-menu__item">
                <a href="../store-offer/offer.html" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">신규 직영점 입점제의</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item page-menu__item--active">
                <a href="br.html" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">점포개설문의</span>
                    </div>
                </a>
            </li>
        </ul>
    </nav>

    <div id="content" class="consulting-store-view">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        점포개설문의
                    </h2>
                </div>

                <div class="page-header__content">
                    <p class="page-header__text">
                        30년 넘게 사랑받아온 배스킨라빈스의 브랜드 파워와<br>
                        노하우로 안정적인 창업 기회를 제공합니다.
                    </p>
                </div>
            </div>
        </header>

        <nav class="page-tab">
            <ul class="page-tab__list">
                <!-- 현재 페이지인 경우 page-tab__item--active 추가 -->
                <li class="page-tab__item">
                    <a href="br.html" class="page-tab__link">
                        <span class="page-tab__text">BR시스템</span>
                    </a>
                </li>
                <li class="page-tab__item">
                    <a href="process.html" class="page-tab__link">
                        <span class="page-tab__text">창업절차</span>
                    </a>
                </li>
                <li class="page-tab__item">
                    <a href="condition.html" class="page-tab__link">
                        <span class="page-tab__text">창업조건</span>
                    </a>
                </li>
                <li class="page-tab__item">
                    <a href="counsel.html" class="page-tab__link">
                        <span class="page-tab__text">상담안내</span>
                    </a>
                </li>
                <li class="page-tab__item page-tab__item--active">
                    <a href="store-list.html" class="page-tab__link">
                        <span class="page-tab__text">신규후보매장</span>
                    </a>
                </li>
                <li class="page-tab__item">
                    <a href="faq.html" class="page-tab__link">
                        <span class="page-tab__text">창업FAQ</span>
                    </a>
                </li>
            </ul>
        </nav>

        <section class="consulting-store-view__container">
            <div class="consulting-store-view__content">
                <h3>
                    신규후보매장
                </h3>

                <p>
                    자세한 문의 사항은 지역별 담당자에게 연락주시기 바랍니다.
                </p>

                <table>
                    <tbody>
                    <tr>
                        <th>담당자</th>
                        <td>${dto.currentBusiness}</td>
                        <th>연락처</th>
                        <td>수정예정</td>
                    </tr>
                    <tr>
                        <th>지역상세</th>
                        <td>${dto.sido} ${dto.sigungu}</td>
                        <th>현재 업종</th>
                        <td>-</td>
                    </tr>
                    <tr>
                        <th>상권 &amp; 입지</th>
                        <td colspan="3">${dto.marketArea}</td>
                    </tr>
                    <tr>
                        <th>해당 층</th>
                        <td>${dto.floor}</td>
                        <th>면적</th>
                        <td>${dto.area}</td>
                    </tr>
                    <tr>
                        <th>지도</th>
                        <td colspan="3">
                                                            <!-- 지도 api -->
                                <input type="hidden" value="${dto.latitude}" class="lat">
                                <input type="hidden" value="${dto.longitude}" class="lng">
                                
                                <div class="map_p" style="width:100%; height:400px;"></div>
                                                                                    </td>
                               
                                                                        
                    </tr>
                    <tr>
                        <th>권리금</th>
                        <td>${dto.keyMoney}</td>
                        <th>보증금</th>
                        <td>${dto.deposit}</td>
                    </tr>
                    <tr>
                        <th>임대료</th>
                        <td colspan="3">${dto.rentalFee}</td>
                    </tr>
                    <tr>
                        <th>설명</th>
                        <td colspan="3">
                            ${dto.description}</td>
                    </tr>
                    </tbody>
                </table>
                <div class="pagination">
                <c:choose>
    <c:when test="${empty nextNum}">
        <a href="#none" onclick="alert('이전 데이터가 없습니다')">
                                    
                                            <span>이전</span>
                                            </a>
        
    </c:when>
    <c:otherwise>
        <a href="${pageContext.request.contextPath}/information-center/consulting/store-view.do?findword=${param.findword}&seq=${nextNum}">
                                            <span>이전</span>
        </a>
    </c:otherwise>
</c:choose>
                
                
                                        

                    <a href="${pageContext.request.contextPath}/information-center/consulting/store-list.do?findword=${param.findword}">목록</a>
                    
  <c:choose>
    <c:when test="${empty prevNum}">
        <a href="#none" onclick="alert('다음 데이터가 없습니다')">
                                            <span>다음</span>
        </a>
    </c:when>
    <c:otherwise>
        <a href="${pageContext.request.contextPath}/information-center/consulting/store-view.do?findword=${param.findword}&seq=${prevNum}">
                        <span>다음</span>
                    </a>
    </c:otherwise>
</c:choose>                  
                    
                    
                    
                                        
                                    </div>
            </div>
        </section>
    </div>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>

<script type="text/javascript">
    // window.kakao.maps.load()를 통해 API가 완전히 로드된 후 실행되도록 보장합니다.
    window.onload = function() {
        if (typeof kakao !== 'undefined' && kakao.maps) {
            kakao.maps.load(function() {
                var latVal = parseFloat(document.querySelector('.lat').value);
                var lngVal = parseFloat(document.querySelector('.lng').value);

                // 1. 지도를 담을 영역
                var mapContainer = document.querySelector('.map_p'); 
                
                // 2. 지도 옵션 설정
                var mapOption = { 
                    center: new kakao.maps.LatLng(latVal, lngVal), 
                    level: 3 
                };

                // 3. 지도 생성
                var map = new kakao.maps.Map(mapContainer, mapOption); 

                // 4. 마커 생성
                var markerPosition  = new kakao.maps.LatLng(latVal, lngVal); 
                var marker = new kakao.maps.Marker({
                    position: markerPosition
                });

                // 5. 마커 표시
                marker.setMap(map);

                // 6. (중요) 지도가 작게 나오거나 깨질 경우를 대비해 크기 재조정
                map.relayout();
                map.setCenter(new kakao.maps.LatLng(latVal, lngVal));
            });
        } else {
            console.error("Kakao Maps SDK가 로드되지 않았습니다. appkey를 확인하세요.");
        }
    };
</script>
<!-- Mirrored from www.baskinrobbins.co.kr/information-center/consulting/store-view.php?seq=14&findword=&page=2 by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 01:00:34 GMT -->
</html>
