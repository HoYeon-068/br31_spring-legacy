<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />
  <div class="page-title">
	  <div class="title">비밀번호 재발급</div>
  </div>
  

  <div class="fi-form">
  <form id="phoneForm" class="find-form" method="post" action="${pageContext.request.contextPath}/login/pwdResetRequest.do">

    <div class="field">
      <label class="lab">아이디</label>
      <input type="text" name="userId" placeholder="아이디를 입력해 주세요" />
    </div>

    <div class="field">
      <label class="lab">이름</label>
      <input type="text" name="name" placeholder="이름을 입력해 주세요" />
    </div>

    <div class="field">
      <label class="lab">휴대폰 번호</label>
      <input type="text" name="phoneNo" placeholder="휴대폰 번호를 입력해 주세요" />
    </div>

	<c:if test="${not empty message}">
	  <div class="errorMsg">${message}</div>
	</c:if>    

    <button type="submit" class="check-btn">확인</button>
    <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
  </form>

  
  </div>
  
