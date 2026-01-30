<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="date=no">
    <meta name="format-detection" content="address=no">
    <meta name="format-detection" content="email=no">

    <title>배스킨라빈스</title>

    <meta name="description" content="배스킨라빈스에게 다양한 의견을 전달해주세요.">
    <meta property="og:site_name" content="배스킨라빈스">
    <meta property="og:url" content="${pageContext.request.contextPath}/index.html">
    <meta property="og:title" content="[배스킨라빈스] 배라광장">
    <meta property="og:description" content="배스킨라빈스에게 다양한 의견을 전달해주세요.">
    <meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
    <meta property="og:type" content="website">

    <!-- 프로젝트 리소스 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>

<body id="baskinrobbins-play-plaza-collabo" class="baskinrobbins-play-plaza-collabo">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<section class="site-container">

    <!-- 상단 page-menu -->
    <nav class="page-menu">
        <ul class="page-menu__list">
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/event/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">이벤트</span></div>
                </a>
            </li>
            <li class="page-menu__item page-menu__item--active">
                <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">배라광장</span></div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/recipe/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">BR 레시피</span></div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/myflavor/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">마이플레이버 리스트</span></div>
                </a>
            </li>
        </ul>
    </nav>

    <!-- CONTENT -->
    <div id="content">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">중소기업 콜라보레이션</h2>
                </div>

                <div class="page-header__content">
                    <p class="page-header__text">
                        우리 브랜드를 “널리널리”알리고 싶은 기업 모여라 !
                    </p>
                </div>
            </div>
        </header>

        <div class="plaza-collabo">
            <div class="plaza-collabo__container">
                <div class="plaza-collabo__content">

                    <form action="${pageContext.request.contextPath}/play/plaza/collabo.do"
                          class="plaza-form form"
                          method="post"
                          enctype="multipart/form-data">

                        <input type="hidden" name="csrf_token"
                               value="MTc2NjMwOTQxOGIwMzIxYWJjMWMzOWIyNDVhZDhjMTU4YzYwN2NmY2U0ZThiNzg4NWVjY2E5MmE5YTQ4OWU4NWQxMzAzNzAyMDU0Mjc4NTY3MmM5OGM3NmUx">
                        <input type="hidden" name="category" value="B">

                        <legend>중소기업 콜라보레이션 입력 폼</legend>

                        <fieldset class="plaza-form__container">

                            <div class="plaza-form__content">
                                <div class="plaza-form__header">
                                    <h3 class="form__title">개인정보 수집 이용에 대한 안내 및 동의</h3>
                                </div>

                                <div class="form-area">
                                    <div>
                                        <ul>
                                            <li><span>1.</span> 개인정보의 수집ㆍ이용 목적 : 중소기업콜라보레이션 제안 아이디어 채택 시 제안자 식별 및 연락</li>
                                            <li><span>2.</span> 수집하려는 개인정보의 항목 : ①회사명 ②담당자 이름 ③담당자 연락처 ④담당자 이메일 주소</li>
                                            <li><span>3.</span> 개인정보의 보유 및 이용 기간 : 수집•이용 동의일로부터 12개월 또는 동의 철회 시 까지</li>
                                        </ul>

                                        <p>
                                            위의 개인정보 수집•이용에 대한 동의를 거부할 권리가 있습니다.<br>
                                            그러나 동의를 거부할 경우 중소기업콜라보레이션 제안 아이디어 채택에 제한을 받을 수 있습니다.
                                        </p>
                                    </div>
                                </div>

                                <div class="plaza-form__box">
                                    <label class="form-radio">
                                        <input type="radio" class="form-radio__input privacy" name="is_policy" value="Y">
                                        <span class="form-radio__text">동의합니다</span>
                                    </label>

                                    <label class="form-radio">
                                        <input type="radio" class="form-radio__input" name="is_policy" value="N">
                                        <span class="form-radio__text">동의하지 않습니다</span>
                                    </label>
                                </div>
                            </div>

                            <div class="plaza-form__content">
                                <div class="plaza-form__header">
                                    <h3 class="form__title">이용약관</h3>
                                </div>

                                <div class="form-area">
                                    <div>
                                        <ul>
                                            <li><span>1.</span> 제안자의 아이디어는 비알코리아㈜(이하 ‘회사’)의 내부 검토 과정을 통해 채택 또는 미채택될 수 있으며, 아이디어의 채택은 전적으로 회사의 기준에 의하여 결정됩니다.</li>
                                            <li><span>2.</span> 제안자가 작성하신 게시글을 비공개 할 경우 제안자의 이름은 노출되지 않습니다.</li>
                                            <li><span>3.</span> 제안자의 개인정보는 로그인 시점 시 등록된 개인정보로 자동 등록됩니다.</li>
                                            <li><span>4.</span> 개인정보가 변경된 경우 해피포인트 회원정보를 수정하신 후 다시 로그인하시어 게시글을 작성해주세요.</li>
                                            <li><span>5.</span> 제안한 아이디어에 대한 저작권은 제안자에게 귀속됩니다.</li>
                                            <li><span>6.</span> 회사는 제안자에게 별도의 계약을 체결하여 협업을 통해 제안자의 아이디어를 제품화, 지적재산권 확보, 수정 및 보완, 기타 방법으로 자유롭게 활용할 수 있습니다.</li>
                                        </ul>
                                    </div>
                                </div>

                                <div class="plaza-form__box">
                                    <label class="form-radio">
                                        <input type="radio" class="form-radio__input terms" name="is_terms" value="Y">
                                        <span class="form-radio__text">동의합니다</span>
                                    </label>

                                    <label class="form-radio">
                                        <input type="radio" class="form-radio__input" name="is_terms" value="N">
                                        <span class="form-radio__text">동의하지 않습니다</span>
                                    </label>
                                </div>
                            </div>

                            <div class="plaza-form__content">
                                <div class="plaza-form-copyright">
                                    <p class="plaza-form__title">* 아이디어 제출시 제출된 아이디어에 대한 저작권은 본사에 귀속됩니다.</p>

                                    <div class="plaza-form-copyright__box">
                                        <label class="form-radio">
                                            <input type="radio" class="form-radio__input copyright" name="is_copyright" value="Y">
                                            <span class="form-radio__text">동의합니다</span>
                                        </label>

                                        <label class="form-radio">
                                            <input type="radio" class="form-radio__input" name="is_copyright" value="N">
                                            <span class="form-radio__text">동의하지 않습니다</span>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="plaza-form-field">
                                <div class="plaza-form-field__container plaza-form-field__container--top">

                                    <dl class="plaza-form-field__content plaza-form-field__content--left">
                                        <div class="plaza-form-field__item">
                                            <dt class="plaza-form-field__name form__name">이름</dt>
                                            <dd class="plaza-form-field__area user-name">${sessionScope.loginUser.name}</dd>
                                        </div>
                                        <div class="plaza-form-field__item">
                                            <dt class="plaza-form-field__name form__name">이메일</dt>
                                            <dd class="plaza-form-field__area user-email">${sessionScope.loginUser.email}</dd>
                                        </div>
                                        <div class="plaza-form-field__item">
                                            <dt class="plaza-form-field__name form__name">연락처</dt>
                                            <dd class="plaza-form-field__area user-tel">${sessionScope.loginUser.phone_no}</dd>
                                        </div>
                                        <div class="plaza-form-field__item">
                                            <dt class="plaza-form-field__name form__name">회사명 공개</dt>
                                            <dd class="plaza-form-field__area">
                                                <div class="plaza-form-radio private-account">
                                                    <label class="form-radio">
                                                        <input type="radio" class="form-radio__input" value="Y" name="is_applicant">
                                                        <span class="form-radio__text">공개</span>
                                                    </label>

                                                    <label class="form-radio">
                                                        <input type="radio" class="form-radio__input" value="N" name="is_applicant" checked>
                                                        <span class="form-radio__text">비공개</span>
                                                    </label>
                                                </div>
                                            </dd>
                                        </div>
                                    </dl>

                                    <div class="plaza-form-field__content plaza-form-field__content--right">
                                        <dl>
                                            <div class="plaza-form-field__item plaza-form-field__item--manager">
                                                <dt class="plaza-form-field__name form__name">담당자 정보</dt>
                                                <dd class="plaza-form-field__area">
                                                    <div class="plaza-form-radio manager-info">
                                                        <label class="form-radio">
                                                            <input type="radio" class="form-radio__input" name="manager-info" value="Y" checked>
                                                            <span class="form-radio__text">작성자와 동일</span>
                                                        </label>

                                                        <label class="form-radio">
                                                            <input type="radio" class="form-radio__input" name="manager-info" value="N">
                                                            <span class="form-radio__text">새로운 정보 입력</span>
                                                        </label>
                                                    </div>
                                                </dd>
                                            </div>

                                            <div class="plaza-form-field__item">
                                                <dt class="plaza-form-field__name">
                                                    <strong class="form__name form__name--point">* 회사명</strong>
                                                </dt>
                                                <dd class="plaza-form-field__area">
                                                    <input type="text" class="plaza-form-field__input form__input company" maxlength="30" name="company_name">
                                                </dd>
                                            </div>
                                        </dl>

                                        <dl class="plaza-form-field__content plaza-form-field__content--column">
                                            <div class="plaza-form-field__item">
                                                <dt class="plaza-form-field__name form__name">이름</dt>
                                                <dd class="plaza-form-field__area">
                                                    <input type="text" class="plaza-form-field__input form__input name" maxlength="30" name="manager_name">
                                                </dd>
                                            </div>

                                            <div class="plaza-form-field__item">
                                                <dt class="plaza-form-field__name form__name">연락처</dt>
                                                <dd class="plaza-form-field__area">
                                                    <div class="form-tel">
                                                        <input type="hidden" class="form-tel__input">
                                                        <input type="text" class="form-tel__input" maxlength="3" name="manager_tel1">
                                                        <div class="form-tel__hypen"></div>
                                                        <input type="text" class="form-tel__input" maxlength="4" name="manager_tel2">
                                                        <div class="form-tel__hypen"></div>
                                                        <input type="text" class="form-tel__input" maxlength="4" name="manager_tel3">
                                                    </div>
                                                </dd>
                                            </div>
                                        </dl>

                                        <dl class="plaza-form-field__content--row">
                                            <div class="plaza-form-field__item">
                                                <dt class="plaza-form-field__name form__name">이메일</dt>
                                                <dd class="plaza-form-field__area">
                                                    <div class="plaza-form-email">
                                                        <input type="text" class="plaza-form-email__input" name="manager_email">
                                                        <p class="plaza-form-email__text">
                                                            * 입력된 연락처를 우선으로 필요한 경우 담당자가 고객님께 개별 연락 드릴 예정입니다.
                                                        </p>
                                                    </div>
                                                </dd>
                                            </div>
                                        </dl>
                                    </div>
                                </div>

                                <div class="plaza-form-field__container">
                                    <dl class="plaza-form-field__content plaza-form-field__content--bottom">
                                        <div class="plaza-form-field__item title">
                                            <dt class="plaza-form-field__name form__name">제목</dt>
                                            <dd class="plaza-form-field__area">
                                                <input type="text" class="plaza-form-field__input form__input" maxlength="30" name="title">
                                            </dd>
                                        </div>
                                    </dl>
                                </div>

                                <div class="plaza-form-field__container">
                                    <dl class="plaza-form-field__content plaza-form-field__content--bottom">
                                        <div class="plaza-form-field__item">
                                            <dt class="plaza-form-field__name form__name">내용</dt>
                                            <dd class="plaza-form-field__area">
                                                <div class="plaza-form-textarea form-content">
                                                    <textarea class="plaza-form-textarea__textarea" name="content"></textarea>
                                                    <p class="plaza-form-textarea__current-text current-text"></p>
                                                </div>
                                            </dd>
                                        </div>
                                    </dl>
                                </div>

                                <div class="plaza-form-field__container">
                                    <dl class="plaza-form-field__content plaza-form-field__content--bottom">
                                        <div class="plaza-form-field__item">
                                            <dt class="plaza-form-field__name form__name">첨부파일</dt>
                                            <dd class="plaza-form-field__area">
                                                <div class="plaza-form-upload">
                                                    <div class="form-file">
                                                        <p class="form-file__text">* 예시 이미지 또는 상품에 대한 설명을 올려주세요!</p>

                                                        <div class="form-file__content">
                                                            <div class="form-file__box form-file__box--active">
                                                                <label class="form-file__label">
                                                                    <input type="file" class="form-file__input" accept=".jpg,.jpeg,.png,.pdf" name="attached_file_1">
                                                                    <span class="form-file__button">파일선택</span>
                                                                </label>
                                                            </div>
                                                            <div class="form-file__box">
                                                                <label class="form-file__label">
                                                                    <input type="file" class="form-file__input" accept=".jpg,.jpeg,.png,.pdf" name="attached_file_2">
                                                                    <span class="form-file__button">파일선택</span>
                                                                </label>
                                                            </div>
                                                            <div class="form-file__box">
                                                                <label class="form-file__label">
                                                                    <input type="file" class="form-file__input" accept=".jpg,.jpeg,.png,.pdf" name="attached_file_3">
                                                                    <span class="form-file__button">파일선택</span>
                                                                </label>
                                                            </div>

                                                            <ul class="form-file__list">
                                                                <li class="form-file__item">* 파일은 최대 3개까지 추가 가능합니다.</li>
                                                                <li class="form-file__item">* 파일 형식은 jpg, jpeg, png, pdf 형식만 가능합니다.</li>
                                                                <li class="form-file__item">* 1개당 5MB, 총 <strong class="form-file__point">15MB</strong> 까지 가능합니다.</li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <div class="form-files"></div>
                                                </div>
                                            </dd>
                                        </div>
                                    </dl>
                                </div>
                            </div>

                            <div class="plaza-form-buttons">
                                <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="plaza-form-buttons__cancel">취소</a>
                                <button type="submit" class="plaza-form-buttons__submit">등록</button>
                            </div>
                        </fieldset>
                    </form>

                </div>
            </div>
        </div>

    </div>
</section>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
