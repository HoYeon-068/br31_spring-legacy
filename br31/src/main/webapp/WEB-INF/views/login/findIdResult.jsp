<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />

  <div class="page-title jc-title">
	  <div class="title">아이디 찾기</div>
  </div>
  	
  
  <div class="jc-content">
  	<c:choose>
  		<c:when test="${not empty foundUserId }">
		 	${name}님의 아이디는 <br>
		 	<b>${foundUserId}</b> 입니다
  		</c:when>
		<c:otherwise>
			입력하신 정보로 가입된 아이디가 없습니다.
		</c:otherwise>
  	</c:choose>
  </div>
  
  <div class="jc-btn">
  	 <button type="button" class="jc-mainbtn" onclick="location.href='${pageContext.request.contextPath}/index.do'">메인으로 이동</button>
  	 <button type="button" class="jc-loginbtn" onclick="location.href='${pageContext.request.contextPath}/login/login.do'">로그인</button>
  </div>
	
	
