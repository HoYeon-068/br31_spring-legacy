<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />



  <div class="page-title">
	  <div class="title">아이디 찾기</div>
  </div>
  
    <div class="find-tabs">
    <button type="button" class="tab-btn ${empty activeTab || activeTab == 'phone' ? 'active' : ''}" data-target="phoneForm">휴대폰 번호로 찾기</button>
    <button type="button" class="tab-btn ${activeTab == 'email' ? 'active' : ''}" data-target="emailForm">이메일로 찾기</button>
  </div>

  <div class="fi-form">
  <!-- 휴대폰번호로 찾기 -->
  <form id="phoneForm" class="find-form ${activeTab == 'email' ? 'hidden' : ''}" method="post" action="${pageContext.request.contextPath}/login/findIdByPhone.do">
    <div class="field">
      <label class="lab">이름</label>
      <input type="text" name="name" placeholder="이름을 입력해 주세요" />
    </div>

    <div class="field">
      <label class="lab">휴대폰 번호</label>
      <input type="text" name="phoneNo" placeholder="휴대폰 번호를 입력해 주세요" />
    </div>

	<c:if test="${not empty pMessage}">
	  <div class="errorMsg">${pMessage}</div>
	</c:if>   
    <button type="submit" class="check-btn">확인</button>
     <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
  </form>

  
  <!-- 이메일로 찾기 -->
  <form id="emailForm" class="find-form ${activeTab == 'email' ? '' : 'hidden'}" method="post" action="${pageContext.request.contextPath}/login/findIdByEmail.do">
    <div class="field">
      <label class="lab">이름</label>
      <input type="text" name="name" placeholder="이름을 입력해 주세요" />
    </div>

    <div class="field">
      <label class="lab">이메일</label>
      <input type="text" name="email" placeholder="이메일을 입력해 주세요" />
    </div>
	<c:if test="${not empty eMessage}">
		<div class="errorMsg">${eMessage}</div>
	</c:if>
    <button type="submit" class="check-btn">확인</button>
     <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
  </form>
  </div>
  
  
  <script>
  const tabBtns = $(".tab-btn");
  const forms = $(".find-form");
  
  tabBtns.on("click", function(){
	tabBtns.removeClass("active");
	$(this).addClass("active");
	
	forms.addClass("hidden");
	
	const target = $(this).data("target");
	$("#"+target).removeClass("hidden"); /* #폼아이디 가져옴 */
  })
  </script>
  
