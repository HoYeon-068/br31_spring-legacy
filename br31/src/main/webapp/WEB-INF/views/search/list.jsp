<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>배스킨라빈스 | 검색</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

    
  <style>
/* ===== 검색 결과 그리드 ===== */
.search-product-list {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 30px;
}

.menu-list__item{
    display: block;
}


/* ===== 카드 링크 (hover 기준) ===== */
.menu-list__link {
    position: relative;
    height: 220px;
}


/* hover 시 배경색 변경 */
.menu-list__link:hover {
    background: var(--menu-list-color);
}

/* ===== 해시태그 ===== */
.menu-list__hash {
    position: absolute;
    top: 18px;
    left: 0;
    right: 0;

    margin: 0 auto;
    width: 160px;

    text-align: center;

    color: #fff;
    font-size: 12px;
    font-weight: 600;
    line-height: 1.4;

    word-break: keep-all;
    white-space: normal;

    opacity: 0;
    transition: opacity 0.25s ease;
}



/* hover 시 해시태그 표시 */
.menu-list__link:hover .menu-list__hash {
    opacity: 1;
}

/* ===== 상품 이미지 ===== */
.menu-list__image {
    position: absolute;
    left: 50%;
    bottom: -20px;   /* 기존 -30px → 완화 */
    transform: translateX(-50%);
    max-width: 85%;
}


/* hover 시 이미지 내려오기 */
.menu-list__link:hover .menu-list__image {
    transform: translateX(-50%) translateY(40px);
}



.menu-list__title{
    display: block !important;
    min-width: 100%;
    box-sizing: border-box;

    margin-top: 20px;
    padding: 0 20px;

    font-size: 17px;
    font-weight: 600;
    line-height: 1.6;
    color: #999;
    text-align: center;
    font-family: var(--font-family-ko);

    height: 3.2em;
    overflow: hidden;

    white-space: normal;
    word-break: keep-all;
}

/* grid 아이템을 '늘려서(stretch)' 쓰게 강제 */
.search-product-list { justify-items: stretch; }

/* grid item(li) 자체 폭을 칸 전체로 강제 */
.search-product-list > .menu-list__item { width: 100%; min-width: 0; }

/* 제목도 칸 전체 폭으로 강제 (최우선 적용) */
.search-product-list > .menu-list__item > .menu-list__title {
  width: 100% !important;
  max-width: 100% !important;
  min-width: 0 !important;
}




</style>

</head>

<body id="baskinrobbins-search" class="baskinrobbins-search">

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">

<section id="content" class="search">

    <!-- 제목 -->
    <header class="page-header">
        <div class="page-header__container">
            <div class="page-header__content">
                <h2 class="page-header__title">검색</h2>
            </div>
        </div>
    </header>

    <div class="search__container">

        <!-- 검색 폼 -->
        <form action="${pageContext.request.contextPath}/search/list.do"
              method="get"
              class="search-form">

            <div class="search-form__container">
                <label class="search-form__label">
                    <input type="text"
                           class="search-form__input"
                           name="keyword"
                           value="${keyword}"
                           placeholder="제품명을 입력하세요">

                    <button type="submit"
                            class="search-form__button search-form__button--search">
                        <span class="search-form__text">검색</span>
                    </button>
                </label>
            </div>
        </form>

        <!-- 검색 결과 요약 -->
        <div class="search-result">
            <p class="search-result__title">
                <strong class="search-result__point">
                    <c:out value="${keyword}" />
                </strong>
                검색결과 총
                <strong>${totalCount}</strong>건
            </p>
        </div>
        
        <!-- 카테고리 버튼 -->
<!-- 카테고리 탭 -->
<nav class="page-tab">
    <ul class="page-tab__list">

        <li class="page-tab__item <c:if test='${empty param.categoryId}'>page-tab__item--active</c:if>">
            <a href="${pageContext.request.contextPath}/search/list.do?keyword=${keyword}"
               class="page-tab__link">
                <span class="page-tab__text">전체</span>
            </a>
        </li>

        <li class="page-tab__item <c:if test='${param.categoryId eq "1"}'>page-tab__item--active</c:if>">
            <a href="${pageContext.request.contextPath}/search/list.do?keyword=${keyword}&categoryId=1"
               class="page-tab__link">
                <span class="page-tab__text">아이스크림</span>
            </a>
        </li>

        <li class="page-tab__item <c:if test='${param.categoryId eq "2"}'>page-tab__item--active</c:if>">
            <a href="${pageContext.request.contextPath}/search/list.do?keyword=${keyword}&categoryId=2"
               class="page-tab__link">
                <span class="page-tab__text">프리팩</span>
            </a>
        </li>

        <li class="page-tab__item <c:if test='${param.categoryId eq "3"}'>page-tab__item--active</c:if>">
            <a href="${pageContext.request.contextPath}/search/list.do?keyword=${keyword}&categoryId=3"
               class="page-tab__link">
                <span class="page-tab__text">아이스크림 케이크</span>
            </a>
        </li>

        <li class="page-tab__item <c:if test='${param.categoryId eq "4"}'>page-tab__item--active</c:if>">
            <a href="${pageContext.request.contextPath}/search/list.do?keyword=${keyword}&categoryId=4"
               class="page-tab__link">
                <span class="page-tab__text">디저트</span>
            </a>
        </li>

        <li class="page-tab__item <c:if test='${param.categoryId eq "5"}'>page-tab__item--active</c:if>">
            <a href="${pageContext.request.contextPath}/search/list.do?keyword=${keyword}&categoryId=5"
               class="page-tab__link">
                <span class="page-tab__text">음료</span>
            </a>
        </li>

        <li class="page-tab__item <c:if test='${param.categoryId eq "6"}'>page-tab__item--active</c:if>">
            <a href="${pageContext.request.contextPath}/search/list.do?keyword=${keyword}&categoryId=6"
               class="page-tab__link">
                <span class="page-tab__text">커피</span>
            </a>
        </li>

    </ul>
</nav>



        

   <!-- 검색 결과 -->
<article class="search__content">

    <c:choose>
        <c:when test="${not empty list}">
            <ul class="search-product-list">

                <c:forEach var="dto" items="${list}">
                    <li class="menu-list__item"
                        style="--menu-list-color: ${dto.bgColor};">

                        <a href="${pageContext.request.contextPath}/menu/view.do?seq=${dto.productsId}"
                           class="menu-list__link">

                            <span class="menu-list__hash">
                                ${dto.tags}
                            </span>

                            <img src="${pageContext.request.contextPath}${dto.imgPath}"
                                 alt="${dto.productName}"
                                 class="menu-list__image"
                                 onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/images/no-image.png';">

                        </a>

                        <strong class="menu-list__title">
                            ${dto.productName}
                        </strong>

                    </li>
                </c:forEach>

            </ul>
        </c:when>

        <c:otherwise>
            <div style="padding:40px; text-align:center;">
                검색 결과가 없습니다.
            </div>
        </c:otherwise>
    </c:choose>

</article>


    </div>
</section>

</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
