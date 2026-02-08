<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.faq-list__item {
  position: relative;
  overflow: visible;
}


.faq-list__answer {
  overflow: hidden;
  max-height: 0;
  margin-top: 16px;
  line-height: 1.6;
  transition: max-height 0.35s ease;
}

.page-tab__item {
  border: 1px solid #e5e5e5;
  background: #f9f9f9;
}

.page-tab__link {
  color: #aaa;
  font-weight: 400;
}


.page-tab__item--active {
  background: #fff;
  border-bottom: 2px solid #000;
}

.page-tab__item--active .page-tab__link {
  color: #000;
  font-weight: 600;
}

.pagination {
  display: flex;
  justify-content: center;
  margin-top: 40px;
  gap: 8px;
}

.pagination__item {
  width: 36px;
  height: 36px;
  border-radius: 50%;
  border: 1px solid #e5e5e5;
  display: flex;
  align-items: center;
  justify-content: center;
}

.pagination__link {
  color: #666;
  font-size: 14px;
}

.pagination__item--current {
  background: #ff5fa2;
  border-color: #ff5fa2;
}

.pagination__item--current .pagination__link {
  color: #fff;
  font-weight: 600;
}


.pagination__item--icon {
  border: none;
}

.pagination__item--prev .pagination__link::before {
  content: "‹";
}

.pagination__item--next .pagination__link::before {
  content: "›";
}

.pagination__item--disabled {
  opacity: 0.3;
  pointer-events: none;
}
</style>
<c:set var="categoryId" value="${empty param.category ? 0 : param.category}" />
<div class="site-container">
<jsp:include
		page="/WEB-INF/views/information-center/common/_customerMenu.jsp" />
<section id="content" class="faq-list">

  <header class="page-header">
    <div class="page-header__container">
      <div class="page-header__content">
        <h2 class="page-header__title">자주하는 질문</h2>
      </div>
      <div class="page-header__content">
        <p class="page-header__text">
          고객의 소리를 적극 경청하고 고객만족향상 활동을<br> 지속적으로 실천합니다.
        </p>
      </div>
    </div>
  </header>

  <nav class="page-tab">
    <ul class="page-tab__list">
      <li class="page-tab__item ${categoryId == 0 ? 'page-tab__item--active' : ''}">
        <c:url var="tab0" value="/information-center/faq/list.do">
          <c:param name="category" value="0"/>
        </c:url>
        <a href="${tab0}" class="page-tab__link">전체</a>
      </li>

      <li class="page-tab__item ${categoryId == 1 ? 'page-tab__item--active' : ''}">
        <c:url var="tab1" value="/information-center/faq/list.do">
          <c:param name="category" value="1"/>
        </c:url>
        <a href="${tab1}" class="page-tab__link">제품</a>
      </li>

      <li class="page-tab__item ${categoryId == 2 ? 'page-tab__item--active' : ''}">
        <c:url var="tab2" value="/information-center/faq/list.do">
          <c:param name="category" value="2"/>
        </c:url>
        <a href="${tab2}" class="page-tab__link">포인트</a>
      </li>

      <li class="page-tab__item ${categoryId == 3 ? 'page-tab__item--active' : ''}">
        <c:url var="tab3" value="/information-center/faq/list.do">
          <c:param name="category" value="3"/>
        </c:url>
        <a href="${tab3}" class="page-tab__link">회원</a>
      </li>

      <li class="page-tab__item ${categoryId == 4 ? 'page-tab__item--active' : ''}">
        <c:url var="tab4" value="/information-center/faq/list.do">
          <c:param name="category" value="4"/>
        </c:url>
        <a href="${tab4}" class="page-tab__link">기타</a>
      </li>
    </ul>
  </nav>

  <section class="faq-list__container">
    <div class="faq-list__content">
      <ul class="faq-list__list">
        <c:forEach var="dto" items="${list}">
          <li class="faq-list__item">
            <button type="button" class="faq-list__title">${dto.question}</button>
            <div class="faq-list__answer">
              <p><c:out value="${dto.answer}" escapeXml="false"/></p>
            </div>
          </li>
        </c:forEach>
      </ul>
    </div>

    <ul class="pagination">

      <li class="pagination__item pagination__item--icon pagination__item--prev ${prevBlockPage == null ? 'pagination__item--disabled' : ''}">
        <c:choose>
          <c:when test="${prevBlockPage == null}">
            <a class="pagination__link" href="javascript:void(0);"><span class="pagination__name">이전</span></a>
          </c:when>
          <c:otherwise>
            <c:url var="prevUrl" value="/information-center/faq/list.do">
              <c:param name="category" value="${categoryId}"/>
              <c:param name="page" value="${prevBlockPage}"/>
            </c:url>
            <a class="pagination__link" href="${prevUrl}"><span class="pagination__name">이전</span></a>
          </c:otherwise>
        </c:choose>
      </li>

      <c:forEach var="i" begin="${startPage}" end="${endPage}">
        <li class="pagination__item ${i == currentPage ? 'pagination__item--current' : ''}">
          <c:choose>
            <c:when test="${i == currentPage}">
              <strong class="pagination__link"><span class="pagination__name">${i}</span></strong>
            </c:when>
            <c:otherwise>
              <c:url var="pageUrl" value="/information-center/faq/list.do">
                <c:param name="category" value="${categoryId}"/>
                <c:param name="page" value="${i}"/>
              </c:url>
              <a class="pagination__link" href="${pageUrl}">
                <span class="pagination__name">${i}</span>
              </a>
            </c:otherwise>
          </c:choose>
        </li>
      </c:forEach>

      <li class="pagination__item pagination__item--icon pagination__item--next ${nextBlockPage == null ? 'pagination__item--disabled' : ''}">
        <c:choose>
          <c:when test="${nextBlockPage == null}">
            <a class="pagination__link" href="javascript:void(0);"><span class="pagination__name">다음</span></a>
          </c:when>
          <c:otherwise>
            <c:url var="nextUrl" value="/information-center/faq/list.do">
              <c:param name="category" value="${categoryId}"/>
              <c:param name="page" value="${nextBlockPage}"/>
            </c:url>
            <a class="pagination__link" href="${nextUrl}"><span class="pagination__name">다음</span></a>
          </c:otherwise>
        </c:choose>
      </li>

    </ul>
  </section>

</section>
</div>
<script type="text/javascript">
document.addEventListener("DOMContentLoaded", () => {
	  document.querySelectorAll(".faq-list__title").forEach(btn => {
	    btn.addEventListener("click", function () {
	      const currentItem = this.closest(".faq-list__item");
	      const currentAnswer = currentItem.querySelector(".faq-list__answer");

	      document.querySelectorAll(".faq-list__item").forEach(item => {
	        if (item !== currentItem) {
	          item.classList.remove("is-open");
	          const answer = item.querySelector(".faq-list__answer");
	          answer.style.maxHeight = null;
	        }
	      });

	      if (currentItem.classList.contains("is-open")) {
	        currentItem.classList.remove("is-open");
	        currentAnswer.style.maxHeight = null;
	      } else {
	        currentItem.classList.add("is-open");
	        currentAnswer.style.maxHeight = currentAnswer.scrollHeight + "px";
	      }
	    });
	  });
	});

</script>
