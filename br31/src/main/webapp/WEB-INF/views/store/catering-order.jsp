<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="site-container">
    <jsp:include page="../store/layout/store_header.jsp" /> 

    <div class="store-catering-order">
        <div id="content" class="store-catering-order__container">
            <section>
                <header class="page-header">
                    <div class="page-header__container">
                        <div class="page-header__content">
                            <h2 class="page-header__title">
                                단체 주문서 작성
                            </h2>
                        </div>

                        <div class="page-header__content">
                            <p class="page-header__text">
                                단체주문도 언제나, 어디서나 배스킨라빈스<i>!</i>
                            </p>
                        </div>
                    </div>
                </header>

                <div class="store-catering-order__content">
                    <form action="https://www.baskinrobbins.co.kr/store/catering-order-proc.php" method="post" class="store-catering-order-form form">
                        <input type="hidden" name="csrf_token" value="MTc2NDAzMjAzODZkOTdiOWNkMzA3Nzk5NTVkNDg0OTQxNDI2NTgzNmE4ZGEzMDQ1OWNlMzZkMGY4MjgzNTdmZjU0ZDM5OWM1ZGJjYjg3ODlhNjRhNzMzYjc1">
                        <legend>단제 주문서 입력 폼</legend>

                        <fieldset class="store-catering-order-form__container">
                            <section class="store-catering-order-form__content">
                                <header class="store-catering-order-form__header">
                                    <h3 class="form__title">개인정보 수집, 이용 동의(필수)</h3>
                                    <button type="button" class="store-catering-order-form__button store-catering-order-form__button--benefits" data-bs-toggle="modal" data-bs-target="#benefits">단체주문 혜택보기</button>
                                </header>

                                <p class="store-catering-order-form__description">
                                    배스킨라빈스 단체주문 서비스 회원 가입, 고객상담, 고지사항 전달등을 위해
                                    아래와 같이 개인정보를 수집 이용 합니다
                                </p>

                                <table class="form-table">
                                    <thead>
                                    <tr>
                                        <th>수집목적</th>
                                        <th>필수수집항목</th>
                                        <th>보유.이용기간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>회원식별 및 서비스 제공</td>
                                        <td>성명,전화번호,주소,이메일</td>
                                        <td rowspan="2">동의 철회시</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            서비스 변경 및 고지사항 전달
                                        </td>
                                        <td>이메일</td>
                                    </tr>
                                    </tbody>

                                </table>

                                <div class="store-catering-order-form__area">
                                    <p>
                                        동의를 거부할 권리가 있습니다. 다만, 필수 동의 거부시 서비스가 반드시 제한 될 수 있습니다.<br>
                                        위 개인정보 수집,이용에 동의 합니다
                                    </p>

                                    <div class="form__box">
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
                            </section>

                            <section class="store-catering-order-form__content store-catering-order-form__content--line">
                                <header class="store-catering-order-form__header">
                                    <h3 class="form__title form__title--point">개인정보 제3자 제공(선택)
                                    </h3>
                                </header>

                                <p class="store-catering-order-form__description">
                                    동의를 거부할 권리 있으며,제3자 제공의 동의 여부와 관계없이 서비스를 가능하나 개인정보 제3자 제공 동의 거부시 , 금액 할인에 대한  서비스를 받으실 수 없습니다.
                                </p>

                                <table class="form-table">
                                    <thead>
                                    <tr>
                                        <th>제공처</th>
                                        <th>필수수집항목</th>
                                        <th>제공항목</th>
                                        <th>이용기간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>해피오더</td>
                                        <td>금액할인,이벤트참여,경품발송</td>
                                        <td>성명,전화번호,이메일,주소</td>
                                        <td rowspan="2">동의 철회시</td>
                                    </tr>
                                    <tr>
                                        <td>쿠프마케팅</td>
                                        <td>금액할인,이벤트참여,경품발송</td>
                                        <td>성명,전화번호</td>
                                    </tr>
                                    </tbody>
                                </table>

                                <div class="store-catering-order-form__area">
                                    <p>
                                        위 개인정보 수집,이용에 동의 합니다
                                    </p>

                                    <div class="form__box">
                                        <label class="form-radio">
                                            <input type="radio" class="form-radio__input privacy" name="is_policy_third" value="Y">
                                            <span class="form-radio__text">동의합니다</span>
                                        </label>

                                        <label class="form-radio">
                                            <input type="radio" class="form-radio__input" name="is_policy_third" value="N">
                                            <span class="form-radio__text">동의하지 않습니다</span>
                                        </label>
                                    </div>
                                </div>
                            </section>

                            <section class="store-catering-order-form__content store-catering-order-form__content--line">
                                <header class="store-catering-order-form__header">
                                    <h3 class="form__title form__title--point">마케팅 및 광고 활용 동의(선택)</h3>
                                </header>

                                <p class="store-catering-order-form__description">
                                    배스킨라빈스 에서 제공하는 이벤트 및 서비스(제휴서비스포함) 안내를 광고성 정보를 받으시려면 마케팅 이용 동의 하여 주시기 바랍니다.<br>
                                    동의 거부시 금액 할인에 대한 서비스및 경품 지급을 받으실 수 없습니다
                                </p>

                                <table class="form-table">
                                    <thead>
                                    <tr>
                                        <th>수집목적</th>
                                        <th>필수수집항목</th>
                                        <th>보유.이용기간</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>이벤트 참여 기회 제공</td>
                                        <td>성명,전화번호,이메일</td>
                                        <td rowspan="2">동의 철회시</td>
                                    </tr>
                                    <tr>
                                        <td>이벤트,광고,프로모션 안내</td>
                                        <td>성명,전화번호,이메일</td>
                                    </tr>
                                    </tbody>

                                </table>

                                <div class="store-catering-order-form__area">
                                    <p>
                                        동의를 거부할 권리가 있으며,마케팅등의 여부와 관계없이 단체 주문은 가능합니다.<br>
                                        다만 거부시 , 상기 목적에 명시된 서비스를 받으실 수 없습니다.<br>
                                        위 마케팅 및 광고 활용 이용에 동의 합니다
                                    </p>

                                    <div class="form__box">
                                        <label class="form-radio">
                                            <input type="radio" class="form-radio__input privacy" name="is_policy_ad" value="Y">
                                            <span class="form-radio__text">동의합니다</span>
                                        </label>

                                        <label class="form-radio">
                                            <input type="radio" class="form-radio__input" name="is_policy_ad" value="N">
                                            <span class="form-radio__text">동의하지 않습니다</span>
                                        </label>
                                    </div>
                                </div>
                            </section>

                            <section class="store-catering-order-form__content">
                                <header class="store-catering-order-form__header">
                                    <h3 class="form__title">단체주문 주문서 작성자 정보</h3>
                                </header>

                                <div class="store-catering-order-form__table">
                                    <table class="table layout-table">
                                        <tbody>
                                        <tr>
                                            <th class="form__name">이름</th>
                                            <td class="table__area">
                                                <input type="text" placeholder="이름 또는 업체명을 입력해 주세요" class="form__input table__input name" name="applicant_name" value="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="form__name">신청자 이메일</th>
                                            <td class="table__area">
                                                <div class="table__box">
                                                    <input type="text" placeholder="이메일 입력" class="form__input table__input email" name="applicant_email" value="">
                                                    <p class="table__alert">* 필독 ! 작성하신 주소로 세부 내용이 안내 됩니다. 정확한 이메일 주소를 입력해주세요</p>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="form__name">신청자 연락처</th>
                                            <td class="table__area">
                                                <div class="table__box">
                                                    <div class="form-tel table__tel">
                                                        <input type="text" class="form-tel__input form-tel__input--large" name="applicant_tel" value="" maxlength="11">
