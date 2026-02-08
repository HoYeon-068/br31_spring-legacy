<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<c:url var="listAction" value="/information-center/press/list.do" />

<div class="site-container">
<jsp:include
		page="/WEB-INF/views/information-center/common/_customerMenu.jsp" />
	<section id="content" class="press-list board-list">

		<header class="page-header">
			<div class="page-header__container">
				<div class="page-header__content">
					<h2 class="page-header__title">보도자료</h2>
				</div>
				<div class="page-header__content">
					<p class="page-header__text">
						배스킨라빈스의 보도자료들을<br>모아 보여드립니다.
					</p>
				</div>
			</div>
		</header>

		<form action="${listAction}" method="get" class="board-search">
			<div class="board-search__inner">
				<input type="text" name="keyword" class="board-search__input"
					placeholder="검색어를 입력해주세요" value="${keyword}">
				<button type="submit" class="board-search__button"></button>
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
						<col width="80px">
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
											<td colspan="3" class="board-list__empty">게시글이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</c:when>


							<c:otherwise>
								<c:choose>
									<c:when test="${not empty list}">
										<c:forEach var="dto" items="${list}">
											<c:url var="viewUrl"
												value="/information-center/press/view.do">

												<c:param name="id" value="${dto.prID}" />
												<c:param name="page" value="${currentPage}" />
												<c:param name="keyword" value="${keyword}" />
											</c:url>

											<tr class="board-list__table-list">

												<td class="board-list__table-number">${dto.prNO}</td>
												<td class="board-list__table-title"><a
													href="${viewUrl}">${dto.title}</a></td>
												<td class="board-list__table-date">${dto.regDateText}</td>
											</tr>
										</c:forEach>
									</c:when>

									<c:otherwise>
										<tr>
											<td colspan="3" class="board-list__empty">게시글이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</c:otherwise>

						</c:choose>

					</tbody>
				</table>


				<ul class="pagination">

				</ul>

			</div>
		</div>

	</section>
</div>
