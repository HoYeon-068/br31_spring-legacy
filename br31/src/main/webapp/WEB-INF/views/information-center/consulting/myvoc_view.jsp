<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="/WEB-INF/views/layout/header_inquiry.jsp" />

<link rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/inquiry.css">

<div class="voc-page">

<c:if test="${not empty dto}">

    <div class="voc-visual">
        <div class="voc-visual__inner">
            <h2>MY <span>VOC</span></h2>
        </div>
    </div>

    <div class="voc-create">
        <div class="voc-form">

            <!-- 구분 / 분류 -->
            <div class="form-row">
                <div class="form-label">구분</div>
                <div class="form-field">${dto.counselType}</div>

                <div class="form-label">분류</div>
                <div class="form-field">${dto.detailType}</div>
            </div>

            <!-- 제목 -->
            <div class="form-row title-row">
                <div class="form-label">제목</div>
                <div class="form-field">${dto.title}</div>
            </div>

            <!-- 발생일시 + 처리일자 -->
           <!-- 발생일시 -->
<div class="form-row">
    <div class="form-label">발생일시</div>
    <div class="form-field">
        <fmt:formatDate value="${dto.occurDate}" pattern="yyyy-MM-dd"/>
    </div>
</div>

<!-- 처리일자 -->
<div class="form-row">
    <div class="form-label">처리일자</div>
    <div class="form-field">
        <span class="date-box">
            <c:choose>
                <c:when test="${empty dto.answerDate}">
                  
                </c:when>
                <c:otherwise>
                    <fmt:formatDate value="${dto.answerDate}" pattern="yyyy-MM-dd"/>
                </c:otherwise>
            </c:choose>
        </span>
    </div>
</div>



            <!-- 매장 (발생일시 바로 아래) -->
            <div class="form-row">
                <div class="form-label">매장</div>
                <div class="form-field">
                    <c:choose>
                        <c:when test="${empty dto.storeName}">
                            
                        </c:when>
                        <c:otherwise>
                            ${dto.storeName}
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <!-- 내용 -->
            <div class="form-row">
                <div class="form-label">내용</div>
                <div class="form-field">
                    <div class="voc-content">
                        <c:out value="${dto.content}" escapeXml="false"/>
                    </div>
                </div>
            </div>

            <!-- 답변내용 -->
            <div class="form-row">
                <div class="form-label">답변내용</div>
                <div class="form-field">
                    <div class="voc-answer-box">
                        <c:choose>
                            <c:when test="${empty dto.answer}">
                            </c:when>
                            <c:otherwise>
                                <c:out value="${dto.answer}" escapeXml="false"/>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

        </div>

        <!-- 목록 버튼 -->
        <div class="voc-submit voc-submit--right">
            <a href="${pageContext.request.contextPath}/inquiry/list.do"
               class="btn-list">목록</a>
        </div>
    </div>

</c:if>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
