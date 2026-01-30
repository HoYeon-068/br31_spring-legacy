<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    /*
      현재 요청 URI 기준으로 active 메뉴 판단
      ex) /notice/list.do, /press/view.do, /customer/list.do
    */
%>
<c:set var="uri" value="${pageContext.request.requestURI}" />

<nav class="page-menu">
    <ul class="page-menu__list">

        <li class="page-menu__item">
            <a href="${pageContext.request.contextPath}/customer/list.do"
               class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">고객센터</span>
                </div>
            </a>
        </li>

     <li class="page-menu__item">
    <a href="${pageContext.request.contextPath}/customer/ccm.do"
       class="page-menu__link">
        <div class="page-menu__box">
            <span class="page-menu__name">소비자중심경영(CCM)</span>
        </div>
    </a>
</li>


        <li class="page-menu__item">
            <a href="${pageContext.request.contextPath}/notice/list.do"
               class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">공지사항</span>
                </div>
            </a>
        </li>

        <li class="page-menu__item">
            <a href="${pageContext.request.contextPath}/press/list.do"
               class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">보도자료</span>
                </div>
            </a>
        </li>

        <li class="page-menu__item">
            <a href="${pageContext.request.contextPath}/fairtrade/list.do"
               class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">공정거래자율준수</span>
                </div>
            </a>
           
        </li>
        
  
        

    </ul>
</nav>
