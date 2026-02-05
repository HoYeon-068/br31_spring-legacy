<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />

<div class="site-menu" style="display:none;"></div>
<div class="site-footer-menu" style="display:none;"></div>

<div class="page-title">
  <div class="title">프로필 수정</div>
</div>

<div class="frame">


<form class="join-form"
      action="${pageContext.request.contextPath}/mypage/profileEditSubmit.do"
      method="post" >

  <!-- 서버로 체크값 전달  -->
  <input type="hidden" id="nicknameChecked" name="nicknameChecked" value="false" />
  <input type="hidden" id="emailChecked"    name="emailChecked"    value="false" />
  <input type="hidden" id="phoneChecked"    name="phoneChecked"    value="false" />

  <!-- 변경 전 값(값을 안 바꿨으면 중복확인/인증 없이 저장 가능하게) -->
  <input type="hidden" id="originNickname" value="${loginUser.nickname}" />
  <input type="hidden" id="originEmail"    value="${loginUser.email}" />
  <input type="hidden" id="originPhone"    value="${loginUser.phoneNo}" />

  <!-- 서버에서 profile_img_path를 기대하는 경우 대비 -->
  <input type="hidden" id="profileImgPath" name="profileImgPath" value="${loginUser.profileImgPath}" />

  <!-- 프로필 이미지 -->
  <div class="profile-line">

    <!-- 현재 프로필 썸네일(미리보기 대상) -->
    <c:choose>
      <c:when test="${not empty loginUser.profileImgPath}">
        <img id="profileThumb"
             src="${pageContext.request.contextPath}${loginUser.profileImgPath}"
             alt="profile"
             class="profile-thumb">
      </c:when>
      <c:otherwise>
        <img id="profileThumb"
             src="${pageContext.request.contextPath}/resources/images/mypage/img_profile_1.png"
             alt="profile"
             class="profile-thumb">
      </c:otherwise>
    </c:choose>

    <!-- A/B 선택 -->
    <div class="profile-select">
      <label class="profile-select__item">
        <input type="radio" name="profile_img" value="A"
          <c:if test="${empty loginUser.profileImgPath  || loginUser.profileImgPath  == '/resources/images/mypage/img_profile_1.png'}">checked</c:if>
        >
        <span class="profile-select__box">
          <img src="${pageContext.request.contextPath}/resources/images/mypage/img_profile_1.png" alt="프로필 A">
        </span>
      </label>

      <label class="profile-select__item">
        <input type="radio" name="profile_img" value="B"
          <c:if test="${loginUser.profileImgPath  == '/resources/images/mypage/img_profile_2.png'}">checked</c:if>
        >
        <span class="profile-select__box">
          <img src="${pageContext.request.contextPath}/resources/images/mypage/img_profile_2.png" alt="프로필 B">
        </span>
      </label>
    </div>
  </div>

  <!-- 아이디 -->
  <div class="row">
    <div class="lab">아이디</div>
    <div class="ctrl">
      <input type="text" value="${loginUser.userId}" disabled="disabled"/>
      <input type="hidden" name="user_id" value="${loginUser.userId}">
    </div>
  </div>
