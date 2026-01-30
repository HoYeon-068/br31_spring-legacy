<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${empty dto}">
  <div class="alert alert-danger">존재하지 않는 글입니다.</div>
</c:if>

<c:if test="${not empty dto}">
  <div class="container-fluid">

    <div class="d-flex justify-content-between align-items-center mb-3">
      <h3 class="fw-bold mb-0">배라광장 글 상세</h3>

      <a class="btn btn-outline-secondary btn-sm"
         href="${pageContext.request.contextPath}/admin/plaza/list.do?category=ALL">목록</a>
    </div>

    <div class="card shadow-sm mb-3">
      <div class="card-body">

        <div class="d-flex justify-content-between align-items-start">
          <div>
            <h4 class="fw-bold mb-2">${dto.title}</h4>
            <div class="text-muted small">
              글번호: ${dto.plazaId} /
              작성자: ${dto.name} /
              카테고리:
              <c:choose>
                <c:when test="${dto.plazaCategoryId == 1}">NEW</c:when>
                <c:otherwise>COLLABO</c:otherwise>
              </c:choose>
            </div>
          </div>

          <div>
            <c:choose>
              <c:when test="${dto.status == 0}">
                <span class="badge bg-success">노출</span>
              </c:when>
              <c:otherwise>
                <span class="badge bg-secondary">숨김</span>
              </c:otherwise>
            </c:choose>
          </div>
        </div>

        <hr>

        <div class="p-2" style="white-space:pre-wrap;">
          ${dto.content}
        </div>

      </div>
    </div>

    <!-- 상태 변경 -->
    <div class="card shadow-sm">
      <div class="card-body d-flex gap-2">

        <form method="post" action="${pageContext.request.contextPath}/admin/plaza/status.do">
          <input type="hidden" name="seq" value="${dto.plazaId}">
          <input type="hidden" name="status" value="0">
          <button type="submit" class="btn btn-success"
                  ${dto.status == 0 ? 'disabled' : ''}>
            노출로 변경
          </button>
        </form>

        <form method="post" action="${pageContext.request.contextPath}/admin/plaza/status.do">
          <input type="hidden" name="seq" value="${dto.plazaId}">
          <input type="hidden" name="status" value="1">
          <button type="submit" class="btn btn-secondary"
                  ${dto.status == 1 ? 'disabled' : ''}>
            숨김으로 변경
          </button>
        </form>

      </div>
    </div>

  </div>
</c:if>
