<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container-fluid">

    <h2 class="mb-4">FAQ 등록</h2>

    <form method="post"
          action="${pageContext.request.contextPath}/admin/faq/write.do">

        <!-- 질문 -->
        <div class="mb-3">
            <label class="form-label fw-bold">질문</label>
            <input type="text"
                   name="question"
                   class="form-control"
                   required>
        </div>

        <!-- 답변 -->
        <div class="mb-3">
            <label class="form-label fw-bold">답변</label>
            <textarea name="answer"
                      class="form-control"
                      rows="8"
                      required></textarea>
        </div>

        <div class="d-flex gap-2">
            <button type="submit" class="btn btn-primary">
                등록
            </button>

            <a href="${pageContext.request.contextPath}/admin/faq/list.do"
               class="btn btn-secondary">
                취소
            </a>
        </div>

    </form>

</div>