<!-- 비밀번호 -->
  <div class="row">
    <div class="lab">비밀번호</div>
    <div class="ctrl">
      <input type="password" name="oldPassword" placeholder="기존 비밀번호를 입력해주세요(필수)" />
    </div>
  </div>

  <div class="row">
    <div class="lab">새 비밀번호</div>
    <div class="ctrl">
      <input type="password" name="newPassword" placeholder="새 비밀번호를 입력해주세요(선택)" />
    </div>
  </div>

	<!-- 이름 -->
  <div class="row">
    <div class="lab">이름</div>
    <div class="ctrl">
      <input type="text" value="${loginUser.name}" disabled="disabled"/>
      <input type="hidden" name="name" value="${loginUser.name}">
    </div>
  </div>

  <!-- 닉네임 -->
  <div class="row">
    <div class="lab">닉네임</div>
    <div class="ctrl">
      <input type="text" name="nickname" id="nickname"
             value="${loginUser.nickname}"
             placeholder="닉네임을 입력해 주세요" />
      <button type="button" class="subbtn" id="btnNickCheck">중복확인</button>
    </div>
  </div>

  <!-- 이메일 -->
  <div class="row">
    <div class="lab">이메일</div>
    <div class="ctrl email">
        <c:set var="emailFull" value="${empty loginUser.email ? '' : loginUser.email}" />
		<c:set var="emailParts" value="${fn:split(emailFull,'@')}" />
		<c:set var="emailId" value="${fn:length(emailParts) > 0 ? emailParts[0] : ''}" />
		<c:set var="emailDomain" value="${fn:length(emailParts) > 1 ? emailParts[1] : ''}" />

      <input type="text" name="email_id" id="email_id" value="${emailId}" placeholder="예: scoop" />
      <span class="at">@</span>

      <select name="email_domain" id="email_domain">
        <option value="">선택하기</option>
        <option value="naver.com" <c:if test="${emailDomain=='naver.com'}">selected</c:if>>naver.com</option>
        <option value="gmail.com" <c:if test="${emailDomain=='gmail.com'}">selected</c:if>>gmail.com</option>
        <option value="daum.net"  <c:if test="${emailDomain=='daum.net'}">selected</c:if>>daum.net</option>
        <option value="kakao.com" <c:if test="${emailDomain=='kakao.com'}">selected</c:if>>kakao.com</option>
      </select>

      <button type="button" class="subbtn" id="btnEmailCheck">중복확인</button>
    </div>
  </div>

  <!-- 휴대폰 -->
  <div class="row phone-row">
    <div class="lab">휴대폰</div>

    <div class="phone-wrap">
      <div class="ctrl phone">
        <input type="text" name="phoneNo" id="phoneNo"
               value="${loginUser.phoneNo}"
               placeholder="숫자만 입력해주세요." />
        <button type="button" class="subbtn" id="btnPhoneSend">인증번호 받기</button>
      </div>

      <div class="ctrl phone verify">
        <input type="text" id="phone_code" placeholder="인증번호 6자리" />
        <button type="button" class="subbtn" id="btnPhoneVerify">인증확인</button>
      </div>

      <span class="msg" id="phoneMsg"></span>
    </div>
  </div>
  <c:if test="${not empty error}">
	  <div style="color:red; margin:10px 0; text-align:center;">${error}</div>
	</c:if>

  <div class="cta">
    <button type="submit" class="joinbtn">저장</button>
  </div>
  
  <div class="delete-link">
  	<a href="${pageContext.request.contextPath}/mypage/withdraw.do">탈퇴하기</a>
  </div>
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }">
</form>

<script>


