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

<body id="baskinrobbins-fairtrade" class="baskinrobbins-fairtrade">

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">

    <%-- 고객센터 메뉴 include로 통일 가능 --%>

    <section id="content" class="press-list board-view">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">공정거래자율준수</h2>
                </div>
            </div>
        </header>

        <article class="board-view__article">
            <header class="board-view__header">
                <h3 class="board-view__title">${dto.title}</h3>
                <p class="board-view__date">
                    <fmt:formatDate value="${dto.regDate}" pattern="yyyy.MM.dd"/>
                </p>
            </header>

            <div class="board-view__container">
                <div class="board-view__content">
                    <c:out value="${dto.content}" escapeXml="false"/>
                </div>
            </div>

            <p class="board-view__back">
                <a href="${pageContext.request.contextPath}/information-center/fairtrade/list.do">목록</a>
            </p>
        </article>

    </section>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
