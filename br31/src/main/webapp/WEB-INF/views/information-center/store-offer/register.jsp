<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="site-container">
    <section id="content" class="store-offer-register">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        신규 직영점 입점 제의
                    </h2>
                </div>

                <div class="page-header__content">
                    <p class="page-header__text">
                        배라와의 시작, 배라로의 시작
                    </p>
                </div>
            </div>
        </header>

        <div class="store-offer-register__container">
            <form action="register-proc.php" class="store-offer-register__form form" method="post">
                <input type="hidden" name="csrf_token" value="MTc2NjI4ODc3MmUzOWY4ZjU3YjU5MmM5Y2U4MDliNmMyMzQyYWJkZjdkOGMyZDhjYzdhZDFmYzFhMzhjMDMzNDhjODkzZDM5NmRkMjlmMmNmNWY1YzUxYzkx">
                <input type="hidden" name="offer_agree" value="Y">
                <legend>신규 직영점 입점 제의 입력 폼</legend>

                <fieldset class="store-offer-register__fieldset">
                    <section class="store-offer-register__content">
                        <header class="store-offer-register__header">
                            <h3 class="form__title">배스킨라빈스 직영점포 입점 제안 개인정보 수집이용 동의안내</h3>
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
                                <td>이름, 연락처, 이메일, 소유 부동산 주소, 희망 임대조건</td>
                                <td>배스킨라빈스 직영 입점 상담</td>
                                <td>입점 상담 신청 후 12개월 또는 동의 철회 시 까지</td>
                            </tr>
                            </tbody>
                        </table>

                        <div class="store-offer-register__box">
                            <label class="form-radio">
                                <input type="radio" class="form-radio__input privacy" name="is_policy" value="Y">
                                <span class="form-radio__text">동의합니다</span>
                            </label>

                            <label class="form-radio">
                                <input type="radio" class="form-radio__input" name="is_policy" value="N">
                                <span class="form-radio__text">동의하지 않습니다</span>
                            </label>
                        </div>

                        <p class="store-offer-register__essential">*표시 항목은 필수 입력 항목입니다</p>

                        <div class="store-offer-register__table">
                            <table class="table table--line layout-table">
                                <tbody>
                                <tr>
                                    <th class="form__name">* 점포 구분</th>
                                    <td class="table__area">
                                        <div class="store-offer-register__area">
                                                                                            <label class="form-radio">
                                                    <input type="radio" class="form-radio__input type" name="store" value="A">
                                                    <span class="form-radio__text">일반 (일반 건물에 입점 매장)</span>
                                                </label>
                                                                                                <label class="form-radio">
                                                    <input type="radio" class="form-radio__input type" name="store" value="B">
                                                    <span class="form-radio__text">토지 (신축 단독매장)</span>
                                                </label>
                                                                                                <label class="form-radio">
                                                    <input type="radio" class="form-radio__input type" name="store" value="C">
                                                    <span class="form-radio__text">특수상권(마트, 복합몰, 리조트,병원,호텔 등)</span>
                                                </label>
                                                                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 추천인 구분</th>
                                    <td class="table__area">
                                        <div class="store-offer-register__area">
                                                                                            <label class="form-radio">
                                                    <input type="radio" class="form-radio__input recommender" name="recommender" value="A">
                                                    <span class="form-radio__text">임대인 본인 (소유권자)</span>
                                                </label>
                                                                                                <label class="form-radio">
                                                    <input type="radio" class="form-radio__input recommender" name="recommender" value="B">
                                                    <span class="form-radio__text">대리인 (부동산, 에이전트)</span>
                                                </label>
                                                                                                <label class="form-radio">
                                                    <input type="radio" class="form-radio__input recommender" name="recommender" value="C">
                                                    <span class="form-radio__text">임대인 지인 (가족, 지인)</span>
                                                </label>
                                                                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 추천점포 주소</th>
                                    <td class="table__area">
                                        <div class="table__box address address--number">
                                            <input type="text" class="form__input table__input" value="" name="zipcode" readonly="">
                                            <button type="button" class="address__button">주소 찾기</button>
                                        </div>
                                        <input type="text" name="addr" class="form__input table__input table__input--long address address--default" placeholder="기본 주소를 입력하세요." readonly="" value="">
                                        <input type="text" name="addr_detail" placeholder="상세 주소를 입력하세요" class="form__input table__input table__input--long address address--detail" value="">

                                        <p class="table__alert">
                                            * 주소 검색이 안되실 경우에 추천 주소 (시, 군, 구)를 임의로 선택 후 상세주소에 실제 주소를 입력하시거나<br>
                                            아래 기타 상세에 별도로 입력하여 주시면 담당자가 확인 가능합니다
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 이름</th>
                                    <td class="table__area">
                                        <input type="text" class="table__input form__input name" maxlength="30" name="applicant_name">
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 연락처</th>
                                    <td class="table__area">
                                        <div class="form-tel">
                                            <input type="hidden" class="form-tel__input tel">
                                            <input type="text" class="form-tel__input form-tel__input--large" maxlength="11" name="applicant_tel">
