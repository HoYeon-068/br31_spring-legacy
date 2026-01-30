<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>배스킨라빈스 | 공정거래자율준수</title>

   
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
     <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>

<body id="baskinrobbins-fairtrade"
      class="baskinrobbins-fairtrade">

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">

 
    <nav class="page-menu">
        <ul class="page-menu__list">
            <li class="page-menu__item">
                <a href="../customer/list.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">고객센터</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="../customer/ccm.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">소비자중심경영(CCM)</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="../notice/list.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">공지사항</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="../press/list.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">보도자료</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item page-menu__item--active">
                <a href="list.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">공정거래자율준수</span>
                    </div>
                </a>
            </li>
        </ul>
    </nav>

 
    <section id="content" class="press-list board-list">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">공정거래자율준수</h2>
                </div>
                <div class="page-header__content">
                    <p class="page-header__text">
                        공정거래자율준수 관련 자료입니다.
                    </p>
                </div>
            </div>
        </header>

        <div class="board-list__content">

         
            <form action="list.do" method="get" class="board-list__search">
                <fieldset>
                    <legend>공정거래자율준수 검색</legend>
                    <div class="board-list__search-content">
                        <input type="text" name="findword" placeholder="검색어를 입력해주세요">
                        <button type="submit">
                            <span class="site-search__text">검색</span>
                        </button>
                    </div>
                </fieldset>
            </form>

          
            <div class="board-list__table-wrap">
         

                <table class="board-list__table">
                    <colgroup>
                        <col width="66px">
                        <col>
                        <col width="80px">
                    </colgroup>
                    <tbody>

                     <c:forEach var="dto" items="${list}">
<tr class="board-list__table-list">
    <td class="board-list__table-number">
        ${dto.noticeNo}
    </td>
    <td class="board-list__table-title">
        <a href="${pageContext.request.contextPath}/fairtrade/view.do?noticeId=${dto.noticeId}">

            ${dto.title}
        </a>
    </td>
    <td class="board-list__table-date">
        <fmt:formatDate value="${dto.regDate}" pattern="yyyy.MM.dd"/>
    </td>
</tr>
</c:forEach>

                    </tbody>
                </table>
            </div>

            <!-- 하단 배너 (프론트 단계에서는 그대로 유지) -->
            <div style="text-align:center; margin-top:40px;">
                <a href="https://www.brkoreacompliance.com/" target="_blank">
                   <img
    src="${pageContext.request.contextPath}/resources/images/upload/fairtrade/fairtrade_btn.png"
    alt="CP 홈페이지 바로가기">

                </a>
            </div>

        </div>
    </section>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
