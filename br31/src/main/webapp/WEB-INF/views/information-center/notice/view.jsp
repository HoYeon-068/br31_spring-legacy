<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="site-container">
<jsp:include
		page="/WEB-INF/views/information-center/common/_customerMenu.jsp" />

  <section id="content" class="notice-view board-view">

    <header class="page-header">
      <div class="page-header__container">
        <div class="page-header__content">
          <h2 class="page-header__title">공지사항</h2>
        </div>
      </div>
    </header>

    <article class="board-view__article">

      <header class="board-view__header">
        <h3 class="board-view__title">${dto.title}</h3>
        <p class="board-view__date">
          <fmt:formatDate value="${dto.regDate}" pattern="yyyy-MM-dd"/>
        </p>
      </header>

      <div class="board-view__container">
        <div class="board-view__content">
          <c:out value="${dto.content}" escapeXml="false"/>
        </div>
      </div>

      <p class="board-view__back">
        <c:url var="noticeListUrl" value="/information-center/notice/list.do">
          <c:param name="page" value="${page}" />
          <c:param name="keyword" value="${keyword}" />
        </c:url>
        <a href="${noticeListUrl}">목록</a>
      </p>

    </article>
  </section>
</div>
