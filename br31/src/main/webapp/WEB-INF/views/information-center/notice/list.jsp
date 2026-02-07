<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
.board-search {
	margin: 60px auto 40px;
	max-width: 720px;
	width: 100%;
}

.board-search__inner {
	position: relative;
	border-bottom: 2px solid #000;
}

.board-search__input {
	width: 100%;
	border: none;
	outline: none;
	font-size: 16px;
	padding: 10px 44px 10px 0;
	background: transparent;
	text-align: center;
}

.board-search__input::placeholder {
	color: #aaa;
	text-align: center;
}

.board-search__button {
	position: absolute;
	top: 50%;
	right: 0;
	width: 39px;
	height: 39px;
	transform: translateY(-50%);
	border: none;
	background:
		url(${pageContext.request.contextPath}/resources/images/information-center/btn_search.png)
		no-repeat center center/auto 39px;
	cursor: pointer;
}
</style>

<div class="site-container">


	<jsp:include
		page="/WEB-INF/views/information-center/common/_customerMenu.jsp" />

	<section id="content" class="notice-list board-list">

		<header class="page-header">
			<div class="page-header__container">
				<div class="page-header__content">
					<h2 class="page-header__title">공지사항</h2>
				</div>
				<div class="page-header__content">
					<p class="page-header__text">
						배스킨라빈스의 신제품 안내, 신규 CF 등<br> 다양한 소식을 알려드립니다.
					</p>
				</div>
			</div>
		</header>

		<form action="<c:url value='/information-center/notice/list.do'/>"
			method="get" class="board-search">
			<div class="board-search__inner">
				<input type="text" name="keyword" class="board-search__input"
					placeholder="검색어를 입력해주세요" value="${keyword}">
				<button type="submit" class="board-search__button"
					style="background-image:url(<c:url value='/resources/images/information-center/btn_search.png'/>);">
				</button>
			</div>
		</form>

		<div class="board-list__content">
			<div class="board-list__table-wrap">

				<p class="board-list__total">
					총 <strong>${totalCount}</strong>건
				</p>

				<table class="board-list__table">
					<colgroup>
						<col width="66px">
						<col>
						<col width="110px">
					</colgroup>
					<tbody>

						<c:choose>

							<c:when test="${isSearch eq true}">
								<c:choose>
									<c:when test="${not empty searchList}">
										<c:forEach var="dto" items="${searchList}">
											<tr class="board-list__table-list">
												<td class="board-list__table-number">${dto.id}</td>
												<td class="board-list__table-title"><a
													href="${dto.viewUrl}">${dto.title}</a></td>
												<td class="board-list__table-date">${dto.regDate}</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="3" style="padding: 40px; text-align: center;">
												게시글이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</c:when>


							<c:otherwise>
								<c:choose>
									<c:when test="${not empty list}">
										<c:forEach var="dto" items="${list}">
											<c:url var="viewUrl"
												value="/information-center/notice/view.do">
												<c:param name="id" value="${dto.noticeID}" />
												<c:param name="page" value="${currentPage}" />
												<c:param name="keyword" value="${keyword}" />
											</c:url>

											<tr class="board-list__table-list">
												<td class="board-list__table-number">${dto.noticeNO}</td>
												<td class="board-list__table-title"><a
													href="${viewUrl}">${dto.title}</a></td>
												<td class="board-list__table-date"><fmt:formatDate
														value="${dto.regDate}" pattern="yyyy-MM-dd" /></td>
											</tr>

										</c:forEach>
									</c:when>

									<c:otherwise>
										<tr>
											<td colspan="3" style="padding: 40px; text-align: center;">
												게시글이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>

					</tbody>
				</table>


				<ul class="pagination">
					<li
						class="pagination__item pagination__item--icon pagination__item--prev
              ${prevBlockPage == null ? 'pagination__item--disabled' : ''}">
						<c:choose>
							<c:when test="${prevBlockPage == null}">
								<a href="javascript:void(0);" class="pagination__link"> <span
									class="pagination__name">이전</span>
								</a>
							</c:when>
							<c:otherwise>
								<c:url var="prevBlockUrl"
									value="/information-center/notice/list.do">
									<c:param name="page" value="${prevBlockPage}" />
									<c:param name="keyword" value="${keyword}" />
								</c:url>
								<a href="${prevBlockUrl}" class="pagination__link"> <span
									class="pagination__name">이전</span>
								</a>
							</c:otherwise>
						</c:choose>
					</li>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<li
							class="pagination__item ${i == currentPage ? 'pagination__item--current' : ''}">
							<c:choose>
								<c:when test="${i == currentPage}">
									<strong class="pagination__link"> <span
										class="pagination__name">${i}</span>
									</strong>
								</c:when>
								<c:otherwise>
									<c:url var="pageUrl" value="/information-center/notice/list.do">
										<c:param name="page" value="${i}" />
										<c:param name="keyword" value="${keyword}" />
									</c:url>
									<a href="${pageUrl}" class="pagination__link"> <span
										class="pagination__name">${i}</span>
									</a>
								</c:otherwise>
							</c:choose>
						</li>
					</c:forEach>

					<li
						class="pagination__item pagination__item--icon pagination__item--next
              ${nextBlockPage == null ? 'pagination__item--disabled' : ''}">
						<c:choose>
							<c:when test="${nextBlockPage == null}">
								<a href="javascript:void(0);" class="pagination__link"> <span
									class="pagination__name">다음</span>
								</a>
							</c:when>
							<c:otherwise>
								<c:url var="nextBlockUrl"
									value="/information-center/notice/list.do">
									<c:param name="page" value="${nextBlockPage}" />
									<c:param name="keyword" value="${keyword}" />
								</c:url>
								<a href="${nextBlockUrl}" class="pagination__link"> <span
									class="pagination__name">다음</span>
								</a>
							</c:otherwise>
						</c:choose>
					</li>
				</ul>

			</div>
		</div>

	</section>
</div>
