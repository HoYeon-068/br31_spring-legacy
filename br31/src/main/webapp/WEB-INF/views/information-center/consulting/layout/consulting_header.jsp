<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="page-menu">
        <ul class="page-menu__list">
            <!--            현재 페이지인 경우 page-menu__item--active 추가-->
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/information-center/store-offer/offer.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">신규 직영점 입점제의</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item page-menu__item--active">
                <a href="${pageContext.request.contextPath}/information-center/consulting/br.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">점포개설문의</span>
                    </div>
                </a>
            </li>
        </ul>
    </nav>

    <div id="content" class="consulting-br">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        점포개설문의
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

        <nav class="page-tab">
            <ul class="page-tab__list">
                <!-- 현재 페이지인 경우 page-tab__item--active 추가 -->
                <li class="page-tab__item ${activeMenu eq 'br'?'page-tab__item--active':'' }">
                    <a href="${pageContext.request.contextPath}/information-center/consulting/br.do" class="page-tab__link">
                        <span class="page-tab__text">BR시스템</span>
                    </a>
                </li>
                <li class="page-tab__item ${activeMenu eq 'process'?'page-tab__item--active':'' }">
                    <a href="${pageContext.request.contextPath}/information-center/consulting/process.do" class="page-tab__link">
                        <span class="page-tab__text">창업절차</span>
                    </a>
                </li>
                <li class="page-tab__item ${activeMenu eq 'condition'?'page-tab__item--active':'' }">
                    <a href="${pageContext.request.contextPath}/information-center/consulting/condition.do" class="page-tab__link">
                        <span class="page-tab__text">창업조건</span>
                    </a>
                </li>
                <li class="page-tab__item ${activeMenu eq 'counsel'?'page-tab__item--active':'' }">
                    <a href="${pageContext.request.contextPath}/information-center/consulting/counsel.do" class="page-tab__link">
                        <span class="page-tab__text">상담안내</span>
                    </a>
                </li>
                <li class="page-tab__item ${activeMenu eq 'store-list'?'page-tab__item--active':'' }">
                    <a href="${pageContext.request.contextPath}/information-center/consulting/store-list.do" class="page-tab__link">
                        <span class="page-tab__text">신규후보매장</span>
                    </a>
                </li>
                <li class="page-tab__item ${activeMenu eq 'faq'?'page-tab__item--active':'' }">
                    <a href="${pageContext.request.contextPath}/information-center/consulting/faq.do" class="page-tab__link">
                        <span class="page-tab__text">창업FAQ </span>
                    </a>
                </li>
            </ul>
        </nav>