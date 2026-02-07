<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- 페이지 타이틀 -->
  <div class="d-flex justify-content-between align-items-center mb-4">
    <h3 class="fw-bold">배스킨라빈스 상품 등록</h3>
    <a href="${pageContext.request.contextPath}/admin/main.do?view=productList" class="btn btn-outline-secondary btn-sm">목록</a>
  </div>

  <div class="card shadow-sm">
    <div class="card-body">

      <!-- enctype 꼭 필요: 이미지 업로드 -->
      <form action="${pageContext.request.contextPath}/admin/product/write.do" method="post" enctype="multipart/form-data" class="row g-3">

        <!-- 상품명 -->
        <div class="col-md-6">
          <label class="form-label fw-semibold">상품명</label>
          <input type="text" name="productName" value="베리 굿" class="form-control" placeholder="예) 엄마는 외계인" required>
        </div>

        <!-- 상품 카테고리 -->
        <div class="col-md-6">
          <label class="form-label fw-semibold">상품 카테고리</label>
          <select name="categoryId" class="form-select" required>
            <option value="" selected disabled>선택</option>
            <!-- <option value="1">아이스크림</option>
            <option value="2">블록팩</option>
            <option value="3">레디팩</option>
            <option value="4">아이스크림 케이크</option>
            <option value="5">디저트</option>
            <option value="6">음료</option>
            <option value="7">커피</option> -->

            <!-- (추천) 컨트롤러에서 categoryList 내려주는 방식 -->
            <c:forEach var="cat" items="${category}">
              <option value="${cat.categoryId}">${cat.categoryName}</option>
            </c:forEach>

            <!-- categoryList 없을 때 임시 옵션 (원하면 지워) -->
            <%-- 
            <option value="1">아이스크림</option>
            <option value="2">케이크</option>
            <option value="3">음료</option>
            --%>
          </select>
        </div>

        <!-- 상품명(영어) -->
        <div class="col-md-6">
          <label class="form-label fw-semibold">상품명(영어)</label>
          <input type="text" name="englishName" value="Berry Good" class="form-control" placeholder="예) Puss In Boots" required>
        </div>

        <!-- 가격 -->
        <div class="col-md-6">
          <label class="form-label fw-semibold">가격</label>
          <input type="number" name="price" class="form-control" min="0" step="1" placeholder="예) 3900">
          <div class="form-text">가격이 없는 상품이면 비워도 됨</div>
        </div>
	
		<!-- 제품 태그 (최대 3개) -->
<div class="col-12">
  <label class="form-label fw-semibold">제품 태그 (최대 3개)</label>

  <div id="tagWrap" class="d-flex flex-column gap-2">

    <!-- 기본 1개 -->
    <div class="input-group tag-row">
      <input type="text" name="tags" class="form-control"
             placeholder="예) 신제품 / 초콜릿 / 시즌한정" maxlength="20">
      <button type="button" class="btn btn-outline-secondary btnTagMinus" disabled>-</button>
      <button type="button" class="btn btn-outline-primary btnTagPlus">+</button>
    </div>

  </div>

  <div class="form-text">
    + 버튼으로 최대 3개까지 추가 가능, - 버튼으로 제거 가능
  </div>
</div>
		
		
        <!-- 설명 -->
        <div class="col-12">
          <label class="form-label fw-semibold">설명</label>
          <textarea name="description" class="form-control" rows="4" placeholder="상품 설명을 입력하세요" required>겨울 제철 딸기와 부드러운 크림의 달콤한 만남! 바삭한 마카롱까지 더해져 한 입 가득 풍성하게 즐기는 딸기 아이스크림 한 입!</textarea>
        </div>

        <!-- 상품 이미지 -->
        <div class="col-md-6">
          <label class="form-label fw-semibold">상품 이미지</label>
          <input type="file" name="productImg" class="form-control" accept="image/*" required>
          <div class="form-text">대표 이미지(필수)</div>
        </div>

        <!-- 포스터 이미지 -->
        <div class="col-md-6">
          <label class="form-label fw-semibold">포스터 이미지</label>
          <input type="file" name="posterImg" class="form-control" accept="image/*">
          <div class="form-text">선택(없으면 비워도 됨)</div>
        </div>

        <!-- 배경색상 -->
