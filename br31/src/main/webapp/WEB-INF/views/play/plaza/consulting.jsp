<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

    <!-- CONTENT -->
    <div id="content" class="plaza-consulting">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">점포개설문의</h2>
                </div>

                <div class="page-header__content">
                    <p class="page-header__text">
                        <strong>아이스크림 전문기업 배스킨라빈스</strong>
                        한달 31일 내내 새로운 맛을 선사한다 (One flavor each day of the month)라는 의미가 ‘31’ 이라는 숫자로<br>
                        널리 알려진 배스킨라빈스는 세계 35개국에 점포를 운영하고 있는 세계No.1 아이스크림 브랜드 입니다.
                    </p>
                </div>
            </div>
        </header>

        <div class="plaza-consulting__container">
            <div class="plaza-consulting__content">

                <form name="frm" action="${pageContext.request.contextPath}/play/plaza/consulting.do" method="POST" class="plaza-form form">
                	<sec:csrfInput/>
                    <input type="hidden" name="category" value="C">
                    <legend>점포개설문의 입력 폼</legend>

                    <fieldset class="plaza-form__container">
                        <section class="plaza-form__content">

                            <header class="plaza-form__header">
                                <h3 class="form__title">배스킨라빈스 가맹점포 창업 문의 개인정보 수집이용 동의안내</h3>
                            </header>

                            <table class="form-table">
                                <thead>
                                <tr>
                                    <th>수집하는 개인정보 항목</th>
                                    <th>개인정보 수집 이용목적</th>
                                    <th>개인정보 보유 및 이용기간</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>이름, 연락처, 이메일, 희망 창업조건</td>
                                    <td>배스킨라빈스 창업 상담</td>
                                    <td>창업 상담 신청 후 12개월 또는 동의 철회 시 까지</td>
                                </tr>
                                </tbody>
                            </table>

                            <div class="plaza-form__box">
                                <label class="form-radio">
                                    <input type="radio" class="form-radio__input privacy" name="personalInfoConsent" value="1">
                                    <span class="form-radio__text">동의합니다</span>
                                </label>

                                <label class="form-radio">
                                    <input type="radio" class="form-radio__input" name="personalInfoConsent" value="0">
                                    <span class="form-radio__text">동의하지 않습니다</span>
                                </label>
                            </div>

                            <p class="plaza-consulting__essential">*표시 항목은 필수 입력 항목입니다</p>

                            <div class="plaza-consulting__table">
                                <table class="table layout-table">
                                    <tbody>
                                    <tr>
                                        <th class="form__name">* 이름</th>
                                        <td class="table__area">
                                            <input type="text" name="contact_form_username"
                                                   class="form__input table__input name"
                                                   placeholder="이름을 입력하세요">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th class="form__name">* 연락처</th>
                                        <td class="table__area">
                                            <div class="plaza-consulting-tel">
                                                <div class="plaza-consulting-tel__content">
                                                    <div class="form-tel table__tel plaza-consulting-tel__item">
                                                        <input type="hidden" name="applicant_tel_2">
                                                        <input type="text" class="form-tel__input" maxlength="3" name="contact_form_tel1">
                                                        <span class="form-tel__hypen"></span>
                                                        <input type="text" class="form-tel__input" maxlength="4" name="contact_form_tel2">
                                                        <span class="form-tel__hypen"></span>
                                                        <input type="text" class="form-tel__input" maxlength="4" name="contact_form_tel3">
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th class="form__name">* 연락가능시간</th>
                                        <td class="table__area">
                                            <div class="table__box plaza-consulting-time">
                                                <select name="contact_from_hour" class="plaza-consulting-time__select plaza-consulting__select">
                                                    <option value="">선택</option>
                                                    <c:forEach var="h" begin="0" end="23">
                                                        <c:set var="hh" value="${h lt 10 ? '0' : ''}${h}" />
                                                        <option value="${hh}">${hh}</option>
                                                    </c:forEach>
                                                </select>
                                                <span class="plaza-consulting-time__text">시</span>

                                                <select name="contact_from_minute" class="plaza-consulting-time__select plaza-consulting__select">
                                                    <option value="">선택</option>
                                                    <c:forEach var="m" begin="0" end="59">
                                                        <c:set var="mm" value="${m lt 10 ? '0' : ''}${m}" />
                                                        <option value="${mm}">${mm}</option>
                                                    </c:forEach>
                                                </select>
                                                <span class="plaza-consulting-time__text">분</span>

                                                <span class="plaza-consulting-time__hypen"></span>

                                                <select name="contact_to_hour" class="plaza-consulting-time__select plaza-consulting__select">
                                                    <option value="">선택</option>
                                                    <c:forEach var="h2" begin="0" end="23">
                                                        <c:set var="hh2" value="${h2 lt 10 ? '0' : ''}${h2}" />
                                                        <option value="${hh2}">${hh2}</option>
                                                    </c:forEach>
                                                </select>
                                                <span class="plaza-consulting-time__text">시</span>

                                                <select name="contact_to_minute" class="plaza-consulting-time__select plaza-consulting__select">
                                                    <option value="">선택</option>
                                                    <c:forEach var="m2" begin="0" end="59">
                                                        <c:set var="mm2" value="${m2 lt 10 ? '0' : ''}${m2}" />
                                                        <option value="${mm2}">${mm2}</option>
                                                    </c:forEach>
                                                </select>
                                                <span class="plaza-consulting-time__text">분</span>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th class="form__name">* 이메일</th>
                                        <td class="table__area">
                                            <input type="text" name="contact_from_email"
                                                   class="form__input table__input email"
                                                   placeholder="이메일을 입력하세요">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th class="form__name">* 창업 희망 지역</th>
                                        <td class="table__area table__box">
                                            <select name="sido" class="dosi plaza-consulting__select plaza-consulting__select--long">
                                                <option value="">도/시</option>
                                                
                                            </select>
                                            <select name="gugun" class="gugun plaza-consulting__select plaza-consulting__select--long">
                                                <option value="">구/군</option>
                                            </select>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th class="form__name">* 기타 문의 내용</th>
                                        <td class="table__area plaza-consulting__box">
                                            <textarea name="other_inquiry_details" class="plaza-consulting__textarea"
                                                      placeholder="요청 사항 혹은 문의 내용을 입력 해주세요.&#10;해당 내용에 대한 답변은 세부내용 안내 시 함께 답변 드립니다."></textarea>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <p class="plaza-consulting__alert">
                                구체적인 의뢰 점포가 있을 시에는 점포주소, 임차조건, 평수를 작성해주세요
                            </p>

                            <div class="plaza-consulting-form__table">
                                <table class="table layout-table">
                                    <tbody>
                                    <tr>
                                        <th class="form__name">점포 상세 주소</th>
                                        <td class="table__area">
                                            <div class="table__box address address--number">
                                                <input type="text" class="form__input table__input" name="zipcode" readonly>
                                                <button type="button" class="address__button">우편번호 찾기</button>
                                            </div>
                                            <input type="text" name="addr"
                                                   class="form__input table__input table__input--long address address--default"
                                                   placeholder="기본 주소를 입력하세요." readonly>
                                            <input type="text" name="addr_detail"
                                                   class="form__input table__input table__input--long address address--detail"
                                                   placeholder="상세 주소를 입력하세요">
                                        </td>
                                    </tr>

                                    <tr>
                                        <th class="form__name">면적 (평수)</th>
                                        <td class="table__area">
                                            <div class="select">
                                                <select name="pyeong" class="plaza-consulting__select plaza-consulting__select--long">
                                                    <option value="">평수선택</option>
                                                    <option value="30">30평이상</option>
                                                    <option value="40">40평이상</option>
                                                    <option value="50">50평이상</option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <th class="form__name">희망 임차 조건</th>
                                        <td class="plaza-consulting__box">
                                            <div class="plaza-consulting-condition">

                                                <div class="plaza-consulting-condition__content">
                                                    <p class="plaza-consulting-condition__title">점포 개설 희망 시기</p>

                                                    <div class="plaza-consulting-condition__box table__radios">
                                                        <div class="table__box">
                                                            <label class="form-radio">
                                                                <input type="radio" class="form-radio__input" name="store_open_period" value="즉시">
                                                                <span class="form-radio__text">즉시</span>
                                                            </label>
                                                            <label class="form-radio">
                                                                <input type="radio" class="form-radio__input" name="store_open_period" value="3개월">
                                                                <span class="form-radio__text">3개월</span>
                                                            </label>
                                                            <label class="form-radio">
                                                                <input type="radio" class="form-radio__input" name="store_open_period" value="6개월">
                                                                <span class="form-radio__text">6개월</span>
                                                            </label>
                                                            <label class="form-radio">
                                                                <input type="radio" class="form-radio__input" name="store_open_period" value="1년이상">
                                                                <span class="form-radio__text">1년이상</span>
                                                            </label>
                                                        </div>

                                                        <div class="table__box">
                                                            <div>
                                                                <label class="form-radio">
                                                                    <input type="radio" class="form-radio__input" name="store_open_period" value="기타">
                                                                    <span class="form-radio__text">기타(내용작성)</span>
                                                                </label>
                                                                <input type="text" name="store_open_period_etc"
                                                                       class="form__input table__input table__input--long"
                                                                       placeholder="내용을 작성해주세요">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="plaza-consulting-condition__content">
                                                    <p class="plaza-consulting-condition__title">점포 개설 투자 금액</p>

                                                    <div class="plaza-consulting-condition__box table__radios">
                                                        <div class="table__box">
                                                            <label class="form-radio">
                                                                <input type="radio" class="form-radio__input" name="store_open_amount" value="2억 이상">
                                                                <span class="form-radio__text">2억 이상</span>
                                                            </label>
                                                            <label class="form-radio">
                                                                <input type="radio" class="form-radio__input" name="store_open_amount" value="3억 이상">
                                                                <span class="form-radio__text">3억 이상</span>
                                                            </label>
                                                            <label class="form-radio">
                                                                <input type="radio" class="form-radio__input" name="store_open_amount" value="4억 이상">
                                                                <span class="form-radio__text">4억 이상</span>
                                                            </label>
                                                        </div>

                                                        <div class="table__box">
                                                            <div>
                                                                <label class="form-radio">
                                                                    <input type="radio" class="form-radio__input" name="store_open_amount" value="기타">
                                                                    <span class="form-radio__text">기타 금액(내용작성)</span>
                                                                </label>
                                                                <input type="text" name="store_open_amount_etc"
                                                                       class="form__input table__input table__input--long"
                                                                       placeholder="내용을 작성해주세요">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="plaza-consulting-info">
                                <h4 class="plaza-consulting-info__title">상담안내</h4>
                                <div class="plaza-consulting-info__content">
                                    <p class="plaza-consulting-info__text">
                                        가맹점 문의/점포개설에 대한 상담은 전화 및 팩스, 이메일 모두 가능합니다.
                                    </p>

                                    <a href="${pageContext.request.contextPath}/information-center/consulting/counsel.jsp"
                                       target="_blank"
                                       class="plaza-consulting-info__button">
                                        문의처 확인
                                    </a>
                                </div>
                            </div>

                            <div class="plaza-form-buttons">
                                <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="plaza-form-buttons__cancel">취소</a>
                                <button type="submit" class="plaza-form-buttons__submit">등록</button>
                            </div>

                        </section>
                    </fieldset>
                </form>

                <!-- 우편번호 모달 -->
                <div id="post-code-modal" class="post-code-popup modal fade">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-body">
                                <div id="post-code" class="post-code"></div>
                            </div>

                            <button type="button" class="btn-close">
                                <span>닫기</span>
                            </button>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
