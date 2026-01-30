<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html lang="ko"><head>
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
<meta property="og:title" content="[배스킨라빈스] 브랜드 스토리">
<meta property="og:description" content="배스킨라빈스의 브랜드 스토리를 확인해보세요.">
<meta property="og:image" content="https://www.baskinrobbins.co.kr${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">


<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

<style>
/* 홀수: 왼쪽 원형 */
.story-story__item:nth-child(odd) .story-story__title,
.story-story__item:nth-child(odd) .story-story__description{
  padding-right: 0;
}

/* 짝수: 오른쪽 원형 */
.story-story__item:nth-child(even) .story-story__title,
.story-story__item:nth-child(even) .story-story__description{
  padding-left: 0;
  padding-right: 300px;
}

.story-story__visual{
  max-width: 500px;   /* 기존보다 조금 줄이기 (예: 520 → 420) */
}

</style>

</head>
<body id="baskinrobbins-story-story" class="baskinrobbins-story-story" data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">
    <nav class="page-menu">
    <ul class="page-menu__list">
        <!--            현재 페이지인 경우 page-menu__item--active 추가-->
        <li class="page-menu__item page-menu__item--active">
            <a href="${pageContext.request.contextPath}/story/story.do" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">브랜드 스토리</span>
                </div>
            </a>
        </li>        
        <li class="page-menu__item ">
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
    <section id="content" class="story-story">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        Brand Story
                    </h2>
                </div>

                <div class="page-header__content">
                    <p class="page-header__text">
                        우리와 함께한 배라의 이야기
                    </p>
                </div>
            </div>
        </header>

 <div class="story-story__container">
  <div class="story-story__list">
    <c:forEach var="s" items="${storyList}" varStatus="st">

      <article class="story-story__item story-story__item--${st.index + 1}">

        <!-- 제목 -->
        <h3 class="story-story__title story-story__title--${st.index + 1} aos-init"
            data-aos="fade-up">
          ${s.story_title}
        </h3>

        <!-- 설명: DB에 줄바꿈(\n) 있으면 그대로 보이게 -->
        <p class="story-story__description aos-init"
           data-aos="fade-up"
           data-aos-delay="100"
           style="white-space:pre-line;">
          ${s.story_description}
        </p>

        <!-- YEAR + (로고스토리/아이콘은 네 원본 구조에 맞춰 유지) -->
        <div class="story-story__logo-story">
          <p class="story-story__logo-story--year">
            <span>YEAR</span> ${s.story_year}
          </p>

          <!-- 1번만 버튼/aside가 있었던 구조를 “원하면” 조건으로 유지 -->
          <c:choose>
            <c:when test="${st.first}">
              <button type="button" class="story-story__logo-story--logo">
                <span>LOGO STORY</span>
              </button>

              <aside class="story-story__logo-story--content">
                <h4 class="story-story__logo-story--title">LOGO STORY</h4>
                <p class="story-story__logo-story--description">
                  배스킨라빈스는 ‘매일매일 다른 맛을 보여주고 싶다’는 일념 아래<br>
                  아이스크림 종류는 31가지에 이르게 됩니다.<br>
                  이를 모토 삼아 기존 로고에 31이라는 숫자가 부여됐으며 모든 점포에는<br>
				  계절에 맞춘 31가지 풍미의 아이스크림이 갖춰지기 시작했습니다.<br>
				  31이란 숫자는 브랜드 로고에도 들어가는데 ‘B’와 ‘R’에 각각<br>
				  ‘3’과 ‘1’을 찾아볼 수 있습니다.
                </p>
                <button type="button" class="story-story__logo-story--close"></button>
              </aside>
            </c:when>

            <c:otherwise>
			  <span class="story-story__logo-story--logo">
			  </span>
			</c:otherwise>
          </c:choose>
        </div>

        <!-- 이미지(로고/스토리 이미지 경로) -->
        <div class="story-story__visual">
		  <img
		    src="${pageContext.request.contextPath}${s.story_img_path}"
		    alt="${s.story_title}"
		    class="story-story__image aos-init"
		    data-aos="fade-up"
		    data-aos-delay="200"
		    data-aos-anchor=".story-story__title--${st.index + 1}">
		</div>

      </article>

    </c:forEach>
  </div>
</div>

    </section>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />


<img src="https://t.co/1/i/adsct?bci=4&amp;dv=Etc%2FGMT-9%26ko-KR%2Cko%2Cen-US%2Cen%26Google%20Inc.%26Win32%26255%261920%261080%2624%2624%261920%261032%260%26na&amp;eci=3&amp;event=%7B%7D&amp;event_id=bad8a9ae-7b7a-4a20-a34a-0ba15a4df430&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=1daf11a8-c4d4-4813-a59f-3febb576d5b0&amp;pt=%EB%B0%B0%EC%8A%A4%ED%82%A8%EB%9D%BC%EB%B9%88%EC%8A%A4&amp;tw_document_href=https%3A%2F%2Fwww.baskinrobbins.co.kr%2Fstory%2Fstory.php&amp;tw_iframe_status=0&amp;txn_id=ogfh2&amp;type=javascript&amp;version=2.3.35" height="1" width="1" style="display: none;"><img src="https://analytics.twitter.com/1/i/adsct?bci=4&amp;dv=Etc%2FGMT-9%26ko-KR%2Cko%2Cen-US%2Cen%26Google%20Inc.%26Win32%26255%261920%261080%2624%2624%261920%261032%260%26na&amp;eci=3&amp;event=%7B%7D&amp;event_id=bad8a9ae-7b7a-4a20-a34a-0ba15a4df430&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=1daf11a8-c4d4-4813-a59f-3febb576d5b0&amp;pt=%EB%B0%B0%EC%8A%A4%ED%82%A8%EB%9D%BC%EB%B9%88%EC%8A%A4&amp;tw_document_href=https%3A%2F%2Fwww.baskinrobbins.co.kr%2Fstory%2Fstory.php&amp;tw_iframe_status=0&amp;txn_id=ogfh2&amp;type=javascript&amp;version=2.3.35" height="1" width="1" style="display: none;"></body></html>