<div class="col-md-6">
  <label class="form-label fw-semibold">배경색상</label>
  <div class="input-group">
    <input type="color" id="bgColorPicker" class="form-control form-control-color" value="#ffffff">
    <input type="text" name="bgColor" id="bgColorText"
           class="form-control" value="#ffffff" placeholder="#ffffff">
  </div>
</div>

<!-- 글꼴색상 -->
<div class="col-md-6">
  <label class="form-label fw-semibold">글꼴색상</label>
  <div class="input-group">
    <input type="color" id="fontColorPicker" class="form-control form-control-color" value="#000000">
    <input type="text" name="spanColor" id="fontColorText"
           class="form-control" value="#000000" placeholder="#000000">
  </div>
</div>

        <!-- 버튼 -->
        <div class="col-12 d-flex gap-2 justify-content-end mt-2">
          <a href="list.do" class="btn btn-light">취소</a>
          <button type="submit" class="btn btn-primary">상품 추가</button>
        </div>

      </form>
    </div>
  </div>

</div>

<script>
  // ===== 기존 색상 bindColor 그대로 둬도 됨 =====
  function bindColor(pickerId, textId) {
    const picker = document.getElementById(pickerId);
    const text   = document.getElementById(textId);

    picker.addEventListener("input", () => { text.value = picker.value; });

    text.addEventListener("input", () => {
      const v = text.value.trim();
      if (/^#([0-9a-fA-F]{6})$/.test(v)) picker.value = v;
    });
  }
  bindColor("bgColorPicker", "bgColorText");
  bindColor("fontColorPicker", "fontColorText");

  // ===== 태그 + / - (최대 3개) =====
  (function () {
    const MAX_TAGS = 3;
    const tagWrap = document.getElementById("tagWrap");

    function updateButtons() {
      const rows = tagWrap.querySelectorAll(".tag-row");
      rows.forEach((row, idx) => {
        const btnMinus = row.querySelector(".btnTagMinus");
        const btnPlus  = row.querySelector(".btnTagPlus");

        // 최소 1개 유지
        btnMinus.disabled = (rows.length === 1);

        // 마지막 줄만 + 허용(보기 깔끔)
        btnPlus.disabled = (rows.length >= MAX_TAGS) || (idx !== rows.length - 1);
      });
    }

    function createRow() {
      const row = document.createElement("div");
      row.className = "input-group tag-row";
      row.innerHTML = `
        <input type="text" name="tags" class="form-control" placeholder="태그 입력" maxlength="20">
        <button type="button" class="btn btn-outline-secondary btnTagMinus">-</button>
        <button type="button" class="btn btn-outline-primary btnTagPlus">+</button>
      `;
      return row;
    }

    tagWrap.addEventListener("click", (e) => {
      const plus = e.target.closest(".btnTagPlus");
      const minus = e.target.closest(".btnTagMinus");

      if (plus) {
        const rows = tagWrap.querySelectorAll(".tag-row");
        if (rows.length >= MAX_TAGS) return;

        tagWrap.appendChild(createRow());
        updateButtons();
        // 새로 생긴 input에 포커스
        tagWrap.querySelectorAll(".tag-row")[tagWrap.querySelectorAll(".tag-row").length - 1]
          .querySelector('input[name="tags"]').focus();
      }

      if (minus) {
        const row = e.target.closest(".tag-row");
        const rows = tagWrap.querySelectorAll(".tag-row");
        if (rows.length <= 1) return; // 최소 1개 유지
        row.remove();
        updateButtons();
      }
    });

    updateButtons();
  })();
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>









