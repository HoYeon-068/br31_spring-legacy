<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 아이디, 이름, 전화번호 입력 후 저장된 비번 삭제
	 비밀번호 재설정 -->

<head>
<!-- jquery 적용 코드 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

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

<script type="module" src="https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/fontstream/djs/?sid=gAAAAABk3G1_eyGB8FmZaMXgewjzvKQwe0I-4Kj9Xj-dKpNnUlp_rsk4w6Z_0UeYWyfihX4Dle9eu9HBqxj-2haSIR5ke8aarBIUuDqDVOLuImctKnYplmDTPSV-Bfn2TzQR4jSr7yknqw7gbTlj_xE3x62PMBY9Y3jC5rjtwuoBrWb2FaAY21Z2idAGvnk9xlfgI9CdciJwW6IGsijBsI592KNSqOLc9CQ4zV1Jziva1IN_NNxkzeG_pkU7_0TogufO4qTNTYRr" charset="utf-8"></script>

<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />
</head>



<body>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

  <div class="page-title">
	  <div class="title">비밀번호 재발급</div>
  </div>
  

  <div class="fi-form">
  <form id="phoneForm" class="find-form" method="post" action="${pageContext.request.contextPath}/login/pwdResetRequest.do">

    <div class="field">
      <label class="lab">아이디</label>
      <input type="text" name="user_id" placeholder="아이디를 입력해 주세요" />
    </div>

    <div class="field">
      <label class="lab">이름</label>
      <input type="text" name="name" placeholder="이름을 입력해 주세요" />
    </div>

    <div class="field">
      <label class="lab">휴대폰 번호</label>
      <input type="text" name="phone_no" placeholder="휴대폰 번호를 입력해 주세요" />
    </div>

	<c:if test="${not empty message}">
	  <div class="errorMsg">${message}</div>
	</c:if>    

    <button type="submit" class="check-btn">확인</button>
  </form>

  
  </div>
  
  <jsp:include page="/WEB-INF/views/layout/footer.jsp" />
  
  
  </body>