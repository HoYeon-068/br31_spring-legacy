<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>배스킨라빈스 | 보도자료</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

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
            background: url(${pageContext.request.contextPath}/resources/images/information-center/btn_search.png)
                        no-repeat center center / auto 39px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">

    <jsp:include page="/WEB-INF/views/information-center/_customerMenu.jsp" />

    <section id="content" class="press-list board-list">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">보도자료</h2>
                </div>
                <div class="page-header__content">
                    <p class="page-header__text">
                        배스킨라빈스의 보도자료들을<br>
                        모아 보여드립니다.
                    </p>
                </div>
            </div>
        </header>

        <!-- 검색 -->
  <form action="${pageContext.request.contextPath}/press/list.do"
      method="get"
      class="board-search"
      onsubmit="return submitPressSearch(this);">

    <input type="hidden" name="source" value="press">

    <div class="board-search__inner">
        <input type="text"
               name="keyword"
               class="board-search__input"
               placeholder="검색어를 입력해주세요"
               value="${keyword}">
        <button type="submit" class="board-search__button"></button>
    </div>
</form>


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
    <c:when test="${not empty list}">
        <c:forEach var="dto" items="${list}">
            <tr class="board-list__table-list">
                <td class="board-list__table-number">
                    ${dto.pr_no}
                </td>
                <td class="board-list__table-title">
                    <a href="${pageContext.request.contextPath}/press/view.do?id=${dto.pr_id}">
                        ${dto.title}
                    </a>
                </td>
                <td class="board-list__table-date">
                    ${dto.reg_date}
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
<ul class="pagination">

    <!-- 이전 묶음 -->
    <li class="pagination__item pagination__item--icon pagination__item--prev
        ${startPage <= 1 ? 'pagination__item--disabled' : ''}">
        <a href="${pageContext.request.contextPath}/press/list.do?page=${startPage - blockSize}"
           class="pagination__link">
            <span class="pagination__name">이전</span>
        </a>
    </li>

    <!-- 페이지 번호 -->
    <c:forEach var="i" begin="${startPage}" end="${endPage}">
        <li class="pagination__item
            ${i == currentPage ? 'pagination__item--current' : ''}">

            <c:choose>
                <c:when test="${i == currentPage}">
                    <strong class="pagination__link">
                        <span class="pagination__name">${i}</span>
                    </strong>
                </c:when>
                <c:otherwise>
                    <a href="${pageContext.request.contextPath}/press/list.do?page=${i}"
                       class="pagination__link">
                        <span class="pagination__name">${i}</span>
                    </a>
                </c:otherwise>
            </c:choose>

        </li>
    </c:forEach>

    <!-- 다음 묶음 -->
    <li class="pagination__item pagination__item--icon pagination__item--next
        ${endPage >= totalPage ? 'pagination__item--disabled' : ''}">
        <a href="${pageContext.request.contextPath}/press/list.do?page=${endPage + 1}"
           class="pagination__link">
            <span class="pagination__name">다음</span>
        </a>
    </li>

</ul>



            </div>
        </div>

    </section>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

<script>
function submitPressSearch(form) {
    if (form.keyword.value.trim() !== "") {
        form.action = "${pageContext.request.contextPath}/search/board.do";
    }
    return true;
}
</script>


</body>
</html>
