<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/inquiry.css">

<div class="voc-create">

    <h2 class="voc-title">상담 문의</h2>

    <section class="voc-section">
        <h3 class="voc-section-title">1. 이용동의</h3>
        <p class="voc-desc">
            상담 접수를 위해 하단의 개인정보 취급방침을 읽고 동의 버튼에 확인해 주세요.
        </p>

        <div class="agree-box">
            <label class="agree-all">
                <input type="checkbox" id="agreeAll">
                모두 확인, 동의합니다.
            </label>

            <div class="agree-item">
                <label>
                    <input type="checkbox" class="agree-item-chk" id="agreePrivacy">
                    개인정보 취급방침 동의
                </label>
            </div>

            <div class="agree-item">
                <label>
                    <input type="checkbox" class="agree-item-chk" id="agreeConsign">
                    개인정보 취급위탁 동의
                </label>
            </div>
        </div>
    </section>

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

    <section class="voc-section">
        <h3 class="voc-section-title">
            3. 문의 내용 작성
            <span class="required-text">* 은 필수 입력 항목입니다.</span>
        </h3>

        <form class="voc-form"
              action="${pageContext.request.contextPath}/information-center/inquiry/create.do"
              method="post"
              onsubmit="return validateForm();">

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

            <c:if test="${not empty error}">
                <p class="error-text">${error}</p>
            </c:if>

            <input type="hidden" name="counselType" id="counselType">
            <input type="hidden" name="detailType" id="detailType">

            <div class="form-row">
                <div class="form-label">상담유형 <span class="req">*</span></div>
                <div class="form-field btn-group" id="counselGroup">
                    <button type="button" onclick="setCounsel('칭찬', event)">칭찬</button>
                    <button type="button" onclick="setCounsel('불만', event)">불만</button>
                    <button type="button" onclick="setCounsel('문의', event)">문의</button>
                    <button type="button" onclick="setCounsel('제안', event)">제안</button>
                    <button type="button" onclick="setCounsel('제보', event)">제보</button>
                </div>
            </div>

            <div class="form-row">
                <div class="form-label">내용유형 <span class="req">*</span></div>
                <div class="form-field btn-group" id="detailGroup">
                    <button type="button" onclick="setDetail('제품', event)">제품</button>
                    <button type="button" onclick="setDetail('모바일쿠폰', event)">모바일쿠폰</button>
                    <button type="button" onclick="setDetail('인적서비스', event)">인적서비스</button>
                    <button type="button" onclick="setDetail('점포서비스', event)">점포서비스</button>
                    <button type="button" onclick="setDetail('이벤트', event)">이벤트</button>
                    <button type="button" onclick="setDetail('HP카드', event)">HP카드</button>
                    <button type="button" onclick="setDetail('기타', event)">기타</button>
                </div>
            </div>

            <div class="form-row">
                <div class="form-label">제목 <span class="req">*</span></div>
                <div class="form-field">
                    <input type="text" class="inputText" name="title" required maxlength="200">
                </div>
            </div>

            <div class="form-row">
                <div class="form-label">발생일시 <span class="req">*</span></div>
                <div class="form-field inline">
                    <input type="date" name="occurDateOnly" class="inputDate" required>

                    <select name="occurHour" class="selStyle2" required>
                        <% for(int i=0;i<24;i++){ %>
                        <option value="<%=i%>"><%=String.format("%02d", i)%></option>
                        <% } %>
                    </select> 시

                    <select name="occurMin" class="selStyle2" required>
                        <% for(int i=0;i<60;i++){ %>
                        <option value="<%=i%>"><%=String.format("%02d", i)%></option>
                        <% } %>
                    </select> 분경
                </div>
            </div>

            <div class="form-row">
                <div class="form-label">매장</div>
                <div class="form-field inline">
                    <input type="hidden" name="storeID" id="storeId">
                    <button type="button" class="btn-dark" onclick="setDummyStore()">매장찾기</button>
                    <span id="storeNameText" class="store-name-text"></span>
                </div>
            </div>

            <div class="form-row">
                <div class="form-label">내용 <span class="req">*</span></div>
                <div class="form-field">
                    <textarea name="content" required maxlength="4000"
                              placeholder="욕설, 비방, 타인의 명예를 훼손하는 글과 자료,
