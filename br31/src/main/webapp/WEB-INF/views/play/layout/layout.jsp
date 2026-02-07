<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
  <meta http-equiv="Pragma" content="no-cache">
  <meta name="format-detection" content="telephone=no">
  <meta name="format-detection" content="date=no">
  <meta name="format-detection" content="address=no">
  <meta name="format-detection" content="email=no">

  <title>배스킨라빈스</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

  <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
  <tiles:insertAttribute name="pageHead" ignore="true"/>
</head>

<body>

  <!-- 공통 HEADER -->
  <tiles:insertAttribute name="header" />

  <section class="site-container">

    <!-- play 공통 page-menu -->
    <c:set var="active" value="${tilesActive}" />
    <nav class="page-menu">
      <ul class="page-menu__list">

        <li class="page-menu__item ${active == 'event' ? 'page-menu__item--active' : ''}">
          <a href="${pageContext.request.contextPath}/play/event/list.do" class="page-menu__link">
            <div class="page-menu__box"><span class="page-menu__name">이벤트</span></div>
          </a>
        </li>

        <li class="page-menu__item ${active == 'plaza' ? 'page-menu__item--active' : ''}">
          <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="page-menu__link">
            <div class="page-menu__box"><span class="page-menu__name">배라광장</span></div>
          </a>
        </li>

        <li class="page-menu__item ${active == 'recipe' ? 'page-menu__item--active' : ''}">
          <a href="${pageContext.request.contextPath}/play/recipe/list.do" class="page-menu__link">
            <div class="page-menu__box"><span class="page-menu__name">BR 레시피</span></div>
          </a>
        </li>

        <li class="page-menu__item ${active == 'myflavor' ? 'page-menu__item--active' : ''}">
          <a href="${pageContext.request.contextPath}/play/myflavor/list.do" class="page-menu__link">
            <div class="page-menu__box"><span class="page-menu__name">마이플레이버 리스트</span></div>
          </a>
        </li>

      </ul>
    </nav>

    <!-- 본문 -->
    <tiles:insertAttribute name="content" />
  </section>

  <!-- 공통 FOOTER -->
  <tiles:insertAttribute name="footer" />

  <tiles:insertAttribute name="pageScript" ignore="true"/>
</body>
</html>