(() => {
  const ctx = "${pageContext.request.contextPath}";
  const csrfParam = "${_csrf.parameterName}";
  const csrfToken = "${_csrf.token}";
  function setChecked(id, ok){
    const el = document.getElementById(id);
    if(el) el.value = ok ? "true" : "false";
  }

  function formTextFetch(url, params){
    params[csrfParam] = csrfToken;
    return fetch(url, {
      method: "POST",
      headers: {"Content-Type":"application/x-www-form-urlencoded; charset=UTF-8"},
      body: new URLSearchParams(params).toString()
    }).then(r => r.text());
  }



  /* 
      프로필 A/B 선택 미리보기
  */
  document.addEventListener("DOMContentLoaded", () => {
    const thumb = document.getElementById("profileThumb");
    const radios = document.querySelectorAll('input[name="profile_img"]');

    radios.forEach(r => {
      r.addEventListener("change", () => {
        if(!thumb) return;
        if (r.value === "A") thumb.src = ctx + "/resources/images/mypage/img_profile_1.png";
        if (r.value === "B") thumb.src = ctx + "/resources/images/mypage/img_profile_2.png";
      });
    });
  });

  /*
     닉네임 중복확인
     - 서버가 {"count":0/1} 반환
  */
  document.getElementById("btnNickCheck")?.addEventListener("click", async () => {
    const nick = document.getElementById("nickname").value.trim();
    if(!nick){
      alert("닉네임을 입력해주세요.");
      return;
    }
    
    

    const raw = await formTextFetch(ctx + "/mypage/nicknameCheck.do", { nickname: nick });
    console.log("nicknameCheck raw=", raw); 
    let data;
    try { data = JSON.parse(raw); }
    catch(e){
      console.log("nicknameCheck raw=", raw);
      alert("닉네임 중복확인 응답이 JSON이 아닙니다(콘솔 확인).");
      return;
    }

    if(Number(data.count) === 0){
      alert("사용 가능한 닉네임입니다.");
      setChecked("nicknameChecked", true);
    }else{
      alert("이미 사용 중인 닉네임입니다.");
      setChecked("nicknameChecked", false);
    }
  });

  document.getElementById("nickname")?.addEventListener("input", () => {
    setChecked("nicknameChecked", false);
  });

  /*
     4) 이메일 중복확인
   */
  document.getElementById("btnEmailCheck")?.addEventListener("click", async () => {
    const id = document.getElementById("email_id").value.trim();
    const domain = document.getElementById("email_domain").value.trim();

    if(!id || !domain){
      alert("이메일 아이디와 도메인을 선택해주세요.");
      return;
    }

    const email = id + "@" + domain;

    const raw = await formTextFetch(ctx + "/mypage/emailCheck.do", { email });
    console.log("emailCheck raw=", raw);

    let data;
    try { data = JSON.parse(raw); }
    catch(e){
      alert("이메일 중복확인 응답이 JSON이 아닙니다(콘솔 확인).");
      return;
    }

    if(Number(data.count) === 0){
      alert("사용 가능한 이메일입니다.");
      setChecked("emailChecked", true);
    }else{
      alert("이미 사용 중인 이메일입니다.");
      setChecked("emailChecked", false);
    }
  });

  document.getElementById("email_id")?.addEventListener("input", () => {
    setChecked("emailChecked", false);
  });
  document.getElementById("email_domain")?.addEventListener("change", () => {
    setChecked("emailChecked", false);
  });

  /* 
     5) 휴대폰 인증(발송/확인)
  */
  document.getElementById("btnPhoneSend")?.addEventListener("click", async () => {
    const phone = document.getElementById("phoneNo").value.trim();
    if(!phone){
      alert("휴대폰 번호를 입력해주세요.");
      return;
    }

    const text = (await formTextFetch(ctx + "/mypage/phoneSendCode.do", { phoneNo: phone })).trim();

    if(text === "SENT"){
      document.getElementById("phoneMsg").textContent = "인증번호를 발송했습니다. (5분 이내 입력)";
      setChecked("phoneChecked", false);
    }else{
      document.getElementById("phoneMsg").textContent = "발송 실패: " + text;
      setChecked("phoneChecked", false);
    }
  });

  document.getElementById("btnPhoneVerify")?.addEventListener("click", async () => {
    const phone = document.getElementById("phoneNo").value.trim();
    const code  = document.getElementById("phone_code").value.trim();

    if(!phone || !code){
      alert("휴대폰 번호와 인증번호를 입력해주세요.");
      return;
    }

    const text = (await formTextFetch(ctx + "/mypage/phoneVerifyCode.do", { phoneNo: phone, code })).trim();

    if(text === "OK"){
      document.getElementById("phoneMsg").textContent = "휴대폰 인증 완료";
      setChecked("phoneChecked", true);
    }else{
      document.getElementById("phoneMsg").textContent = "인증 실패";
      setChecked("phoneChecked", false);
    }
  });

  document.getElementById("phoneNo")?.addEventListener("input", () => {
    setChecked("phoneChecked", false);
    document.getElementById("phoneMsg").textContent = "";
  });

})();
</script>
</div>




