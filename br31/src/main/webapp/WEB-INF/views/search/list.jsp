<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>배스킨라빈스 | 검색</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/app.css">

<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

<style>
/* ===== 검색 결과 그리드 ===== */
.search-product-list {
	display: grid;
	grid-template-columns: repeat(5, 1fr);
	gap: 30px;
	justify-items: stretch;
}

.menu-list__item {
	display: block;
	width: 100%;
	min-width: 0;
}

/* ===== 카드 링크 (hover 기준) ===== */
.menu-list__link {
	position: relative;
	height: 220px;
}

/* hover 시 배경색 변경 */
.menu-list__link:hover {
	background: var(- -menu-list-color);
}

/* ===== 상품 이미지 ===== */
.menu-list__image {
	position: absolute;
	left: 50%;
	bottom: -20px;
	transform: translateX(-50%);
	max-width: 85%;
}

/* hover 시 이미지 내려오기 */
.menu-list__link:hover .menu-list__image {
	transform: translateX(-50%) translateY(40px);
}

.menu-list__title {
	display: block !important;
	width: 100% !important;
	max-width: 100% !important;
	min-width: 0 !important;
	box-sizing: border-box;
	margin-top: 20px;
	padding: 0 20px;
	font-size: 17px;
	font-weight: 600;
	line-height: 1.6;
	color: #999;
	text-align: center;
	font-family: var(- -font-family-ko);
	height: 3.2em;
	overflow: hidden;
	white-space: normal;
	word-break: keep-all;
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

				<!-- ✅ 검색 폼: 상품검색 컨트롤러 매핑으로 변경 -->
				<form action="${pageContext.request.contextPath}/search/list.do"
					method="get" class="search-form">

					<div class="search-form__container">
						<label class="search-form__label"> <input type="text"
							class="search-form__input" name="keyword" value="${keyword}"
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
						<strong class="search-result__point"> <c:out
								value="${keyword}" />
						</strong> 검색결과 총 <strong>${totalCount}</strong>건
					</p>
				</div>

				<!-- ✅ 카테고리 탭: keyword 인코딩 + URL 매핑 변경 -->
				<c:url var="urlAll" value="/search/list.do">
					<c:param name="keyword" value="${keyword}" />
				</c:url>

				<nav class="page-tab">
					<ul class="page-tab__list">

						<li
							class="page-tab__item <c:if test='${empty categoryId and empty param.categoryId}'>page-tab__item--active</c:if>">
							<a href="${urlAll}" class="page-tab__link"> <span
								class="page-tab__text">전체</span>
						</a>
						</li>

						<c:forEach var="cid" begin="1" end="6">
							<c:url var="urlCat" value="/search/list.do">
								<c:param name="keyword" value="${keyword}" />
								<c:param name="categoryId" value="${cid}" />
							</c:url>

							<li
								class="page-tab__item <c:if test='${categoryId == cid or param.categoryId == cid}'>page-tab__item--active</c:if>">
								<a href="${urlCat}" class="page-tab__link"> <span
									class="page-tab__text"> <c:choose>
											<c:when test="${cid == 1}">아이스크림</c:when>
											<c:when test="${cid == 2}">프리팩</c:when>
											<c:when test="${cid == 3}">아이스크림 케이크</c:when>
											<c:when test="${cid == 4}">디저트</c:when>
											<c:when test="${cid == 5}">음료</c:when>
											<c:when test="${cid == 6}">커피</c:when>
										</c:choose>
								</span>
							</a>
							</li>
						</c:forEach>

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
										<!-- ✅ 상세 링크는 네 프로젝트 실제 매핑에 맞게 유지/수정 --> <a
										href="${pageContext.request.contextPath}/menu/view.do?seq=${dto.productsId}"
										class="menu-list__link"> <img
											src="${pageContext.request.contextPath}${dto.imgPath}"
											alt="${dto.productName}" class="menu-list__image"
											onerror="this.onerror=null; this.src='${pageContext.request.contextPath}/resources/images/no-image.png';">
									</a> <strong class="menu-list__title"> ${dto.productName}
									</strong>

									</li>
								</c:forEach>

							</ul>
						</c:when>

						<c:otherwise>
							<div style="padding: 40px; text-align: center;">검색 결과가
								없습니다.</div>
						</c:otherwise>
					</c:choose>

				</article>

			</div>
		</section>

	</div>

	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
