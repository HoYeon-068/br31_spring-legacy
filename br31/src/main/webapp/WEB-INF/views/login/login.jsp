<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                        <a href="${pageContext.request.contextPath}/login/pwdReset.do" target="_blank" class="login__link">비밀번호 재발급</a>
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

