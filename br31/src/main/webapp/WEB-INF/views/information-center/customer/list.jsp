<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>배스킨라빈스 | 고객센터</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

    <style>
        .customer-list__process--item { position: relative; }

        .customer-list__process--item:not(:last-of-type)::after {
            background-repeat: no-repeat;
            background-position: center;
            background-size: contain;
            width: 40px;
            height: 40px;
            right: -55px;
        }

        .has-footer-menu footer .site-footer-menu { display: block; }
    </style>
</head>

<body id="baskinrobbins-information-center-customer-list"
      class="baskinrobbins-information-center-customer-list has-footer-menu">

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">

    <!-- ✅ 상단 탭: 무조건 /information-center/... 로 통일 -->
    <nav class="page-menu">
        <ul class="page-menu__list">

            <li class="page-menu__item page-menu__item--active">
                <a href="<c:url value='/information-center/customer/list.do'/>" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">고객센터</span>
                    </div>
                </a>
            </li>

            <li class="page-menu__item">
                <a href="<c:url value='/information-center/customer/ccm.do'/>" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">소비자중심경영(CCM)</span>
                    </div>
                </a>
            </li>

            <li class="page-menu__item">
                <a href="<c:url value='/information-center/notice/list.do'/>" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">공지사항</span>
                    </div>
                </a>
            </li>

            <li class="page-menu__item">
                <a href="<c:url value='/information-center/press/list.do'/>" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">보도자료</span>
                    </div>
                </a>
            </li>

            <li class="page-menu__item">
                <a href="<c:url value='/information-center/fairtrade/list.do'/>" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">공정거래자율준수</span>
                    </div>
                </a>
            </li>

        </ul>
    </nav>

    <div id="content">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">고객 센터</h2>
                </div>
                <div class="page-header__content">
                    <p class="page-header__text">
                        고객의 소리를 적극 경청하고 소비자중심경영 활동을<br>
                        지속적으로 실천합니다.
                    </p>
                </div>
            </div>
        </header>

        <section class="customer-list">
            <div class="customer-list__container">
                <div class="customer-list__content">

                    <ul class="customer-list__faq">

                        <li class="customer-list__faq--item">
                            <div>
                                <h4 class="customer-list__faq--title">자주하는 질문</h4>
                                <p class="customer-list__faq--text">
                                    제품과 포인트, 회원 혜택 등 제품과 사이트에 대해<br>
                                    궁금한 점이 있다면 FAQ를 확인하세요!
                                </p>
                            </div>
                            <div>
                                <a href="<c:url value='/information-center/faq/list.do'/>"
                                   class="customer-list__faq--link">FAQ</a>
                            </div>
                        </li>

                        <li class="customer-list__faq--item">
                            <div>
                                <h4 class="customer-list__faq--title">1:1 문의</h4>
                                <p class="customer-list__faq--text">
                                    자주하는 질문에 원하는 답이 없으시다면<br>
                                    1:1 문의하기를 통해 남겨주세요!<br>
                                    고객님의 문의사항 확인 후 최대한 빠른 시일 내에 답변드리겠습니다.
                                </p>
                                <p class="customer-list__faq--text">
                                    <strong>* 회원 로그인 후 문의 시 문의내역 확인이 가능합니다.</strong>
                                </p>
                            </div>
                            <div>
                                <a href="<c:url value='/information-center/inquiry/create.do'/>"
                                   class="customer-list__faq--link">1:1문의하기</a>

                                <a href="<c:url value='/information-center/inquiry/list.do'/>"
                                   class="customer-list__faq--link">문의내역 보기</a>
                            </div>
                        </li>

                        <li class="customer-list__faq--item">
                            <div>
                                <h4 class="customer-list__faq--title">소비자분쟁 해결기준</h4>
                                <p class="customer-list__faq--text">
                                    공정거래위원회 고시 소비자분쟁 해결기준에 의거하여<br>
                                    정당한 소비자 피해에 대해 교환 또는 환불이 가능합니다.
                                </p>
                            </div>
                            <div>
                                <a href="https://www.kca.go.kr/odr/pg/pi/osPgBjResolvW.do"
                                   target="_blank"
                                   class="customer-list__faq--link">소비자 분쟁해결 기준</a>
                            </div>
                        </li>

                        <li class="customer-list__faq--item">
                            <div>
                                <h4 class="customer-list__faq--title">소비자중심경영(CCM)</h4>
                                <p class="customer-list__faq--text">
                                    고객중심경영 철학을 바탕으로 고객의 소리를 경청하고<br>
                                    소비자 친화적 경영 활동을 지속적으로 실천하고 있습니다.
                                </p>
                            </div>
                            <div>
                                <a href="https://www.kca.go.kr/ccm/certSystemOutlineView.do"
                                   target="_blank"
                                   class="customer-list__faq--link">자세히 보기</a>
                            </div>
                        </li>

                    </ul>

                </div>
            </div>
        </section>

    </div>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
