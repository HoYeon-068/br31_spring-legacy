<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div class="container-fluid">

  <div class="d-flex justify-content-between align-items-center mb-4">
    <div>
      <h3 class="fw-bold mb-1">점포 개설 문의 상세</h3>
      <div class="text-muted small">문의 번호: ${dto.consultingId}</div>
    </div>

    <div class="d-flex gap-2">
      <a class="btn btn-outline-secondary btn-sm"
         href="${pageContext.request.contextPath}/admin/consulting/list.do">
        목록
      </a>

      <c:if test="${dto.status != 1}">
        <form action="${pageContext.request.contextPath}/admin/consulting/complete.do"
	        method="post" style="display:inline;">
	    <sec:csrfInput/>
	    <input type="hidden" name="id" value="${dto.consultingId}">
	    <button type="submit" class="btn btn-success btn-sm">
	      완료처리
	    </button>
	  </form>
      </c:if>

      <c:if test="${dto.status == 1}">
        <button type="button" class="btn btn-secondary btn-sm" disabled>답변완료</button>
      </c:if>
    </div>
  </div>

  <div class="card shadow-sm">
    <div class="card-body">

      <div class="row g-3">
        <div class="col-md-4">
          <div class="fw-semibold text-muted">이름</div>
          <div>${dto.name}</div>
        </div>

        <div class="col-md-4">
          <div class="fw-semibold text-muted">연락처</div>
          <div>${dto.tel}</div>
        </div>

        <div class="col-md-4">
          <div class="fw-semibold text-muted">이메일</div>
          <div>${dto.email}</div>
        </div>

        <div class="col-md-4">
          <div class="fw-semibold text-muted">희망지역</div>
          <div>${dto.preferredRegion}</div>
        </div>

        <div class="col-md-4">
          <div class="fw-semibold text-muted">상담시간</div>
          <div>${dto.time}</div>
        </div>

        <div class="col-md-4">
          <div class="fw-semibold text-muted">상태</div>
          <div>
            <c:choose>
              <c:when test="${dto.status == 1}">
                <span class="badge bg-success">답변완료</span>
              </c:when>
              <c:otherwise>
                <span class="badge bg-secondary">대기중</span>
              </c:otherwise>
            </c:choose>
          </div>
        </div>

        <hr class="my-3">

        <div class="col-md-4">
          <div class="fw-semibold text-muted">투자금액</div>
          <div>${dto.investmentAmount}</div>
        </div>

        <div class="col-md-4">
          <div class="fw-semibold text-muted">희망개설시기</div>
          <div>${dto.desiredOpeningDate}</div>
        </div>

        <div class="col-md-4">
          <div class="fw-semibold text-muted">점포면적</div>
          <div>${dto.storeArea}</div>
        </div>

        <div class="col-md-12">
          <div class="fw-semibold text-muted">주소</div>
          <div>(${dto.zipcode}) ${dto.address}</div>
        </div>

        <div class="col-md-12">
          <div class="fw-semibold text-muted">내용</div>
          <div class="p-3 bg-light rounded" style="white-space: pre-wrap;">${dto.content}</div>
        </div>
      </div>

    </div>
  </div>
</div>
