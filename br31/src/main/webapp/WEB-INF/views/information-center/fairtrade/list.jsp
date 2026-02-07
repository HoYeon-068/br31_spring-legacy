<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="site-container">
<section id="content" class="fairtrade-list board-list">

  <header class="page-header">
    <div class="page-header__container">
      <div class="page-header__content">
        <h2 class="page-header__title">공정거래자율준수</h2>
      </div>
      <div class="page-header__content">
        <p class="page-header__text">공정거래자율준수 관련 자료입니다.</p>
      </div>
    </div>
  </header>

  <div class="board-list__content">

    <form action="<c:url value='/information-center/fairtrade/list.do'/>"
          method="get"
          class="board-list__search">
      <fieldset>
        <legend>공정거래자율준수 검색</legend>
        <div class="board-list__search-content">
          <input type="text"
                 name="keyword"
                 placeholder="검색어를 입력해주세요"
                 value="${keyword}">
          <button type="submit">
            <span class="site-search__text">검색</span>
          </button>
        </div>
      </fieldset>
    </form>

    <div class="board-list__table-wrap">

      <c:if test="${not empty totalCount}">
        <p class="board-list__total">
          총 <strong>${totalCount}</strong>건
        </p>
      </c:if>

      <table class="board-list__table">
        <colgroup>
          <col width="66px">
          <col>
          <col width="80px">
        </colgroup>
        <tbody>
          <c:choose>
            <c:when test="${not empty list}">
              <c:forEach var="dto" items="${list}">
<c:url var="viewUrl" value="/information-center/fairtrade/view.do">
  <c:param name="id" value="${dto.noticeID}" />
</c:url>

                <tr class="board-list__table-list">
                  <td class="board-list__table-number">${dto.noticeNO}</td>
                  <td class="board-list__table-title">
                    <a href="${viewUrl}">${dto.title}</a>
                  </td>
                  <td class="board-list__table-date">
                    <fmt:formatDate value="${dto.regDate}" pattern="yyyy.MM.dd" />
                  </td>
                </tr>
              </c:forEach>
            </c:when>
            <c:otherwise>
              <tr>
                <td colspan="3" style="padding:40px; text-align:center;">
                  게시글이 없습니다.
                </td>
              </tr>
            </c:otherwise>
          </c:choose>
        </tbody>
      </table>

      <div style="text-align: center; margin-top: 40px;">
        <a href="https://www.brkoreacompliance.com/" target="_blank" rel="noopener noreferrer">
          <img src="${pageContext.request.contextPath}/resources/images/upload/fairtrade/fairtrade_btn.png"
               alt="CP 홈페이지 바로가기">
        </a>
      </div>

    </div>
  </div>

</section>
</div>
