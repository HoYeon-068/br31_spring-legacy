<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="/WEB-INF/views/information-center/common/header_inquiry.jsp" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/inquiry.css">

<div class="voc-page">

  <c:choose>
    <c:when test="${empty dto}">
      <div class="voc-visual">
        <div class="voc-visual__inner">
          <h2>MY <span>VOC</span></h2>
        </div>
      </div>

      <div class="voc-create">
        <p class="noData">존재하지 않거나 접근할 수 없는 문의입니다.</p>
        <div class="voc-submit voc-submit--right">
          <a href="${pageContext.request.contextPath}/information-center/inquiry/list.do" class="btn-list">목록</a>
        </div>
      </div>
    </c:when>

    <c:otherwise>
      <div class="voc-visual">
        <div class="voc-visual__inner">
          <h2>MY <span>VOC</span></h2>
        </div>
      </div>

      <div class="voc-create">
        <div class="voc-form">

          <div class="form-row">
            <div class="form-label">구분</div>
            <div class="form-field">
              <c:out value="${dto.counselType}"/>
            </div>

            <div class="form-label">분류</div>
            <div class="form-field">
              <c:out value="${dto.detailType}"/>
            </div>
          </div>

          <div class="form-row title-row">
            <div class="form-label">제목</div>
            <div class="form-field">
              <c:out value="${dto.title}"/>
            </div>
          </div>

          <div class="form-row">
            <div class="form-label">발생일시</div>
            <div class="form-field">
              <fmt:formatDate value="${dto.occurDate}" pattern="yyyy-MM-dd"/>
            </div>
          </div>

          <div class="form-row">
            <div class="form-label">처리일자</div>
            <div class="form-field">
              <span class="date-box">
                <c:if test="${not empty dto.answerDate}">
                  <fmt:formatDate value="${dto.answerDate}" pattern="yyyy-MM-dd"/>
                </c:if>
              </span>
            </div>
          </div>

          <div class="form-row">
            <div class="form-label">매장</div>
            <div class="form-field">
              <c:out value="${dto.storeName}"/>
            </div>
          </div>

          <div class="form-row">
            <div class="form-label">내용</div>
            <div class="form-field">
              <div class="voc-content">
                <c:out value="${dto.content}"/>
              </div>
            </div>
          </div>

          <div class="form-row">
            <div class="form-label">답변내용</div>
            <div class="form-field">
              <div class="voc-answer-box">
                <c:out value="${dto.answer}"/>
              </div>
            </div>
          </div>

        </div>

        <div class="voc-submit voc-submit--right">
          <a href="${pageContext.request.contextPath}/information-center/inquiry/list.do" class="btn-list">목록</a>
        </div>

      </div>
    </c:otherwise>
  </c:choose>

</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
