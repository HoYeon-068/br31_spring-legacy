<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/story.css" />

<div class="site-container">
  <nav class="page-menu">
    <ul class="page-menu__list">
      <li class="page-menu__item">
        <a href="${pageContext.request.contextPath}/story/story.do" class="page-menu__link">
          <div class="page-menu__box"><span class="page-menu__name">브랜드 스토리</span></div>
        </a>
      </li>
      <li class="page-menu__item">
        <a href="${pageContext.request.contextPath}/story/history.do" class="page-menu__link">
          <div class="page-menu__box"><span class="page-menu__name">이달의 맛 히스토리</span></div>
        </a>
      </li>
      <li class="page-menu__item page-menu__item--active">
        <a href="${pageContext.request.contextPath}/story/be-better.do" class="page-menu__link">
          <div class="page-menu__box"><span class="page-menu__name">Be Better</span></div>
        </a>
      </li>
    </ul>
  </nav>

  <section id="content" class="story-be-better">
    <header class="page-header">
      <div class="page-header__container">
        <div class="page-header__content">
          <h2 class="page-header__title">Be Better</h2>
        </div>
        <div class="page-header__content">
          <p class="page-header__text">배라가 사회와 함께 하는 방법,<br>가치 있는 같이</p>
        </div>
      </div>
    </header>

    <div class="story-be-better-list">
      <div class="story-be-better-list__container">
        <ul class="story-be-better-list__list">

 <c:forEach var="c" items="${campaignList}">
  <li class="story-be-better-list__item story-be-better-list__item--dream">

    <!-- 1) 스위치 -->
    <input type="checkbox" id="modal${c.campaignId}" class="modal-toggle" />

    <!-- 2) 카드 -->
    <div class="story-be-better-list__wrapper">
      <div class="story-be-better-list__frame">
        <img src="${pageContext.request.contextPath}${c.campaignImgPath}"
             alt="${c.campaignName}" class="story-be-better-list__image">
      </div>

      <div class="story-be-better-list__box">
        <h3 class="story-be-better-list__title">${c.campaignName}</h3>

        <div class="story-be-better-list__inner">
          <p class="story-be-better-list__text">${c.campaignSubtitle}</p>

          <!--  label 클릭 가능하게 버튼처럼 -->
          <label for="modal${c.campaignId}" class="story-be-better-list__link btn-open">
            더보기
          </label>
			          
        </div>

        <p class="story-be-better-list__description">${c.campaignDescription}</p>
        <pre class="story-be-better-list__content">${c.campaignSummary}</pre>
      </div>
    </div>

    <!-- 3) 모달 -->
    <div class="modal-wrap">
  <label for="modal${c.campaignId}" class="modal-dim"></label>

  <div class="modal-box" role="dialog" aria-modal="true">
    <label for="modal${c.campaignId}" class="modal-close">×</label>

    <!-- 상단 제목 -->
    <h2 class="modal-top-title">
      ‘${c.campaignName}’
    </h2>
    <hr class="modal-line"/>

    <div class="modal-grid">
      <c:set var="hasItem" value="false" />

      <c:forEach var="it" items="${campaignInfoAll}">
        <c:if test="${it.campaignId == c.campaignId}">
          <c:set var="hasItem" value="true" />

          <div class="modal-card">
            <!-- 왼쪽 이미지 -->
            <div class="modal-card__img">
              <img
                src="${pageContext.request.contextPath}${it.campaignActivityImgPath}"
                alt="${it.campaignActivityTitle}">
            </div>

            <!-- 오른쪽 텍스트 -->
            <div class="modal-card__txt">
              <div class="modal-card__ym">${it.campaignActivityYm}</div>
              <div class="modal-card__title">${it.campaignActivityTitle}</div>
              <div class="modal-card__desc">${it.campaignActivityDescription}</div>
            </div>
          </div>

        </c:if>
      </c:forEach>

      <c:if test="${hasItem == false}">
        <div class="modal-empty">상세 내용이 없습니다.</div>
      </c:if>
    </div>

  </div>
</div>

  </li>
</c:forEach>



        </ul>
      </div>
    </div>

  </section>
</div>

