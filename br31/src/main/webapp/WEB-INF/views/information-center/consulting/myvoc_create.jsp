<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/inquiry.css">

<div class="voc-create">

    <!-- 페이지 타이틀 -->
    <h2 class="voc-title">상담 문의</h2>

    <!-- 1. 이용동의 -->
    <section class="voc-section">
        <h3 class="voc-section-title">1. 이용동의</h3>
        <p class="voc-desc">
            상담 접수를 위해 하단의 개인정보 취급방침을 읽고 동의 버튼에 확인해 주세요.
        </p>

        <div class="agree-box">
            <label class="agree-all">
                <input type="checkbox">
                모두 확인, 동의합니다.
            </label>

            <div class="agree-item">
                <label>
                    <input type="checkbox">
                    개인정보 취급방침 동의
                </label>
            </div>

            <div class="agree-item">
                <label>
                    <input type="checkbox">
                    개인정보 취급위탁 동의
                </label>
            </div>
        </div>
    </section>

    <!-- 2. 이용안내 -->
    <section class="voc-section">
        <h3 class="voc-section-title">2. 이용안내</h3>

        <div class="guide-box">
            <p><strong class="guide-title">회원</strong><br>
                답변은 고객센터 회신일로부터 15일 이내 My VOC에서 확인 가능하며,
                15일 이후에는 확인이 불가능합니다.
            </p>
            <p><strong class="guide-title">비회원</strong><br>
                비회원으로 접수 시 접수 내용 및 답변은 홈페이지에서 확인이 불가능하며
                메일 회신으로만 확인 가능합니다.
            </p>
            <p>
                보다 자세한 내용은 고객센터(080-555-3131)로 문의 부탁드립니다.
            </p>
        </div>
    </section>

    <!-- 3. 문의 내용 작성 -->
    <section class="voc-section">
        <h3 class="voc-section-title">
            3. 문의 내용 작성
            <span class="required-text">* 은 필수 입력 항목입니다.</span>
        </h3>

<form class="voc-form"
      action="${pageContext.request.contextPath}/inquiry/create.do"
      method="post"
      onsubmit="return confirm('VOC를 등록하시겠습니까?');">
      
        <c:if test="${not empty error}">
        <p class="error-text">${error}</p>
    </c:if>

    <!-- ===== hidden fields (버튼 값 전달용) ===== -->
    <input type="hidden" name="counsel_type" id="counselType">
    <input type="hidden" name="detail_type" id="detailType">

    <!-- 상담유형 -->
    <div class="form-row">
        <div class="form-label">상담유형 <span class="req">*</span></div>
        <div class="form-field btn-group">
            <button type="button" onclick="setCounsel('칭찬')">칭찬</button>
            <button type="button" onclick="setCounsel('불만')">불만</button>
            <button type="button" onclick="setCounsel('문의')">문의</button>
            <button type="button" onclick="setCounsel('제안')">제안</button>
            <button type="button" onclick="setCounsel('제보')">제보</button>
        </div>
    </div>

    <!-- 내용유형 -->
    <div class="form-row">
        <div class="form-label">내용유형 <span class="req">*</span></div>
        <div class="form-field btn-group">
            <button type="button" onclick="setDetail('제품')">제품</button>
            <button type="button" onclick="setDetail('모바일쿠폰')">모바일쿠폰</button>
            <button type="button" onclick="setDetail('인적서비스')">인적서비스</button>
            <button type="button" onclick="setDetail('점포서비스')">점포서비스</button>
            <button type="button" onclick="setDetail('이벤트')">이벤트</button>
            <button type="button" onclick="setDetail('HP카드')">HP카드</button>
            <button type="button" onclick="setDetail('기타')">기타</button>
        </div>
    </div>

    <!-- 제목 -->
    <div class="form-row">
        <div class="form-label">제목 <span class="req">*</span></div>
        <div class="form-field">
            <input type="text" class="inputText" name="title" required>
        </div>
    </div>

    <!-- 발생일시 -->
