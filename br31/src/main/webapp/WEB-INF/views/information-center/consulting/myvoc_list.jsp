<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="/WEB-INF/views/layout/header_inquiry.jsp" />

<link rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/inquiry.css">
      

<div class="voc-page">

<div class="voc-visual">
    <div class="voc-visual__inner voc-visual--flex">
        <h2>MY <span>VOC</span></h2>

        <a href="${pageContext.request.contextPath}/inquiry/list.do"
           class="voc-btn">
        </a>
    </div>
</div>


    <div class="voc-search">
        <form>
            <label>접수일</label>
            <input type="text">
            <span>~</span>
            <input type="text">
            <button type="submit">검색</button>
        </form>
    </div>

    <table class="voc-table">
        <thead>
            <tr>
                <th>접수일</th>
                <th>발생일시</th>
                <th>구분</th>
                <th>분류</th>
                <th>제목</th>
                <th>상태</th>
            </tr>
        </thead>
      <tbody>
<c:choose>
    <c:when test="${empty list}">
        <tr>
            <td colspan="6" class="noData">
                등록된 VOC가 없습니다.
            </td>
        </tr>
    </c:when>

    <c:otherwise>
        <c:forEach var="dto" items="${list}">
            <tr>
                <td>
                    <fmt:formatDate value="${dto.regDate}" pattern="yyyy-MM-dd"/>
                </td>
                <td>
                    <fmt:formatDate value="${dto.occurDate}" pattern="yyyy-MM-dd"/>
                </td>
                <td>${dto.counselType}</td>
                <td>${dto.detailType}</td>
                <td class="title">
                    <a href="${pageContext.request.contextPath}/inquiry/view.do?inquiry_id=${dto.inquiryId}">
                        ${dto.title}
                    </a>
                </td>
                <td>
    <c:choose>
        <c:when test="${empty dto.answer}">
            등록중
        </c:when>
        <c:otherwise>
            답변완료
        </c:otherwise>
    </c:choose>
</td>

            </tr>
        </c:forEach>
    </c:otherwise>
</c:choose>
</tbody>

    </table>

</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