<!--                                                        <div class="form-tel__hypen"></div>-->
<!--                                                        <input type="text" class="form-tel__input" maxlength="4" value="--><!--">-->
<!--                                                        <div class="form-tel__hypen"></div>-->
<!--                                                        <input type="text" class="form-tel__input" maxlength="4" value="--><!--">-->
                                                    </div>
                                                    <p class="table__message">휴대폰번호 또는 유선전화 중 연락 가능한 전화번호를 입력해주세요</p>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="form__name">배송 희망 주소</th>
                                            <td class="table__area">
                                                <div class="table__box address address--number">
                                                    <input type="text" class="form__input table__input" name="delivery_zipcode" value="" readonly placeholder="우편번호">
                                                    <button type="button" class="store-catering-order-form__button store-catering-order-form__button--address" data-bs-toggle="modal" data-bs-target="#post-code-modal">우편번호 찾기</button>
                                                </div>

                                                <input type="text" class="form__input table__input table__input--long address address--default" placeholder="기본 주소를 입력하세요." readonly name="delivery_addr" value="">
                                                <input type="text" placeholder="상세 주소를 입력하세요" class="form__input table__input table__input--long address address--detail" name="delivery_detail" value="">
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>

                            <section class="store-catering-order-form__content">
                                <header class="store-catering-order-form__header">
                                    <h3 class="form__title">단체주문 주문서 세부내용 작성</h3>
                                </header>

                                <div class="store-catering-order-form__table store-catering-order-form__table--noborder">
                                    <table class="table table--line layout-table">
                                        <tbody>
                                        <tr>
                                            <th class="form__name">제품 수령 방식</th>
                                            <td class="table__area table__radios">
                                                <div class="table__box">
                                                    <label class="form-radio">
                                                        <input type="radio" name="get_product" class="form-radio__input" name="get_product" value="A">
                                                        <span class="form-radio__text">한곳으로 배송</span>
                                                    </label>
                                                    <label class="form-radio">
                                                        <input type="radio" name="get_product" class="form-radio__input" name="get_product" value="B">
                                                        <span class="form-radio__text">여러 곳 배달</span>
                                                    </label>
                                                </div>
                                                <div class="table__box">
                                                    <label class="form-radio">
                                                        <input type="radio" name="get_product" class="form-radio__input" name="get_product" value="C">
                                                        <span class="form-radio__text">모바일 교환권</span>
                                                    </label>
                                                    <label class="form-radio">
                                                        <input type="radio" name="get_product" class="form-radio__input" name="get_product" value="E">
                                                        <span class="form-radio__text">지류상품권</span>
                                                    </label>
                                                </div>
                                                <div class="table__box">
                                                    <label class="form-radio">
                                                        <input type="radio" name="get_product" class="form-radio__input" name="get_product" value="F">
                                                        <span class="form-radio__text">기타</span>
                                                    </label>
                                                    <input type="text" class="form__input table__input table__input--long" name="get_product_etc">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="form__name">구매 희망 상품군</th>
                                            <td class="table__area buy">
                                                <div class="store-catering-order-form__box">
                                                    <a href="../menu/list1bdf.html?cate-gory=F" target="_blank" class="store-catering-order-form__button store-catering-order-form__button--products" style="width:136px;">제품 이미지로 보기</a>                                                   

                                                    <p class="table__info top">중복 선택가능</p>

                                                    <div class="table__box">
                                                        <label class="form-checkbox">
                                                            <input type="checkbox" class="form-checkbox__input" data-name="A_product" value="아이스크림 케이크">
                                                            <span class="form-checkbox__text">아이스크림 케이크 </span>
                                                        </label>
                                                        <!--<a href="https://www.baskinrobbins.co.kr/play/event/view.php?seq=259" target="_blank" class="store-catering-order-form__button store-catering-order-form__button--products" style="top:30px;color:#f9bf1a;background:#a70e16;width:136px;">x-mas 케이크 라인업</a>-->
                                                    </div>

                                                    <div class="table__box">
                                                        <label class="form-checkbox">
                                                            <input type="checkbox" class="form-checkbox__input" data-name="B_product" value="블록팩 (싱글 레귤러 크기, 170ml)">
                                                            <span class="form-checkbox__text">블록팩 (싱글 레귤러 크기, 170ml)</span>
                                                        </label>
                                                    </div>

                                                    <div class="table__box">
                                                        <label class="form-checkbox">
                                                            <input type="checkbox" class="form-checkbox__input" data-name="C_product" value="레디팩 (파인트크기 474ml)">
                                                            <span class="form-checkbox__text">레디팩 (파인트크기 474ml)</span>
                                                        </label>
                                                    </div>

                                                    <!-- 20240725 요청으로 제외 -->
                                                    <!-- <div class="table__box">
                                                        <label class="form-checkbox">
                                                            <input type="checkbox" class="form-checkbox__input" data-name="F_product" value="레디팩 미니 (260ml)">
                                                            <span class="form-checkbox__text">레디팩 미니 (260ml)</span>
                                                        </label>
                                                    </div> -->

                                                    <div class="table__box">
                                                    <label class="form-checkbox">
                                                            <input type="checkbox" class="form-checkbox__input" data-name="D_product" value="디저트류 (모찌, 마카롱, 스틱바 등)">
                                                            <span class="form-checkbox__text">디저트류 (모찌, 마카롱, 스틱바 등)</span>
                                                        </label>
                                                    </div>

                                                    <div class="table__box">
                                                        <label class="form-checkbox">
                                                            <input type="checkbox" class="form-checkbox__input" data-name="E_product" value="기타">
                                                            <span class="form-checkbox__text">기타</span>
                                                        </label>
                                                        <input type="text" class="form__input table__input table__input--long" name="hope_product_etc">
                                                    </div>
                                                    
                                                    <p class="table__info bottom">
                                                        * 구매를 원하시는 정확한 상품명을 기재해 주시면, 단체주문이 원활히 이루어 집니다.
                                                        
                                                    </p>                                                    

                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="form__name">제품 수령 희망 일자</th>
                                            <td class="table__area date">
                                                <div class="table__box">
                                                    <div class="picker">
                                                        <input type="text" name="get_product_date" value="" class="form__input table__input picker__input" readonly>
                                                    </div>
                                                    <select name="get_product_hour" id="" class="table__select time">
                                                        <option value="">선택</option>
                                                                                                                    <option value="00">00</option>
                                                                                                                        <option value="01">01</option>
                                                                                                                        <option value="02">02</option>
                                                                                                                        <option value="03">03</option>
                                                                                                                        <option value="04">04</option>
                                                                                                                        <option value="05">05</option>
                                                                                                                        <option value="06">06</option>
                                                                                                                        <option value="07">07</option>
                                                                                                                        <option value="08">08</option>
                                                                                                                        <option value="09">09</option>
                                                                                                                        <option value="10">10</option>
                                                                                                                        <option value="11">11</option>
                                                                                                                        <option value="12">12</option>
                                                                                                                        <option value="13">13</option>
                                                                                                                        <option value="14">14</option>
                                                                                                                        <option value="15">15</option>
                                                                                                                        <option value="16">16</option>
                                                                                                                        <option value="17">17</option>
                                                                                                                        <option value="18">18</option>
                                                                                                                        <option value="19">19</option>
                                                                                                                        <option value="20">20</option>
                                                                                                                        <option value="21">21</option>
                                                                                                                        <option value="22">22</option>
                                                                                                                        <option value="23">23</option>
                                                                                                                </select>
                                                    <span class="table__text">시</span>
                                                    <select name="get_product_minute" id="" class="table__select minute">
                                                        <option value="">선택</option>
                                                                                                                    <option value="00">00</option>
                                                                                                                        <option value="01">01</option>
                                                                                                                        <option value="02">02</option>
                                                                                                                        <option value="03">03</option>
                                                                                                                        <option value="04">04</option>
                                                                                                                        <option value="05">05</option>
                                                                                                                        <option value="06">06</option>
                                                                                                                        <option value="07">07</option>
                                                                                                                        <option value="08">08</option>
                                                                                                                        <option value="09">09</option>
                                                                                                                        <option value="10">10</option>
                                                                                                                        <option value="11">11</option>
                                                                                                                        <option value="12">12</option>
                                                                                                                        <option value="13">13</option>
                                                                                                                        <option value="14">14</option>
                                                                                                                        <option value="15">15</option>
                                                                                                                        <option value="16">16</option>
                                                                                                                        <option value="17">17</option>
                                                                                                                        <option value="18">18</option>
                                                                                                                        <option value="19">19</option>
                                                                                                                        <option value="20">20</option>
                                                                                                                        <option value="21">21</option>
                                                                                                                        <option value="22">22</option>
                                                                                                                        <option value="23">23</option>
                                                                                                                        <option value="24">24</option>
                                                                                                                        <option value="25">25</option>
                                                                                                                        <option value="26">26</option>
                                                                                                                        <option value="27">27</option>
                                                                                                                        <option value="28">28</option>
                                                                                                                        <option value="29">29</option>
                                                                                                                        <option value="30">30</option>
                                                                                                                        <option value="31">31</option>
                                                                                                                        <option value="32">32</option>
                                                                                                                        <option value="33">33</option>
                                                                                                                        <option value="34">34</option>
                                                                                                                        <option value="35">35</option>
                                                                                                                        <option value="36">36</option>
                                                                                                                        <option value="37">37</option>
                                                                                                                        <option value="38">38</option>
                                                                                                                        <option value="39">39</option>
                                                                                                                        <option value="40">40</option>
                                                                                                                        <option value="41">41</option>
                                                                                                                        <option value="42">42</option>
                                                                                                                        <option value="43">43</option>
                                                                                                                        <option value="44">44</option>
                                                                                                                        <option value="45">45</option>
                                                                                                                        <option value="46">46</option>
                                                                                                                        <option value="47">47</option>
                                                                                                                        <option value="48">48</option>
                                                                                                                        <option value="49">49</option>
                                                                                                                        <option value="50">50</option>
                                                                                                                        <option value="51">51</option>
                                                                                                                        <option value="52">52</option>
                                                                                                                        <option value="53">53</option>
                                                                                                                        <option value="54">54</option>
                                                                                                                        <option value="55">55</option>
                                                                                                                        <option value="56">56</option>
                                                                                                                        <option value="57">57</option>
                                                                                                                        <option value="58">58</option>
                                                                                                                        <option value="59">59</option>
                                                                                                                </select>
                                                    <span class="table__text">분</span>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="store-catering-order-form__table store-catering-order-form__table--noborder">
                                    <table class="table table--line">
                                        <tbody>
                                        <tr>
                                            <th class="form__name">주문 정보</th>
                                            <td class="table__area">
                                                <div class="list">
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="store-catering-order-form__table store-catering-order-form__table--noborder">
                                    <table class="table table--line">
                                        <tbody>
                                        <tr>
                                            <th class="form__name">요청사항</th>
                                            <td class="table__area textarea">
                                                <div class="table__textarea">
                                                    <textarea name="request_content" placeholder="요청 사항 혹은 문의 내용을 입력 해주세요.&#10;해당 내용에 대한답변은 세부내용 안내 시 함께 답변 드립니다."></textarea>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </section>

                            <div class="store-catering-order__box">
                                <div class="store-catering-order-notice">
                                    <p class="store-catering-order-notice__title">* 제출 전 읽어주세요 !</p>
                                    <ul class="store-catering-order-notice__list">
                                        <li class="store-catering-order-notice__item">제품을 준비 할 수 있는 넉넉한 기간은 3일입니다 최소 3일전에 접수 부탁 드립니다. (공휴일제외)</li>
                                        <li class="store-catering-order-notice__item">단체주문 일정이 급하신 고객님은 유선으로 전화상담 해주시면, 친절히 도와 드리겠습니다.</li>
                                        <li class="store-catering-order-notice__item">트레일러 / 이동식 부스 / 저장고 등의 설치비용은 유상서비스로 별도 청구 됩니다.</li>
                                        <li class="store-catering-order-notice__item">본사와 사전에 협의되지 않는 내용에 대한 서비스는 제한 될 수 있습니다.</li>
                                    </ul>
                                </div>

                                <button type="submit" class="store-catering-order-form__button store-catering-order-form__button--submit form__submit">제출하기</button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </section>

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

            <div id="benefits" class="benefits modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <article class="benefits__container">
                            <div class="benefits__content">
                                <section class="benefits__item benefits__item--company">
                                    <div class="benefits__box">
                                        <h3 class="benefits__title">
                                            <span class="benefits__category">아이스크림 제품</span><br>
                                            회사, 관공서, 은행, 학교 등<br>
                                            <strong class="benefits__point">한 장소로 일괄배송</strong>
                                        </h3>

                                        <dl class="benefits__list">
                                            <div class="benefits__block">
                                                <dt class="benefits__name">할인 및 혜택</dt>
                                                <dd class="benefits__text">할인혜택 <strong class="benefits__point">별도협의 필요</strong></dd>
                                                <dd class="benefits__text">50만원 이상 <strong class="benefits__point">배송/배달 서비스</strong></dd>
                                            </div>
                                            <div class="benefits__block">
                                                <dt class="benefits__name">결제방식</dt>
                                                <dd class="benefits__text">현금 (계좌이체) / 카드 (전화결제)</dd>
                                            </div>
                                        </dl>
                                    </div>
                                </section>

                                <section class="benefits__item benefits__item--delivery">
                                    <div class="benefits__box">
                                        <h3 class="benefits__title">
                                            <span class="benefits__category">아이스크림 제품</span><br>
                                            전국 VIP 고객에게 원하는<br>
                                            시간 / 장소로 배달<br>
                                            <strong class="benefits__point">여러곳 배달</strong>
                                        </h3>

                                        <dl class="benefits__list">
                                            <div class="benefits__block">
                                                <dt class="benefits__name">할인 및 혜택</dt>
                                                <dd class="benefits__text">50만원 이상 <strong class="benefits__point">5%</strong></dd>
                                                <dd class="benefits__text">100만원 이상 <strong class="benefits__point">별도협의</strong></dd>
                                                <dd class="benefits__text">50만원 이상 <strong class="benefits__point">주문가능</strong></dd>
                                            </div>
                                            <div class="benefits__block">
                                                <dt class="benefits__name">결제방식</dt>
                                                <dd class="benefits__text">카드 (전화결제)</dd>
                                            </div>
                                        </dl>
                                    </div>
                                </section>

                                <section class="benefits__item benefits__item--mobile-voucher">
                                    <div class="benefits__box">
                                        <h3 class="benefits__title">
                                            <span class="benefits__category">온/오프라인 상품권</span><br>
                                            매장, 해피오더, 배달앱<br>
                                            다양한 채널 결제 가능<br>
                                            <strong class="benefits__point">모바일교환권</strong>
                                        </h3>

                                        <dl class="benefits__list">
                                            <div class="benefits__block">
                                                <dt class="benefits__name">할인 및 혜택</dt>
                                                <dd class="benefits__text">
                                                    500만원 이상 <strong class="benefits__point">1%</strong><br>
                                                    <strong class="benefits__point">발송료 무료</strong> (건당 50원)
                                                </dd>
                                            </div>
                                            <div class="benefits__block">
                                                <dt class="benefits__name">결제방식</dt>
                                                <dd class="benefits__text">
                                                    현금 (계좌이체) /<br>
                                                    법인카드 (전화결제)
                                                </dd>
                                            </div>
                                        </dl>
                                    </div>
                                </section>

                                <section class="benefits__item benefits__item--paper-voucher">
                                    <div class="benefits__box">
                                        <h3 class="benefits__title">
                                            <span class="benefits__category">온/오프라인 상품권</span><br>
                                            모바일사용이 익숙지<br>
                                            않은 분께 감사의 마음을<br>
                                            전하고 싶다면?<br>
                                            <strong class="benefits__point">지류상품권</strong>
                                        </h3>

                                        <dl class="benefits__list">
                                            <div class="benefits__block">
                                                <dt class="benefits__name">할인 및 혜택</dt>
                                                <dd class="benefits__text">300만원 이상 <strong class="benefits__point">2%</strong></dd>
                                                <dd class="benefits__text">500만원 이상 <strong class="benefits__point">3%</strong></dd>
                                                <dd class="benefits__text">포장봉투 제공 /  등기발송 (1곳)</dd>
                                            </div>
                                            <div class="benefits__block">
                                                <dt class="benefits__name">결제방식</dt>
                                                <dd class="benefits__text">
                                                    현금 (계좌이체) /<br>
                                                    법인카드 (전화결제)
                                                </dd>
                                            </div>
                                        </dl>
                                    </div>
                                </section>

                                <button type="button" class="btn-close benefits__close" data-bs-dismiss="modal">
                                    <span class="benefits__hidden">닫기</span>
                                </button>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

