<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container-fluid">

  <!-- 페이지 타이틀 -->
  <div class="d-flex justify-content-between align-items-center mb-4">
    <h3 class="fw-bold">FAQ 관리</h3>
    <a href="${pageContext.request.contextPath}/admin/faq/write.do"
       class="btn btn-primary btn-sm">
      + FAQ 등록
    </a>
  </div>

  <div class="card shadow-sm">
    <div class="card-body p-0">
      <table class="table table-hover mb-0 align-middle">
        <thead class="table-light text-center">
          <tr>
            <th style="width: 8%">번호</th>
            <th style="width: 25%">질문</th>
            <th>답변</th>
            <th style="width: 18%">관리</th>
          </tr>
        </thead>
        <tbody>

          <!-- FAQ 목록 -->
          <c:choose>
            <c:when test="${empty list}">
              <tr>
                <td colspan="4" class="text-center py-4">
                  등록된 FAQ가 없습니다.
                </td>
              </tr>
            </c:when>

            <c:otherwise>
              <c:forEach var="dto" items="${list}" varStatus="status">
                <tr>
                  <td class="text-center">
                    ${status.index + 1}
                  </td>
                  <td>
                    ${dto.question}
                  </td>
                  <td>
                    <!-- 답변 길면 잘라서 표시 -->
                    <c:choose>
                      <c:when test="${fn:length(dto.answer) > 100}">
                        ${fn:substring(dto.answer, 0, 100)}...
                      </c:when>
                      <c:otherwise>
                        ${dto.answer}
                      </c:otherwise>
                    </c:choose>
                  </td>
                  <td class="text-center">
                    <a href="${pageContext.request.contextPath}/admin/faq/edit.do?faqId=${dto.faqId}"
                       class="btn btn-outline-secondary btn-sm mb-1">
                      수정
                    </a>

                    <form action="${pageContext.request.contextPath}/admin/faq/delete.do"
                          method="post"
                          style="display:inline"
                          onsubmit="return confirm('정말 삭제하시겠습니까?');">
                      <input type="hidden" name="faqId" value="${dto.faqId}">
                      <button type="submit"
                              class="btn btn-outline-danger btn-sm">
                        삭제
                      </button>
                    </form>
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