반복적인 비난성 글, 거짓 정보 등의 내용은
임의 삭제될 수 있으며, 답변 회신이 불가할 수 있습니다."></textarea>
                </div>
            </div>

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

            <div class="form-row">
                <div class="form-label">이름 <span class="req">*</span></div>
                <div class="form-field">
                    <input type="text"
                           class="inputText"
                           name="name"
                           placeholder="이름을 입력해주세요"
                           required
                           maxlength="50">
                </div>
            </div>

            <div class="form-row">
                <div class="form-label">전화번호</div>
                <div class="form-field inline">
                    <input type="text" name="phone1" class="inputText" style="width:80px" maxlength="3" inputmode="numeric" pattern="[0-9]*">
                    <span class="dash">-</span>
                    <input type="text" name="phone2" class="inputText" style="width:80px" maxlength="4" inputmode="numeric" pattern="[0-9]*">
                    <span class="dash">-</span>
                    <input type="text" name="phone3" class="inputText" style="width:80px" maxlength="4" inputmode="numeric" pattern="[0-9]*">
                </div>
            </div>

            <div class="form-row">
                <div class="form-label">이메일 <span class="req">*</span></div>
                <div class="form-field inline">
                    <input type="text"
                           class="inputText"
                           name="email_id"
                           placeholder="이메일 주소"
                           required
                           maxlength="64">
                    <span class="at">@</span>
                    <input type="text" name="email_domain" class="inputText" required maxlength="190">
                    <select onchange="setEmailDomain(this.value)">
                        <option value="">직접입력</option>
                        <option value="naver.com">naver.com</option>
                        <option value="gmail.com">gmail.com</option>
                    </select>
                </div>
            </div>

            <div class="form-row">
                <div class="form-label">비밀번호 <span class="req">*</span></div>
                <div class="form-field">
                    <input type="password"
                           class="inputText"
                           name="postPw"
                           placeholder="비밀번호를 입력해주세요"
                           required
                           maxlength="30"
                           autocomplete="new-password">
                </div>
            </div>

            <div class="form-row">
                <div class="form-label">비밀번호 확인 <span class="req">*</span></div>
                <div class="form-field">
                    <input type="password"
                           class="inputText"
                           name="post_pw_confirm"
                           placeholder="비밀번호를 한번 더 입력해주세요"
                           required
                           maxlength="30"
                           autocomplete="new-password">
                </div>
            </div>

            <div class="voc-submit">
                <button type="submit">접수하기</button>
            </div>
        </form>

        <script>
            function setCounsel(value, e){
                document.getElementById('counselType').value = value;
                setActiveButton(e.target);
            }

            function setDetail(value, e){
                document.getElementById('detailType').value = value;
                setActiveButton(e.target);
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
                } else {
                    label.textContent = '파일을 선택해주세요';
                }
            }

            function setDummyStore() {
                document.getElementById("storeId").value = "1";
                document.getElementById("storeNameText").innerText = "강남역점";
            }

            function syncAgreeAll(){
                const all = document.getElementById('agreeAll');
                const items = document.querySelectorAll('.agree-item-chk');
                const allChecked = Array.from(items).every(chk => chk.checked);
                all.checked = allChecked;
            }

            function validateForm(){
                const agreePrivacy = document.getElementById('agreePrivacy');
                const agreeConsign = document.getElementById('agreeConsign');

                if (!agreePrivacy.checked || !agreeConsign.checked) {
                    alert('개인정보 동의 항목을 확인해 주세요.');
                    return false;
                }

                const counselType = document.getElementById('counselType').value;
                const detailType = document.getElementById('detailType').value;
                if (!counselType) {
                    alert('상담유형을 선택해 주세요.');
                    return false;
                }
                if (!detailType) {
                    alert('내용유형을 선택해 주세요.');
                    return false;
                }

                const pw = document.querySelector('input[name=postPw]').value;
                const pwc = document.querySelector('input[name=post_pw_confirm]').value;
                if (pw !== pwc) {
                    alert('비밀번호가 일치하지 않습니다.');
                    return false;
                }

                return confirm('VOC를 등록하시겠습니까?');
            }

            (function initAgree(){
                const all = document.getElementById('agreeAll');
                const items = document.querySelectorAll('.agree-item-chk');

                all.addEventListener('change', function(){
                    items.forEach(chk => chk.checked = all.checked);
                });

                items.forEach(chk => {
                    chk.addEventListener('change', syncAgreeAll);
                });
            })();
        </script>

    </section>

</div>
