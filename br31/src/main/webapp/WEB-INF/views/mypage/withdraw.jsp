<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



  <div class="page-title jc-title">
	  <div class="title">회원 탈퇴</div>
  </div>
  	
  <form action="${pageContext.request.contextPath}/mypage/withdrawSubmit.do" method="post"
      onsubmit="return confirm('정말 탈퇴하시겠습니까?');">
  
  <div class="jc-content">
  	<div>비밀번호</div>
  	<input type="password" name="password" id="password">
  </div>
  
  <div class="jc-btn">
  	 <button type="submit" class="jc-mainbtn" id="withdrawbtn">탈퇴하기</button>
  	 <button type="button" class="jc-loginbtn" onclick="location.href='${pageContext.request.contextPath}/story/history.do'">홈</button>
  </div>
  
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  </form>
	



