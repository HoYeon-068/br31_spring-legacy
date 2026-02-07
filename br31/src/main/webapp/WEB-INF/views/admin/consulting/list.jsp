<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="container-fluid">

  <!-- 페이지 타이틀 -->
  <div class="d-flex justify-content-between align-items-center mb-4">
    <div>
      <h3 class="fw-bold mb-1">점포 개설 문의 관리</h3>
      <div class="text-muted small">배라광장 > 신규입점제안(consulting) 접수 내역을 관리합니다.</div>
    </div>

    
  </div>

  <!-- 테이블 -->
  <div class="card shadow-sm">
    <div class="card-body p-0">

      <table class="table table-hover mb-0 text-center align-middle">
        <thead class="table-light">
          <tr>
            <th>번호</th>
            <th>이름</th>
            <th>연락처</th>
            <th>이메일</th>
            <th>희망지역</th>
            <th>상태</th>
            <th>관리</th>
          </tr>
        </thead>

        <tbody>
          
          <c:if test="${empty list}">
            <tr>
              <td colspan="7" class="py-5 text-muted">
                등록된 점포 개설 문의가 없습니다.
              </td>
            </tr>
          </c:if>

          
          <c:forEach items="${list}" var="c">
            <tr>
              <td>${c.consultingId}</td>
              <td class="fw-semibold">${c.name}</td>
              <td>${c.tel}</td>
              <td>${c.email}</td>
              <td>${c.preferredRegion}</td>

              <td>
                <c:choose>
                  <c:when test="${c.status == 1}">
                    <span class="badge bg-success">답변완료</span>
                  </c:when>
                  <c:otherwise>
                    <span class="badge bg-secondary">대기중</span>
                  </c:otherwise>
                </c:choose>
              </td>

              <td>
                <a class="btn btn-outline-primary btn-sm"
                   href="${pageContext.request.contextPath}/admin/consulting/view.do?id=${c.consultingId}">
                  상세
                </a>

                <c:choose>
                  <c:when test="${c.status == 1}">
                    <button type="button" class="btn btn-outline-secondary btn-sm" disabled>완료</button>
                  </c:when>
                  <c:otherwise>
                    <form action="${pageContext.request.contextPath}/admin/consulting/complete.do"
					      method="post" style="display:inline;">
					  <sec:csrfInput/>
					  <input type="hidden" name="id" value="${c.consultingId}">
					  <button type="submit" class="btn btn-outline-success btn-sm">
					    완료처리
					  </button>
					</form>
                  </c:otherwise>
                </c:choose>
              </td>
            </tr>
          </c:forEach>
          
        </tbody>
      </table>
    </div>
  </div>

</div>