document.addEventListener("DOMContentLoaded", function () {
  const $sido = document.querySelector("select[name='sido']");
  const $gugun = document.querySelector("select[name='gugun']");

  const SIDOS = [
    { value: "서울", label: "서울" },
    { value: "경기", label: "경기" },
    { value: "강원", label: "강원특별자치도" },
    { value: "부산", label: "부산" },
    { value: "대구", label: "대구" },
    { value: "인천", label: "인천" },
    { value: "광주", label: "광주" },
    { value: "대전", label: "대전" },
    { value: "울산", label: "울산" },
    { value: "세종", label: "세종특별자치시" },
    { value: "충북", label: "충북" },
    { value: "충남", label: "충남" },
    { value: "전북", label: "전북" },
    { value: "전남", label: "전남" },
    { value: "경북", label: "경북" },
    { value: "경남", label: "경남" },
    { value: "제주", label: "제주특별자치도" }
  ];

  SIDOS.forEach(({value, label}) => {
    const opt = document.createElement("option");
    opt.value = value;
    opt.textContent = label;
    $sido.appendChild(opt);
  });

  function resetGugun() {
    $gugun.innerHTML = '<option value="">구/군</option>';
  }

  $sido.addEventListener("change", function () {
    const sido = this.value;
    resetGugun();
    if (!sido) return;

    fetch("${pageContext.request.contextPath}/api/store-address.do?sido=" + encodeURIComponent(sido))
      .then(res => res.json())
      .then(data => {
        if (!data.code) return;
        data.result.list.forEach(item => {
          const opt = document.createElement("option");
          opt.value = item.address;
          opt.textContent = item.address;
          $gugun.appendChild(opt);
        });
      })
      .catch(err => console.error("구/군 로딩 실패", err));
  });
});
</script>
