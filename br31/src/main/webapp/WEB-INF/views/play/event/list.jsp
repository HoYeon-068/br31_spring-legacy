<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
									      <fmt:formatDate value="${e.startDate}" pattern="yyyy-MM-dd" timeZone="Asia/Seoul"/>
									      ~ 소진 시 까지
									    </c:when>
									    
									    <c:otherwise>
									      <fmt:formatDate value="${e.startDate}" pattern="yyyy-MM-dd" timeZone="Asia/Seoul"/>
									      ~
									      <fmt:formatDate value="${e.endDate}" pattern="yyyy-MM-dd" timeZone="Asia/Seoul"/>
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

