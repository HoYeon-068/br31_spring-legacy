<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">

  <h2 class="mb-4">FAQ 수정</h2>

  <form method="post" action="<c:url value='/admin/faq/edit.do'/>">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

    <input type="hidden" name="faqId" value="${dto.faqId}" />

    <div class="mb-3">
      <label class="form-label fw-bold">질문</label>
      <input type="text"
             name="question"
             class="form-control"
             value="${dto.question}"
             required />
    </div>

    <div class="mb-3">
      <label class="form-label fw-bold">답변</label>
      <textarea name="answer"
                class="form-control"
                rows="8"
                required>${dto.answer}</textarea>
    </div>

    <div class="d-flex gap-2">
      <button type="submit" class="btn btn-primary">저장</button>

      <a href="<c:url value='/admin/faq/list.do'/>"
         class="btn btn-secondary">취소</a>
    </div>

  </form>

</div>
