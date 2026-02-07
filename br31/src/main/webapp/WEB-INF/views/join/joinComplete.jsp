<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />
  <div class="page-title jc-title">
	  <div class="title">회원가입 완료</div>
  </div>
  	
  
  <div class="jc-content">
  	${name}님의 회원가입이 <br>
  	성공적으로 완료되었습니다
  </div>
  
  <div class="jc-btn">
  	 <button type="button" class="jc-mainbtn" onclick="location.href='${pageContext.request.contextPath}/story/history.do'">메인으로 이동</button>
  	 <button type="button" class="jc-loginbtn" onclick="location.href='${pageContext.request.contextPath}/login/login.do'">로그인</button>
  </div>
	
	