<!--                                            <input type="text" class="form-tel__input" maxlength="3" name="tel1">-->
<!--                                            <div class="form-tel__hypen"></div>-->
<!--                                            <input type="text" class="form-tel__input" maxlength="4" name="tel2">-->
<!--                                            <div class="form-tel__hypen"></div>-->
<!--                                            <input type="text" class="form-tel__input" maxlength="4" name="tel3">-->
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 이메일</th>
                                    <td class="table__area">
                                        <input type="text" class="table__input form__input email" name="applicant_email">
<!--                                        <div class="form-email">-->
<!--                                            <input type="hidden" class="form-email__all">-->
<!--                                            <input type="text" class="form-email__first" name="email1">-->
<!--                                            <span class="form-email__text">@</span>-->
<!--                                            <input type="text" class="form-email__last" name="email2">-->
<!--                                            <select name="" class="form-email__select">-->
<!--                                                <option value="">직접입력</option>-->
<!--                                                <option value="gmail.com">gmail.com</option>-->
<!--                                                <option value="naver.com">naver.com</option>-->
<!--                                                <option value="hanmail.net">hanmail.net</option>-->
<!--                                            </select>-->
<!--                                        </div>-->
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 면적</th>
                                    <td class="table__area">
                                        <div class="store-offer-register__area">
                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--large land-area" placeholder="토지면적을 입력해주세요." name="land_area">
                                                <span class="store-offer-register__text">평</span>
                                            </label>

                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--large exclusive-area" placeholder="전용면적을 입력해주세요." name="dedicated_area">
                                                <span class="store-offer-register__text">평</span>
                                            </label>

                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--short floor" placeholder="예시: 1층/1~3층" name="floor">
                                                <span class="store-offer-register__text">층</span>
                                            </label>

                                            <p class="table__message">* 전용면적 : 건물 내 실 면적</p>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 희망 임대조건</th>
                                    <td class="table__area">
                                        <div class="store-offer-register__area">
                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--grande deposit" placeholder="보증금을 입력해주세요" name="deposit">
                                                <span class="store-offer-register__text">원</span>
                                            </label>

                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--grande rent" placeholder="임대료를 입력해주세요." name="rent">
                                                <span class="store-offer-register__text">원</span>
                                            </label>
                                        </div>

                                        <div class="store-offer-register__area">
                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--grande charge" placeholder="희망 수수료율을 입력해주세요." name="hope_fee">
                                                <span class="store-offer-register__text">%</span>
                                            </label>

                                            <label class="store-offer-register__label">
                                                <input type="text" class="form__input table__input table__input--grande maintenance-charge" placeholder="관리비를 입력해주세요" name="administration_cost">
                                                <span class="store-offer-register__text">원</span>
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="form__name">* 기타 문의 내용</th>
                                    <td class="table__area table__area--no-distance">
                                        <div class="store-offer-register-textarea">
                                            <textarea name="other_inquiry_details" class="store-offer-register-textarea__textarea" placeholder=": 입점 신청 주소지 주변 상권에 대한 상세 설명
: 임차로 협의 가능 여부
: 복수 총일 경우 층별 면적 등" maxlength="1800"></textarea>
                                            <p class="store-offer-register-textarea__current-text current-text">[0/1800]</p>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>


                        <div class="store-offer-register-buttons">
                            <a href="/information-center/store-offer/offer.php" class="store-offer-register-buttons__cancel">취소</a>
                            <button type="submit" class="store-offer-register-buttons__submit">등록</button>
                        </div>
                    </section>
                </fieldset>
            </form>

            <div id="post-code-modal" class="post-code-popup modal fade">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div id="post-code" class="post-code">
                            </div>
                        </div>

                        <button type="button" class="btn-close">
                            <span>닫기</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

