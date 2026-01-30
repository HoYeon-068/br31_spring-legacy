<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta property="og:url" content="${pageContext.request.contextPath}/index.jsp">
    <meta property="og:title" content="[배스킨라빈스] 이벤트">
    <meta property="og:description" content="배스킨라빈스의 이벤트 메뉴입니다.">
    <meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
    <meta property="og:type" content="website">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>

<body id="baskinrobbins-play-event-list" class="baskinrobbins-play-event-list">

<div class="skipnav">
    <a href="#content">본문 영역으로 바로가기</a>
</div>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<!-- CONTENT -->
<section class="site-container">

    <!-- 상단 페이지 메뉴 -->
   <nav class="page-menu">
        <ul class="page-menu__list">
            <li class="page-menu__item page-menu__item--active">
                <a href="${pageContext.request.contextPath}/play/event/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">이벤트</span></div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">배라광장</span></div>
                </a>
            </li>
            <li class="page-menu__item">
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

    <!-- 실제 컨텐츠 -->
    <div id="content" class="event-list">

        <!-- 페이지 헤더 -->
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">Event</h2>
                </div>
                <div class="page-header__content">
                    <p class="page-header__text">
                        배스킨라빈스와 함께 해피포인트앱/오프라인 매장에서 진행하는<br>
                        다양한 이벤트를 확인해보세요
                    </p>
                </div>
            </div>
        </header>

        <!-- 탭 -->
		<c:set var="cat" value="${param.category}" />
		
		<nav class="page-tab">
		  <ul class="page-tab__list">
		
		    <li class="page-tab__item ${empty cat ? 'page-tab__item--active' : ''}">
		      <a href="list.do" class="page-tab__link">
		        <span class="page-tab__text">전체</span>
		      </a>
		    </li>
		
		    <li class="page-tab__item ${cat == '1' ? 'page-tab__item--active' : ''}">
		      <a href="list.do?category=1" class="page-tab__link">
		        <span class="page-tab__text">프로모션</span>
		      </a>
		    </li>
		
		    <li class="page-tab__item ${cat == '2' ? 'page-tab__item--active' : ''}">
		      <a href="list.do?category=2" class="page-tab__link">
		        <span class="page-tab__text">제휴혜택</span>
		      </a>
		    </li>
		
		  </ul>
		</nav>

        <!-- 이벤트 리스트 -->
            <div>
            <div class="event-list-list card-list">
				<ul class="event-list-list__list card-list__list">
				    <c:forEach var="e" items="${list}">
				        <li class="card-list__item
				            <c:choose>
				                <c:when test="${e.evtCategoryId == 1}">
				                    event-list-list__item--promotion
				                </c:when>
				                <c:otherwise>
				                    event-list-list__item--benefits
				                </c:otherwise>
				            </c:choose>
				        ">
				            <a href="view.do?seq=${e.eventId}&category=${e.evtCategoryId}" class="card-list__link">
				                <div class="card-list__box">
				                    <img
				                        src="${pageContext.request.contextPath}${e.imgPath}"
				                        alt="${e.title}"
				                        class="event-list-list__image">
				
				                    <c:if test="${not empty e.endDate and e.dday >= 0}">
									  <p class="event-list-list__count">D-${e.dday}</p>
									</c:if>

				                </div>
				
				                <div class="card-list__content">
				                    <h3 class="event-list-list__title">
				                        <span class="event-list-list__category">
				                            <c:choose>
				                                <c:when test="${e.evtCategoryId == 1}">프로모션</c:when>
				                                <c:otherwise>제휴혜택</c:otherwise>
				                            </c:choose>
				                        </span>
				                        ${e.title}
				                    </h3>
				
				                    <p class="event-list-list__date">
									  <c:choose>
									    <c:when test="${empty e.startDate and empty e.endDate}">
									      상시 운영
									    </c:when>
									
									    <c:when test="${not empty e.startDate and empty e.endDate}">
									      ${e.startDate} ~ 소진 시 까지
									    </c:when>
									
									    <c:otherwise>
									      ${e.startDate} ~ ${e.endDate}
									    </c:otherwise>
									  </c:choose>
									</p>

				                </div>
				            </a>
				        </li>
				    </c:forEach>
				</ul>     
            </div>
        </div>

    </div>
</section>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
