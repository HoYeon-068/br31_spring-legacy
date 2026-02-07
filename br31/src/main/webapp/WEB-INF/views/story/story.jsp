<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/story.css" />

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
          ${s.storyTitle}
        </h3>

        <!-- 설명: DB에 줄바꿈(\n) 있으면 그대로 보이게 -->
        <p class="story-story__description aos-init"
           data-aos="fade-up"
           data-aos-delay="100"
           style="white-space:pre-line;">
          ${s.storyDescription}
        </p>

        <!-- YEAR  -->
        <div class="story-story__logo-story">
          <p class="story-story__logo-story--year">
            <span>YEAR</span> ${s.storyYear}
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
		    src="${pageContext.request.contextPath}${s.storyImgPath}"
		    alt="${s.storyTitle}"
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


