<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


    <!-- 본문 -->
    <div id="content" class="event-view event-view--play">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">Event</h2>

                    <div class="event-view__header">
                        <p class="event-view__category">${dto.categoryName}</p>

                        <h3 class="event-view__title">
                            ${dto.title}
                        </h3>

                        <p class="event-view__time">
                            <p class="event-view__time">
							  <c:choose>
							    <c:when test="${empty dto.startDate and empty dto.endDate}">
							      상시 운영
							    </c:when>
							
							    <c:when test="${not empty dto.startDate and empty dto.endDate}">
							      <fmt:formatDate value="${dto.startDate}" pattern="yyyy-MM-dd" timeZone="Asia/Seoul"/>
							      ~ 소진 시 까지
							    </c:when>
							
							    <c:otherwise>
							      <fmt:formatDate value="${dto.startDate}" pattern="yyyy-MM-dd" timeZone="Asia/Seoul"/>
							      ~
							      <fmt:formatDate value="${dto.endDate}" pattern="yyyy-MM-dd" timeZone="Asia/Seoul"/>
							    </c:otherwise>
							  </c:choose>
							</p>

                        </p>
                    </div>
                </div>
            </div>
        </header>

        <!-- 상세 내용 1 (상세 이미지) <--></-->
        <div class="event-view__content">
            <c:if test="${not empty dto.eventDetailImg}">
                <p style="text-align: center;">
                    <img alt="${dto.title}" src="${pageContext.request.contextPath}${dto.eventDetailImg}" />
                </p>
            </c:if>
        </div>

        <!-- 상세 내용 2 (유의사항) -->
       <c:if test="${not empty dto.noticeTitle or not empty dto.noticeContent}">
		  <div class="event-view__content">
		    <c:if test="${not empty dto.noticeTitle}">
		      <p><strong>${dto.noticeTitle}</strong></p>
		    </c:if>
		
		    <c:if test="${not empty dto.noticeContent}">
		      <div>
		        <c:out value="${dto.noticeContent}" escapeXml="false"/>
		      </div>
		    </c:if>
		  </div>
		</c:if>


        <!-- 행사 매장 보기 / 행사 제외 매장 보기 -->
        <c:if test="${hasStoreButton}">
            <div class="event-view__controll">
                <div class="event-view__inner">

                    <button type="button"
                            class="event-view__button event-view__button--round find-store-button">
                        <c:choose>
                            <c:when test="${dto.storeScope == 'EXCLUDE'}">행사 제외 매장 보기</c:when>
                            <c:otherwise>행사 매장 보기</c:otherwise>
                        </c:choose>
                    </button>

                    <div class="find-store">
                        <div class="find-store__container">
                            <div class="find-store__content">

                                <h4 class="find-store__title">
                                    <c:choose>
                                        <c:when test="${dto.storeScope == 'EXCLUDE'}">행사 제외 매장 보기</c:when>
                                        <c:otherwise>행사 매장 보기</c:otherwise>
                                    </c:choose>
                                </h4>

                                <div class="find-store__box">
                                    <ul class="find-store__list">
                                        <c:forEach var="s" items="${storeList}">
                                            <li class="find-store__item">${s}</li>
                                        </c:forEach>

                                        <li class="find-store__item find-store__item--no-data" style="display:none;">
                                            찾으시는 매장이 없습니다
                                        </li>
                                    </ul>
                                </div>

                                <div class="find-store__search">
                                    <input type="text" placeholder="찾으시는 매장명을 입력하세요" class="find-store__input">
                                    <button type="button" class="find-store__search-button">
                                        <span class="find-store__hidden">검색</span>
                                    </button>
                                </div>

                                <button type="button" class="find-store__close-button">
                                	<span class="material-symbols-outlined">close</span>
                                    <span class="find-store__hidden">닫기</span>
                                </button>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </c:if>

        <!-- 목록 버튼 -->
        <div class="event-view__box">
            <a href="list.do" class="event-view__button event-view__button--black">목록</a>
        </div>
	
	<c:if test="${not empty ongoingList}">
	<article class="event-view-list">
	    <h3 class="event-view-list__title">진행중인 이벤트</h3>
	
	    <ul class="event-view-list__list">
	        <c:forEach var="e" items="${ongoingList}">
	            <li class="event-view-list__item">
	                <a href="view.do?seq=${e.eventId}&category=${e.evtCategoryId}" class="event-view-list__link">
	                    <div class="event-view-list__frame">
	                        <img
	                            src="${pageContext.request.contextPath}${e.imgPath}"
	                            alt="${e.title}"
	                            class="event-view-list__image"
	                        />
	
	                        <c:if test="${not empty e.endDate && e.dday >= 0}">
							  <p class="event-view-list__count">D-${e.dday}</p>
							</c:if>
	                    </div>
	
	                    <div class="event-view-list__content">
	                        <p class="event-view-list__category">
	                            <c:choose>
	                                <c:when test="${e.evtCategoryId == 1}">프로모션</c:when>
	                                <c:otherwise>제휴혜택</c:otherwise>
	                            </c:choose>
	                        </p>
	
	                        <p class="event-view-list__name">${e.title}</p>
	
	                        <p class="event-view-list__time">
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
	</article>
	</c:if>
	
    </div>
    
    <script>
    (function() {
        const $popup = document.querySelector('.find-store');
        const $btn = document.querySelector('.find-store-button');
        const $close = document.querySelector('.find-store__close-button');
        const $input = document.querySelector('.find-store__input');
        const $noData = document.querySelector('.find-store__item--no-data');

        // 매장 아이템(검색 대상) - no-data 제외
        const $items = Array.from(document.querySelectorAll('.find-store__list .find-store__item'))
            .filter(el => !el.classList.contains('find-store__item--no-data'));

        function openPopup() {
            if ($popup) $popup.style.display = 'block';
        }

        function resetPopup() {
            if ($input) $input.value = '';
            $items.forEach(el => el.style.display = '');
            if ($noData) $noData.style.display = 'none';
        }

        function closePopup() {
            if ($popup) $popup.style.display = 'none';
            resetPopup();
        }

        if ($btn) $btn.addEventListener('click', openPopup);
        if ($close) $close.addEventListener('click', closePopup);

        if ($input) {
            $input.addEventListener('input', function() {
                const keyword = ($input.value || '').toLowerCase().trim();
                let found = false;

                $items.forEach(el => {
                    const text = (el.textContent || '').toLowerCase();
                    const show = keyword === '' || text.includes(keyword);
                    el.style.display = show ? '' : 'none';
                    if (show) found = true;
                });

                if ($noData) $noData.style.display = found ? 'none' : '';
            });
        }

        // 바깥 클릭 시 닫기
        document.addEventListener('click', function(e) {
            if (!$popup || $popup.style.display !== 'block') return;

            const insidePopup = $popup.contains(e.target);
            const isButton = $btn && ($btn === e.target || $btn.contains(e.target));

            if (!insidePopup && !isButton) {
                closePopup();
            }
        });

        // 초기 상태
        closePopup();
    })();
</script>
