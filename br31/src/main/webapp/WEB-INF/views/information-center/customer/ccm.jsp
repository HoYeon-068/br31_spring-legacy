<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>배스킨라빈스 | 소비자중심경영(CCM)</title>

    <!-- 공통 CSS/JS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>

<body id="baskinrobbins-ccm" class="baskinrobbins-ccm">

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">

    <!-- 고객센터 공통 메뉴 -->
    <jsp:include page="/WEB-INF/views/information-center/_customerMenu.jsp" />

    <div id="content">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">소비자 중심경영 우수기업</h2>
                </div>
            </div>
        </header>

        <section class="customer-ccm">
            <div class="customer-ccm__container">
                <div class="customer-ccm__content">

                    <div class="customer-ccm__box">
                        <div>
                            <h3>소비자 중심경영 우수기업(CCM)</h3>
                            <p>
                                배스킨라빈스는 고객중심경영 철학을 바탕으로 고객의 소리를 적극 경청하고
                                ‘소비자 중심경영(CCM)’을 통해 소비자 친화적 경영 노력과
                                고객만족향상 활동을 지속적으로 실천하고 있습니다.
                            </p>
                            <p>
                                또한 다양한 고객불만 사전예방 활동과 사후구제, 유지, 개선 프로그램 운영으로
                                고객 니즈가 현장에서 반영되어 고객만족 향상과 기업의 경쟁력이
                                제고 될 수 있도록 노력하겠습니다.
                            </p>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/resources/images/information-center/customer/ccm_chart.png"
                                 alt="고객만족 표">
                        </div>
                    </div>

                    <div class="customer-ccm__box">
                        <div>
                            <div style="display:flex; justify-content:space-between; align-items:flex-start;">
                                <h3 style="margin:0;">CCM 이란?</h3>
                                <img src="${pageContext.request.contextPath}/resources/images/Artboard3.png"
                                     alt="CCM">
                            </div>

                            <p>
                                CCM은 Consumer Centered Management의 약자로 “소비자 중심경영”을 말합니다.
                                기업이 수행하는 모든 활동을 소비자 관점에서 구성하고
                                지속적으로 개선하고 있는지를 평가하여 인증하는 제도입니다.
                            </p>
                            <p>
                                배스킨라빈스는 공정거래위원회와 한국소비자원으로부터
                                프랜차이즈 업계 최초로 CCM 기업으로 인증 받았습니다.
                            </p>
                            <p>
                                2024년 CCM 명예의 전당 부문에 올라 공정거래위원장 표창을 수상하였습니다.
                            </p>
                        </div>

                        <div>
                            <h3>우리의 CCM 인증서</h3>
                            <div class="customer-ccm__certificate">
                                <img src="${pageContext.request.contextPath}/resources/images/information-center/customer/ccm_brk.jpg" alt="CCM 인증서 1">
                                <img src="${pageContext.request.contextPath}/resources/images/information-center/customer/ccm_certifi_23_en.png" alt="CCM 인증서 2(EN)">
                                <img src="${pageContext.request.contextPath}/resources/images/information-center/customer/ccm_certifi_23_kr.png" alt="CCM 인증서 3(KR)">
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

    </div>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
