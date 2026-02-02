<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="site-container">
    <nav class="page-menu">
        <ul class="page-menu__list">
            <!--            현재 페이지인 경우 page-menu__item--active 추가-->
            <li class="page-menu__item page-menu__item--active">
                <a href="${pageContext.request.contextPath}/information-center/store-offer/offer.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">신규 직영점 입점제의</span>
                    </div>
                </a>
            </li>
            
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/information-center/consulting/br.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">점포개설문의</span>
                    </div>
                </a>
            </li>
        </ul>
    </nav>

    <section id="content" class="store-offer-offer">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        신규 직영점 입점 제의
                    </h2>
                </div>

                <div class="page-header__content">
                    <dl class="page-header__text">
                        <dt>아이스크림 전문기업 배스킨라빈스</dt>
                        <dd>
                            한달 31일 내내 새로운 맛을 선사한다 (One flavor each day of the month)라는 의미가 '31' 이라는 숫자로<br>
                            널리 알려진 배스킨라빈스는 세계 35개국에 점포를 운영하고 있는 세계No.1 아이스크림 브랜드 입니다.
                        </dd>
                    </dl>
                </div>
            </div>
        </header>

        <div class="store-offer-offer__container">
            <div class="store-offer-offer__list">
                <div class="store-offer-offer__item">
                    <h3 class="store-offer-offer__title">운영방식</h3>
                    <div class="store-offer-offer__content">
                        <p>
                            <strong>
                                배스킨라빈스는 당사(비알코리아㈜)가 운영하는 직영점과 가맹 계약 체결 후 개인(또는 법인)이 운영하는 가맹점 운영 중입니다.<br>
                                전국 가맹 상담은 본 홈페이지 상 가맹점 개발담당자를 통해 가능하시며,<br>
                                따라서 해당 페이지는 당사가 운영하는 직영기준으로 신규 입점 제의하는 목적으로 운영됨을 안내드립니다
                            </strong>
                        </p>
                    </div>
                </div>
                <div class="store-offer-offer__item">
                    <h3 class="store-offer-offer__title">임대차방식</h3>
                    <div class="store-offer-offer__content">
                        <ul>
                            <li>보증금 /고정 월세</li>
                            <li>보증금 /변동 월세 (수수료방식)</li>
                        </ul>
                        <dl>
                            <dt>수수료 방식이란?</dt>
                            <dd>
                                월 순 매출의 일정 비율을 임대인에게 임대료로 지급하는 방식<br>
                                예) 월 순 매출금액 X 수수료율 (VAT 별도)
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="store-offer-offer__item">
                    <h3 class="store-offer-offer__title">입점 제의 안내</h3>
                    <div class="store-offer-offer__content">
                        <p>
                            <strong>
                                배스킨라빈스 직영점 입점에 관심이 있으신 분은 [입점 제의 상담 신청] 버튼을 눌러 신청해 주시면 <br>
                                친절하고 상세하게 상담해 드리겠습니다.
                            </strong>
                        </p>
                        <dl>
                            <dt>
                                상담 신청 전 꼭 확인해 주세요.
                            </dt>
                            <dd>
                                답변 시 입점 불가 사유, 상권분석 등을 유선 설명해 드리지 않습니다.<br>
                                입점 제의 주소가 불분명할 경우 검토가 불가하므로 반드시 확인하시기 바랍니다
                            </dd>
                        </dl>
                    </div>
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/information-center/store-offer/register.do" method="get" class="store-offer-offer__form">
                <div>
                    <p>※ 상기 사항 확인하였으며, 신청에 동의합니다.</p>

                    <fieldset class="store-offer-offer__fieldset">
                        <legend>프로필 선택 폼</legend>
                        <label class="store-offer-offer__label">
                            <input type="radio" name="offer_agree" value="N" class="store-offer-offer__input">
                            <span class="store-offer-offer__text">동의하지 않습니다</span>
                        </label>

                        <label class="store-offer-offer__label">
                            <input type="radio" name="offer_agree" value="Y" class="store-offer-offer__input">
                            <span class="store-offer-offer__text">동의합니다</span>
                        </label>
                    </fieldset>
                </div>

                <button type="submit" class="store-offer-offer__submit">입점 신청하기</button>
            </form>
        </div>
    </section>
</div>


