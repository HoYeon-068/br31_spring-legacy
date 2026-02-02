<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="uri" value="${pageContext.request.requestURI}" />

<%-- active 판정: EL contains 금지. indexOf로만 처리(안정) --%>
<c:set var="isCustomer"  value="${uri.indexOf('/information-center/customer')  >= 0}" />
<c:set var="isCcm"       value="${uri.indexOf('/information-center/customer/ccm') >= 0}" />
<c:set var="isNotice"    value="${uri.indexOf('/information-center/notice')    >= 0}" />
<c:set var="isPress"     value="${uri.indexOf('/information-center/press')     >= 0}" />
<c:set var="isFairtrade" value="${uri.indexOf('/information-center/fairtrade') >= 0}" />

<nav class="page-menu">
  <ul class="page-menu__list">

    <li class="page-menu__item ${isCustomer && !isCcm ? 'page-menu__item--active' : ''}">
      <a href="<c:url value='/information-center/customer/list.do'/>" class="page-menu__link">
        <div class="page-menu__box"><span class="page-menu__name">고객센터</span></div>
      </a>
    </li>

    <li class="page-menu__item ${isCcm ? 'page-menu__item--active' : ''}">
      <a href="<c:url value='/information-center/customer/ccm.do'/>" class="page-menu__link">
        <div class="page-menu__box"><span class="page-menu__name">소비자중심경영(CCM)</span></div>
      </a>
    </li>

    <li class="page-menu__item ${isNotice ? 'page-menu__item--active' : ''}">
      <a href="<c:url value='/information-center/notice/list.do'/>" class="page-menu__link">
        <div class="page-menu__box"><span class="page-menu__name">공지사항</span></div>
      </a>
    </li>

    <li class="page-menu__item ${isPress ? 'page-menu__item--active' : ''}">
      <a href="<c:url value='/information-center/press/list.do'/>" class="page-menu__link">
        <div class="page-menu__box"><span class="page-menu__name">보도자료</span></div>
      </a>
    </li>

    <li class="page-menu__item ${isFairtrade ? 'page-menu__item--active' : ''}">
      <a href="<c:url value='/information-center/fairtrade/list.do'/>" class="page-menu__link">
        <div class="page-menu__box"><span class="page-menu__name">공정거래자율준수</span></div>
      </a>
    </li>

  </ul>
</nav>
