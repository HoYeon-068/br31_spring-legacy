<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>배스킨라빈스 | 공지사항</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

    <style>
        .board-view__content img {
            display: block;
            margin: 0 auto;
        }
    </style>
</head>

<body id="baskinrobbins-notice" class="baskinrobbins-notice">

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">

    <section id="content" class="notice-list board-view">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">공지사항</h2>
                </div>
            </div>
        </header>

        <article class="board-view__article">

            <!-- 제목 / 날짜 -->
            <header class="board-view__header">
                <h3 class="board-view__title">${dto.title}</h3>
                <p class="board-view__date">${dto.regDate}</p>
            </header>

            <div class="board-view__container">
                <div class="board-view__content">
                    <c:out value="${dto.content}" escapeXml="false"/>
                </div>
            </div>

            <p class="board-view__back">
               <c:url var="noticeListUrl" value="/information-center/notice/list.do" />
<a href="${noticeListUrl}">목록</a>

            </p>

        </article>

    </section>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