<div class="form-row">
    <div class="form-label">발생일시 <span class="req">*</span></div>
    <div class="form-field inline">
        <input type="date" name="occur_date" class="inputDate" required>

        <select name="occur_hour" class="selStyle2">
            <% for(int i=0;i<24;i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select> 시

        <select name="occur_min" class="selStyle2">
            <% for(int i=0;i<60;i+=1){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select> 분경
    </div>
</div>


    <!-- 매장 (선택) -->
    <div class="form-row">
        <div class="form-label">매장</div>
        <div class="form-field inline">
           <input type="hidden" name="store_id" id="storeId">
<button type="button" class="btn-dark" onclick="setDummyStore()">매장찾기</button>
<span id="storeNameText" class="store-name-text"></span>

        </div>
    </div>

    <!-- 내용 -->
    <div class="form-row">
        <div class="form-label">내용 <span class="req">*</span></div>
        <div class="form-field">
        <textarea name="content" required
placeholder="욕설, 비방, 타인의 명예를 훼손하는 글과 자료,
반복적인 비난성 글, 거짓 정보 등의 내용은
임의 삭제될 수 있으며, 답변 회신이 불가할 수 있습니다."></textarea>
        </div>
    </div>

    <!-- 파일첨부 (UI만 유지, 서버 처리 안 함) -->
   <div class="form-row">
    <div class="form-label">파일첨부</div>
    <div class="form-field">
        <div class="fileDiv">
            <label for="attachFile" id="fileLabel">파일을 선택해주세요</label>
            <input type="file" id="attachFile" name="attachFile" onchange="onFileChange(this)">
        </div>
        <p class="file-info">
            각 파일당 최대 10MB<br>
            jpg, jpeg, gif, png, bmp, ppt, pptx, xls, xlsx, doc, docx, pdf
        </p>
    </div>
</div>


    <!-- 이름 -->
    <div class="form-row">
        <div class="form-label">이름 <span class="req">*</span></div>
        <div class="form-field">
           <input type="text"
       class="inputText"
       name="name"
       placeholder="이름을 입력해주세요"
       required>

        </div>
    </div>

    <!-- 전화번호 (선택) -->
    <div class="form-row">
        <div class="form-label">전화번호</div>
        <div class="form-field inline">
        <input type="text" name="phone1" class="inputText" style="width:80px">
        <span class="dash">-</span>
		<input type="text" name="phone2" class="inputText" style="width:80px">
		<span class="dash">-</span>
		<input type="text" name="phone3" class="inputText" style="width:80px">
        </div>
    </div>

    <!-- 이메일 -->
    <div class="form-row">
        <div class="form-label">이메일 <span class="req">*</span></div>
        <div class="form-field inline">
          <input type="text"
       class="inputText"
       name="email_id"
       placeholder="이메일 주소"
       required>
       <span class="at">@</span>
<input type="text" name="email_domain" class="inputText" required>
            <select onchange="setEmailDomain(this.value)">
                <option value="">직접입력</option>
                <option value="naver.com">naver.com</option>
                <option value="gmail.com">gmail.com</option>
            </select>
        </div>
    </div>

    <!-- 비밀번호 -->
    <div class="form-row">
        <div class="form-label">비밀번호 <span class="req">*</span></div>
        <div class="form-field">
    <input type="password"
       class="inputText"
       name="post_pw"
       placeholder="비밀번호를 입력해주세요"
       required>

        </div>
    </div>

    <!-- 비밀번호 확인 -->
    <div class="form-row">
        <div class="form-label">비밀번호 확인 <span class="req">*</span></div>
        <div class="form-field">
     <input type="password"
       class="inputText"
       name="post_pw_confirm"
       placeholder="비밀번호를 한번 더 입력해주세요"
       required>

        </div>
    </div>

    <!-- 제출 -->
    <div class="voc-submit">
        <button type="submit">접수하기</button>
    </div>
</form>

<script>

function setCounsel(value){
    document.getElementById('counselType').value = value;
    setActiveButton(event.target);
}

function setDetail(value){
    document.getElementById('detailType').value = value;
    setActiveButton(event.target);
}

function setActiveButton(clickedBtn){
    const group = clickedBtn.closest('.btn-group');
    const buttons = group.querySelectorAll('button');

    buttons.forEach(btn => btn.classList.remove('active'));
    clickedBtn.classList.add('active');
}


function setEmailDomain(value){
    if(value){
        document.querySelector('input[name=email_domain]').value = value;
    }
}

function onFileChange(input){
    const label = document.getElementById('fileLabel');
    if(input.files.length > 0){
        label.textContent = input.files[0].name;
        label.style.backgroundImage = 'none';
        label.style.color = '#333';
    }
}

function setDummyStore() {
    // 🔹 발표/시연용 더미 매장
    document.getElementById("storeId").value = "1";
    document.getElementById("storeNameText").innerText = "강남역점";
}
</script>

    </section>

</div>
