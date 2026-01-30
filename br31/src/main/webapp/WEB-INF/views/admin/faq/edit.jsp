<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid">

    <h2 class="mb-4">FAQ 수정</h2>

    <form method="post"
          action="${pageContext.request.contextPath}/admin/faq/edit.do">

        <!-- FAQ ID (수정 시 필수) -->
        <input type="hidden" name="faqId" value="${dto.faqId}" />

        <!-- 질문 -->
        <div class="mb-3">
            <label class="form-label fw-bold">질문</label>
            <input type="text"
                   name="question"
                   class="form-control"
                   value="${dto.question}"
                   required>
        </div>

        <!-- 답변 -->
        <div class="mb-3">
            <label class="form-label fw-bold">답변</label>
            <textarea name="answer"
                      class="form-control"
                      rows="8"
                      required>${dto.answer}</textarea>
        </div>

        <!-- 버튼 영역 -->
        <div class="d-flex gap-2">
            <button type="submit" class="btn btn-primary">
                저장
            </button>

            <a href="${pageContext.request.contextPath}/admin/faq/list.do"
               class="btn btn-secondary">
                취소
            </a>
        </div>

    </form>

</div>
