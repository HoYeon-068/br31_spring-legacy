<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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

<meta name="description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta name="keywords" content="baskinrobbins, br31, 배스킨라빈스, 배라, 베라">
<meta name="author" content="배스킨라빈스">
<meta property="og:site_name" content="배스킨라빈스">
<meta property="og:url" content="https://www.baskinrobbins.co.kr">
<meta property="og:title" content="배스킨라빈스">
<meta property="og:description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta property="og:image" content="https://www.baskinrobbins.co.kr${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">



<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />


<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>
<body id="baskinrobbins-login" class="baskinrobbins-login">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<section class="site-container">
    <div id="content" class="login">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        로그인
                    </h2>
                </div>
                <div class="page-header__content">
                    <p class="page-header__text"></p>
                </div>
            </div>
        </header>

        <div class="login__container">
            <div class="login__content">
                <div class="login__inner">
                    <form action="${pageContext.request.contextPath}/login/login.do" class="login__form" method="post">
                        <fieldset class="login__block">
                            <legend>계정 입력 폼</legend>
                            <input type="hidden" name="redirectUrl"
       						value="${empty redirectUrl ? (empty param.redirectUrl ? '/' : param.redirectUrl) : redirectUrl}">

                            <label class="login__label">
                                <input type="text" name="username" placeholder="아이디" class="login__input">
                            </label>

                            <label class="login__label">
                                <input type="password" name="password" placeholder="비밀번호" class="login__input">
                            </label>
                            
							<c:if test="${not empty param.error or not empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION}">
							  <div>
							    <strong style="color:red">아이디 또는 패스워드가 일치하지 않습니다.</strong><br/>
							    <c:if test="${not empty sessionScope.SPRING_SECURITY_LAST_EXCEPTION}">
							      Message :
							      <c:out value="${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}" />
							    </c:if>
							  </div>
							</c:if>


                            <button type="submit" class="login__button login__button--login">제출하기</button>
                             <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
                        </fieldset>
                    </form>

                    <div class="login__buttons">
                        <a href="${pageContext.request.contextPath}/login/findId.do" class="login__link">아이디 찾기</a>
                        <a href="${pageContext.request.contextPath}/login/pwdResetRequest.do" target="_blank" class="login__link">비밀번호 재발급</a>
                    </div>

                    

                    <div class="login__buttons">
                        <a href="${pageContext.request.contextPath}/join/join.do" target="_blank" class="login__button login__button--happy">
                            <span class="login__button-text">회원가입</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

<img src="https://t.co/1/i/adsct?bci=4&amp;dv=Etc%2FGMT-9%26ko-KR%2Cko%2Cen-US%2Cen%26Google%20Inc.%26Win32%26255%261920%261080%2624%2624%261920%261032%260%26na&amp;eci=3&amp;event=%7B%7D&amp;event_id=e4b420c8-7727-4c2e-84cb-e44a06e99585&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=de9ef452-c5c4-45ce-91a2-030d7f49794a&amp;pt=%EB%B0%B0%EC%8A%A4%ED%82%A8%EB%9D%BC%EB%B9%88%EC%8A%A4&amp;tw_document_href=https%3A%2F%2Fwww.baskinrobbins.co.kr%2Flogin%2Flogin.php%3FreturnURL%3D%252F&amp;tw_iframe_status=0&amp;txn_id=ogfh2&amp;type=javascript&amp;version=2.3.35" height="1" width="1" style="display: none;"><img src="https://analytics.twitter.com/1/i/adsct?bci=4&amp;dv=Etc%2FGMT-9%26ko-KR%2Cko%2Cen-US%2Cen%26Google%20Inc.%26Win32%26255%261920%261080%2624%2624%261920%261032%260%26na&amp;eci=3&amp;event=%7B%7D&amp;event_id=e4b420c8-7727-4c2e-84cb-e44a06e99585&amp;integration=advertiser&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=de9ef452-c5c4-45ce-91a2-030d7f49794a&amp;pt=%EB%B0%B0%EC%8A%A4%ED%82%A8%EB%9D%BC%EB%B9%88%EC%8A%A4&amp;tw_document_href=https%3A%2F%2Fwww.baskinrobbins.co.kr%2Flogin%2Flogin.php%3FreturnURL%3D%252F&amp;tw_iframe_status=0&amp;txn_id=ogfh2&amp;type=javascript&amp;version=2.3.35" height="1" width="1" style="display: none;"></body></html>