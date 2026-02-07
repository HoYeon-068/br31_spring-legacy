<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div class="container-fluid">

  <div class="d-flex justify-content-between align-items-center mb-3">
    <h3 class="fw-bold mb-0">배라광장 글 관리</h3>
  </div>

  <!-- 탭 -->
  <ul class="nav nav-tabs mb-3">
    <li class="nav-item">
      <a class="nav-link ${category == 'ALL' ? 'active' : ''}"
         href="${pageContext.request.contextPath}/admin/plaza/list.do?category=ALL">ALL</a>
    </li>
    <li class="nav-item">
      <a class="nav-link ${category == '1' ? 'active' : ''}"
         href="${pageContext.request.contextPath}/admin/plaza/list.do?category=1">NEW</a>
    </li>
    <li class="nav-item">
      <a class="nav-link ${category == '2' ? 'active' : ''}"
         href="${pageContext.request.contextPath}/admin/plaza/list.do?category=2">COLLABO</a>
    </li>
  </ul>

  <div class="card shadow-sm">
    <div class="card-body p-0">
      <table class="table table-hover mb-0 align-middle">
        <thead class="table-light">
          <tr class="text-center">
            <th style="width:90px;">번호</th>
            <th>제목</th>
            <th style="width:120px;">카테고리</th>
            <th style="width:140px;">작성자</th>
            <th style="width:120px;">상태</th>
            <th style="width:120px;">관리</th>
          </tr>
        </thead>
        <tbody>

          <c:choose>
            <c:when test="${empty list}">
              <tr>
                <td colspan="6" class="text-center py-5 text-muted">등록된 글이 없습니다.</td>
              </tr>
            </c:when>

            <c:otherwise>
              <c:forEach items="${list}" var="p">
                <tr>
                  <td class="text-center">${p.plazaId}</td>

                  <td>
                    <a href="${pageContext.request.contextPath}/admin/plaza/view.do?seq=${p.plazaId}"
                       class="text-decoration-none">
                      ${p.title}
                    </a>
                    <div class="text-muted small">${p.content}</div>
                  </td>

                  <td class="text-center">
                    <c:choose>
                      <c:when test="${p.plazaCategoryId == 1}">
                        <span class="badge bg-primary">NEW</span>
                      </c:when>
                      <c:otherwise>
                        <span class="badge bg-warning text-dark">COLLABO</span>
                      </c:otherwise>
                    </c:choose>
                  </td>

                  <td class="text-center">${p.userId}</td>

                  <td class="text-center">
                    <c:choose>
                      <c:when test="${p.status == 0}">
                        <span class="badge bg-success">노출</span>
                      </c:when>
                      <c:otherwise>
                        <span class="badge bg-secondary">숨김</span>
                      </c:otherwise>
                    </c:choose>
                  </td>

                  <td class="text-center">
                    <a class="btn btn-outline-dark btn-sm"
                       href="${pageContext.request.contextPath}/admin/plaza/view.do?seq=${p.plazaId}">
                      상세
                    </a>
                  </td>

                </tr>
              </c:forEach>
            </c:otherwise>
          </c:choose>

        </tbody>
      </table>
    </div>
  </div>

</div>
