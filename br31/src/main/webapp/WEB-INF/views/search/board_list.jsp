<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    cursor: pointer;
    background: url("../../images/information-center/btn_search.png")
                no-repeat center center / auto 39px;
}



.board-list__table {
    width: 100%;
    table-layout: fixed;
}

.board-list__table-number,
.board-list__table-date {
    white-space: nowrap;
}

.board-list__table-title {
    overflow: hidden;
}

.board-list__table-title a {
    display: block;
    max-width: 100%;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    word-break: break-word;
    overflow-wrap: anywhere;
}

.board-list__empty {
    padding: 40px;
    text-align: center;
} 


</style>
<div class="site-container">

<section id="content"
         class="board-list ${param.source eq 'press' ? 'press-list' : 'notice-list'}">

    <header class="page-header">
        <div class="page-header__container">

            <!-- 타이틀 -->
            <div class="page-header__content">
                <h2 class="page-header__title">
                    <c:choose>
                        <c:when test="${param.source eq 'press'}">보도자료</c:when>
                        <c:otherwise>공지사항</c:otherwise>
                    </c:choose>
                </h2>
            </div>

            <!-- 설명 -->
            <div class="page-header__content">
                <p class="page-header__text">
                    <c:choose>
                        <c:when test="${param.source eq 'press'}">
                            배스킨라빈스의 보도자료들을<br>
                            모아 보여드립니다.
                        </c:when>
                        <c:otherwise>
                            배스킨라빈스의 신제품 안내, 신규 CF 등<br>
                            다양한 소식을 알려드립니다!
                        </c:otherwise>
                    </c:choose>
                </p>
            </div>

        </div>
    </header>

    <!-- 검색 폼 -->
    <form action="${pageContext.request.contextPath}/search/board.do"
      method="get"
      class="board-search">

    <input type="hidden" name="source" value="${param.source}">

    <div class="board-search__inner">
        <input type="text"
               name="keyword"
               class="board-search__input"
               placeholder="검색어를 입력해주세요"
               value="${keyword}">
        <button type="submit" class="board-search__button"></button>
    </div>
</form>

    <!-- 검색 결과 -->
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
                    <c:when test="${not empty searchList}">
        <c:forEach var="dto" items="${searchList}">
  <tr class="board-list__table-list">

    <td class="board-list__table-number">${dto.no}</td>

    <td class="board-list__table-title">
      <a href="${dto.viewUrl}">
        ${dto.title}
      </a>
    </td>

    <td class="board-list__table-date">${dto.regDate}</td>

  </tr>
</c:forEach>

                    </c:when>

                    <c:otherwise>
                        <tr>
                            <td colspan="3" class="board-list__empty">
                                검색 결과가 없습니다.
                            </td>
                        </tr>
                    </c:otherwise>
                </c:choose>

                </tbody>
            </table>

        </div>
    </div>

</section>

</div>
