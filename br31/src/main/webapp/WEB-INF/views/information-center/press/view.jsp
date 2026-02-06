<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="site-container">
<section id="content" class="press-view board-view">

  <header class="page-header">
    <div class="page-header__container">
      <div class="page-header__content">
        <h2 class="page-header__title">보도자료</h2>
      </div>
    </div>
  </header>

  <article class="board-view__article">

    <header class="board-view__header">
      <h3 class="board-view__title">${dto.title}</h3>
      <p class="board-view__date">${dto.regDateText}</p>
    </header>

    <div class="board-view__container">
      <div class="board-view__content">
        ${dto.content}
      </div>
    </div>

    <c:url var="listUrl" value="/information-center/press/list.do">
      <c:param name="page" value="${page}" />
      <c:param name="keyword" value="${keyword}" />
    </c:url>

    <p class="board-view__back">
      <a href="${listUrl}">목록</a>
    </p>

  </article>
</section>
</div>
