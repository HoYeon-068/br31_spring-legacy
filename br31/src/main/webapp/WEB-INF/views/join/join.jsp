<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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



<script type="module" src="https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/fontstream/djs/?sid=gAAAAABk3G1_eyGB8FmZaMXgewjzvKQwe0I-4Kj9Xj-dKpNnUlp_rsk4w6Z_0UeYWyfihX4Dle9eu9HBqxj-2haSIR5ke8aarBIUuDqDVOLuImctKnYplmDTPSV-Bfn2TzQR4jSr7yknqw7gbTlj_xE3x62PMBY9Y3jC5rjtwuoBrWb2FaAY21Z2idAGvnk9xlfgI9CdciJwW6IGsijBsI592KNSqOLc9CQ4zV1Jziva1IN_NNxkzeG_pkU7_0TogufO4qTNTYRr" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />
</head>



<body>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

  <div class="page-title">
	  <div class="title">회원가입</div>
  </div>


<div class="frame">
  <!-- 안내 -->
  <div class="topline">
    <span class="req"><b>*</b> 모두 필수 입력</span>
  </div>

  <!-- 폼 -->
  <form class="join-form" method="post" action="${pageContext.request.contextPath}/join/join.do">
    <div class="row">
      <div class="lab">아이디</div>
      <div class="ctrl">
        <input type="text" name="user_id" id="user_id" placeholder="아이디를 입력해주세요" />
        <input type="hidden" id="idChecked" value="false" />
        <button type="button" class="subbtn" id="btnIdCheck">중복확인</button>
      </div>
      <span class="msg error" id="idMsg"></span>
    </div>

    <div class="row">
      <div class="lab">비밀번호</div>
      <div class="ctrl pw">
        <input type="password" name="password" id="password" placeholder="비밀번호를 입력해주세요" />
		
		<input type="password" name="password_confirm" id="password_confirm"
		       placeholder="비밀번호를 한번 더 입력해주세요" />
		<span class="msg" id="pwMsg"></span>
      </div>
    </div>


    <div class="row pw-row">
      <div class="lab">이름</div>
      <div class="ctrl">
        <input type="text" name="name" id="name" placeholder="이름을 입력해 주세요" />
      </div>
      <span class="msg error" id="nameMsg"></span>
    </div>

    <div class="row">
      <div class="lab">닉네임</div>
      <div class="ctrl">
        <input type="text" name="nickname" id="nickname" placeholder="닉네임을 입력해 주세요" />
        <input type="hidden" id="nicknameChecked" value="false" />
        <button type="button" class="subbtn" id="btnNicknameCheck">중복확인</button>
      </div>
      <span class="msg error" id="nicknameMsg"></span>
    </div>

    <div class="row">
      <div class="lab">이메일</div>
      <div class="ctrl email">
        <input type="text" name="email_id" id="email_id" placeholder="예: scoop" />
			<span class="at">@</span>
			
			<select name="email_domain" id="email_domain">
			  <option value="">선택하기</option>
			  <option value="naver.com">naver.com</option>
			  <option value="gmail.com">gmail.com</option>
			  <option value="daum.net">daum.net</option>
			  <option value="kakao.com">kakao.com</option>
			</select>
			
			<input type="hidden" id="emailChecked" value="false" />
			<button type="button" class="subbtn" id="btnEmailCheck">중복확인</button>
        
        
      </div>
      <span class="msg error" id="emailMsg"></span>
    </div>

    <div class="row phone-row">
	  <div class="lab">휴대폰</div>
	
	  <div class="phone-wrap">
		    <div class="ctrl phone">
		      <input type="text" name="phone_no" id="phone_no" placeholder="숫자만 입력해주세요." />
		      <button type="button" class="subbtn" id="btnPhoneSend">인증번호 받기</button>
		    </div>
		
		    <div class="ctrl phone verify">
		      <input type="text" id="phone_code" placeholder="인증번호 6자리" />
		      <button type="button" class="subbtn" id="btnPhoneVerify">인증확인</button>
		      <input type="hidden" id="phoneChecked" value="false" />
		    </div>
		
		    <span class="msg" id="phoneMsg"></span>
		</div>
	</div>


    <div class="row">
      <div class="lab">성별</div>
      <div class="ctrl radios">
        <label><input type="radio" name="gender" value="M" /> 남자</label>
        <label><input type="radio" name="gender" value="F" /> 여자</label>
        <label><input type="radio" name="gender" value="N" checked /> 선택안함</label>
      </div>
    </div>

    <div class="row">
      <div class="lab">생년월일</div>
      <div class="ctrl birth">
		<select name="birthY" id="birthY" >
			<option value="">YYYY</option>		
		<%
			int thisYear = LocalDate.now().getYear();
			for(int i = thisYear; i>= 1900; i--){
		%>				
			<option value="<%= i%>"><%= i%></option>
		<%
			}
		%>
		</select>
		<select name="birthM"  id="birthM">
			<option value="">MM</option>		
		<%
			for(int i = 1; i<=12; i++){
		%>				
			<option value="<%= i%>"><%= i%></option>
		<%
			}
		%>
		</select>
		<select name="birthD" id="birthD" >
			<option value="">DD</option>		
		<%
			for(int i = 1; i<=31; i++){
		%>				
			<option value="<%= i%>"><%= i%></option>
		<%
			}
		%>
		</select>
      </div>
      <span class="msg" id="birthMsg"></span>
    </div>

  <!-- 약관 구분선 -->
  <div class="divider"></div>

  <!-- 약관 -->
  <div class="terms-wrap">
    <div class="terms-title">이용약관동의</div>

    <div class="terms-box">
      <label class="trow all">
        <input type="checkbox" />
        <span>전체 동의합니다.</span>
      </label>
      <p class="t-desc">
        선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스 이용은 가능합니다.
      </p>

      <div class="tlist">
        <label class="trow">
          <input type="checkbox" name="terms_ids" value="1"/>
          <span>이용약관 동의 (필수)</span>
          <a href="https://www.happypointcard.com/page/customer/term.spc" class="tlink" target="_blank">약관보기 &gt;</a>
        </label>

        <label class="trow">
          <input type="checkbox" name="terms_ids" value="2"/>
          <span>개인정보 수집·이용 동의 (필수)</span>
          <a href="https://www.happypointcard.com/page/customer/term.spc?no=2" class="tlink" target="_blank">약관보기 &gt;</a>
        </label>

        <label class="trow">
          <input type="checkbox" name="terms_ids" value="3"/>
          <span>마케팅 광고 활용을 위한 수집 및 이용 동의 (선택)</span>
          <a href="https://www.happypointcard.com/page/customer/term.spc?no=6" class="tlink" target="_blank" >약관보기 &gt;</a>
        </label>

        <label class="trow event">
          <input type="checkbox" />
          <span>이벤트 등 프로모션 정보 수신 동의 (선택)</span>
        </label>

        <div class="t-sub">
          <label class="event2"><input type="checkbox" name="terms_ids" value="5"/> SMS</label>
          <label class="event2"><input type="checkbox" name="terms_ids" value="6"/> 이메일</label>
        </div>

        <label class="trow">
          <input type="checkbox" name="terms_ids" value="4"/>
          <span>본인은 만 14세 이상입니다. (필수)</span>
        </label>
      </div>
    </div>
  </div>

  <!-- 가입 버튼 -->
  <div class="cta">
    <button type="submit" class="joinbtn">가입하기</button>
  </div>
</div>
  </form>

  </body>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

<script>
/* join.js 
 * - 아이디/닉네임/이메일 중복확인(AJAX)
 * - 아이디/비밀번호 규칙 + 비밀번호 확인
 * - 휴대폰 인증(전송/검증)
 * - 약관 필수 체크
 * - 값 변경 시 중복확인/인증 무효화 + 메시지 초기화
 */

$(function () {

  // 공통 유틸
  function setMsg($el, msg, type) { // type: "success" | "error"
    $el.text(msg).removeClass("success error").addClass(type);
  }

  function clearMsg($el) {
    $el.text("").removeClass("success error");
  }

  function trimVal(selector) {
    return $(selector).val().trim();
  }

  // 규칙(Validation)
  // 아이디: 5~16자, 소문자 시작, 소문자+숫자만
  const ID_REGEX = /^[a-z][a-z0-9]{4,15}$/;

  function validateUserId(userId) {
    if (!userId) return { ok: false, msg: "아이디를 입력하세요." };
    if (!ID_REGEX.test(userId)) {
      return { ok: false, msg: "아이디는 5~16자, 영문 소문자/숫자만, 첫 글자는 영문 소문자여야 합니다." };
    }
    return { ok: true, msg: "아이디 형식이 올바릅니다. (중복확인 필요)" };
  }

  // 비밀번호: 8~20자, 공백 금지, 영문/숫자/특수문자 중 2종 이상
  function validatePassword(pw) {
    if (!pw) return { ok: false, msg: "비밀번호를 입력하세요." };
    if (/\s/.test(pw)) return { ok: false, msg: "비밀번호에 공백은 사용할 수 없습니다." };
    if (pw.length < 8 || pw.length > 20) return { ok: false, msg: "비밀번호는 8~20자여야 합니다." };

    const hasEng = /[A-Za-z]/.test(pw);
    const hasNum = /[0-9]/.test(pw);
    const hasSpc = /[^A-Za-z0-9]/.test(pw);
    const kinds = [hasEng, hasNum, hasSpc].filter(Boolean).length;

    if (kinds < 2) {
      return { ok: false, msg: "비밀번호는 영문/숫자/특수문자 중 2종 이상을 포함해야 합니다." };
    }
    return { ok: true, msg: "사용 가능한 비밀번호 형식입니다." };
  }

  // 비밀번호 규칙 + 일치까지 한번에
  function checkPwAll() {
    const pw = $("#password").val();
    const pw2 = $("#password_confirm").val();

    const v = validatePassword(pw);
    if (!v.ok) {
      setMsg($("#pwMsg"), v.msg, "error");
      return false;
    }

    // 확인란이 아직 비어있으면 규칙만 안내
    if (!pw2) {
      setMsg($("#pwMsg"), v.msg, "success");
      return false;
    }

    if (pw !== pw2) {
      setMsg($("#pwMsg"), "비밀번호가 일치하지 않습니다.", "error");
      return false;
    }

    setMsg($("#pwMsg"), "비밀번호가 일치합니다.", "success");
    return true;
  }
  
  
  // 이메일 : 영어 숫자만
  const EMAIL_ID_REGEX = /^[A-Za-z0-9]+$/;
  function validateEmailId(emailId) {
	  if (!emailId) return { ok: false, msg: "이메일 아이디를 입력하세요." };
	  if (!EMAIL_ID_REGEX.test(emailId)) {
	      return { ok: false, msg: "이메일 아이디는 영문/숫자만 입력 가능합니다." };
	    }
	  return { ok: true, msg: "이메일 아이디 형식이 올바릅니다. (중복확인 필요)" };
  		
	}
  
  
  // 이름 : 한글만
  const NAME_REGEX = /^[가-힣]+$/;
  function validateName(name) {
	  if (!name) return { ok: false, msg: "이름을 입력하세요." };
	    if (!NAME_REGEX.test(name)) {
	      return { ok: false, msg: "이름은 한글만 입력 가능합니다." };
	    }
	    return { ok: true, msg: "" };
	  
}
  
  // 휴대폰번호: 숫자만
  function normalizePhone(phone) {
    return (phone || "").replaceAll(/[^0-9]/g, "");
  }
  
  function validatePhone(phoneRaw) {
	  const phone = normalizePhone(phoneRaw);
	  if (!phone) return { ok: false, msg: "휴대폰 번호를 입력하세요." };
	    if (phone.length < 10 || phone.length > 11) {
	      return { ok: false, msg: "휴대폰 번호는 10~11자리 숫자만 입력하세요." };
	    }
	    return { ok: true, msg: "" };
  }
  
  
  // 생년월일 선택
  function validateBirth(y, m, d) {
	  if (!y || !m || !d) {
	    return { ok: false, msg: "생년월일을 모두 선택해주세요." };
  }
  	return { ok: true, msg: "" };
  }

  

  // 상태값(hidden) 초기화/무효화
  function invalidateIdCheck() {
    $("#idChecked").val("false");
    // 형식 안내는 input 이벤트에서 처리
  }

  function invalidateNicknameCheck() {
    $("#nicknameChecked").val("false");
    clearMsg($("#nicknameMsg"));
  }

  function invalidateEmailCheck() {
    $("#emailChecked").val("false");
    clearMsg($("#emailMsg"));
  }

  function invalidatePhoneAuth() {
    $("#phoneChecked").val("false");
    clearMsg($("#phoneMsg"));
  }

  // 아이디 입력/중복확인
  $("#user_id").on("input", function () {
    invalidateIdCheck();

    const userId = $("#user_id").val().trim();
    const v = validateUserId(userId);
    setMsg($("#idMsg"), v.msg, v.ok ? "success" : "error");
  });

  $("#btnIdCheck").on("click", function () {
	  const userId = $("#user_id").val().trim();

    const v = validateUserId(userId);
    if (!v.ok) {
      setMsg($("#idMsg"), v.msg, "error");
      $("#idChecked").val("false");
      $("#user_id").focus();
      return;
    }

    $.ajax({
      url: "${pageContext.request.contextPath}/join/idCheck.ajax",
      type: "get",
      dataType: "json",
      data: { user_id: userId },
      success: function (data) {
        if (data.count === 0) {
          setMsg($("#idMsg"), "사용 가능한 아이디입니다.", "success");
          $("#idChecked").val("true");
        } else {
          setMsg($("#idMsg"), "이미 사용 중인 아이디입니다.", "error");
          $("#idChecked").val("false");
        }
      },
      error: function () {
        setMsg($("#idMsg"), "중복확인 중 오류가 발생했습니다.", "error");
        $("#idChecked").val("false");
      }
    });
  });

  // 비밀번호 규칙/일치
  $("#password, #password_confirm").on("input", function () {
    checkPwAll();
  });

  // 닉네임 중복확인
  $("#nickname").on("input", function () {
    invalidateNicknameCheck();
  });

  $("#btnNicknameCheck").on("click", function () {
    const nickname = trimVal("#nickname");

    if (!nickname) {
      setMsg($("#nicknameMsg"), "닉네임을 입력하세요.", "error");
      $("#nicknameChecked").val("false");
      $("#nickname").focus();
      return;
    }

    $.ajax({
      url: "${pageContext.request.contextPath}/join/nicknameCheck.ajax",
      type: "get",
      dataType: "json",
      data: { nickname: nickname },
      success: function (data) {
        if (data.count === 0) {
          setMsg($("#nicknameMsg"), "사용 가능한 닉네임입니다.", "success");
          $("#nicknameChecked").val("true");
        } else {
          setMsg($("#nicknameMsg"), "이미 사용 중인 닉네임입니다.", "error");
          $("#nicknameChecked").val("false");
        }
      },
      error: function () {
        setMsg($("#nicknameMsg"), "중복확인 중 오류가 발생했습니다.", "error");
        $("#nicknameChecked").val("false");
      }
    });
  });

  // 이메일 중복확인
  $("#email_id").on("input", function () {
	  invalidateEmailCheck();
	
	  const cleaned = $(this).val().replace(/[^A-Za-z0-9]/g, "");
	  if ($(this).val() !== cleaned) $(this).val(cleaned);
	
	  const v = validateEmailId(cleaned);
	  setMsg($("#emailMsg"), v.msg, v.ok ? "success" : "error");
  });
  $("#email_domain").on("change", function () {
	  invalidateEmailCheck();
	});

  $("#btnEmailCheck").on("click", function () {
    const emailId = trimVal("#email_id");
    const emailDomain = $("#email_domain").val();

    if (!emailId || !emailDomain) {
      setMsg($("#emailMsg"), "이메일을 입력하세요.", "error");
      $("#emailChecked").val("false");
      return;
    }

    const email = emailId + "@" + emailDomain;

    $.ajax({
      url: "${pageContext.request.contextPath}/join/emailCheck.ajax",
      type: "get",
      dataType: "json",
      data: { email: email },
      success: function (data) {
        if (data.count === 0) {
          setMsg($("#emailMsg"), "사용 가능한 이메일입니다.", "success");
          $("#emailChecked").val("true");
        } else {
          setMsg($("#emailMsg"), "이미 사용 중인 이메일입니다.", "error");
          $("#emailChecked").val("false");
        }
      },
      error: function () {
        setMsg($("#emailMsg"), "중복확인 중 오류가 발생했습니다.", "error");
        $("#emailChecked").val("false");
      }
    });
  });

  // 휴대폰 인증 (전송/확인)
  $("#phone_no").on("input", function () {
    invalidatePhoneAuth();
 	// 숫자만 남기기(한글/기호 자동 제거)
    const cleaned = normalizePhone($(this).val());
    if ($(this).val() !== cleaned) $(this).val(cleaned);

    // 메시지 표시
    const v = validatePhone(cleaned);
    if (!v.ok) setMsg($("#phoneMsg"), v.msg, "error");
    else clearMsg($("#phoneMsg"));
  });

  $("#btnPhoneSend").on("click", function () {
    const phone = trimVal("#phone_no");

    if (!phone) {
      setMsg($("#phoneMsg"), "휴대폰 번호를 입력하세요.", "error");
      $("#phoneChecked").val("false");
      $("#phone_no").focus();
      return;
    }

    $.ajax({
      url: "${pageContext.request.contextPath}/join/phoneSendCode.ajax",
      type: "post",
      dataType: "text",
      data: { phone_no: phone },
      success: function (res) {
   	  	if ($.trim(res) === "DUPLICATE") {
   		    setMsg($("#phoneMsg"), "이미 가입된 휴대폰 번호입니다.", "error");
   		    $("#phoneChecked").val("false");
   		    return;
   		  }
    	  
        if ($.trim(res) === "SENT") {
          setMsg($("#phoneMsg"), "인증번호를 전송했습니다. (콘솔 확인)", "success");
          $("#phoneChecked").val("false");
        } else {
          setMsg($("#phoneMsg"), "전송 실패. 다시 시도해주세요.", "error");
          $("#phoneChecked").val("false");
        }
      },
      error: function () {
        setMsg($("#phoneMsg"), "전송 중 오류가 발생했습니다.", "error");
        $("#phoneChecked").val("false");
      }
    });
  });

  $("#btnPhoneVerify").on("click", function () {
    const phone = trimVal("#phone_no");
    const code = trimVal("#phone_code");

    if (!phone) {
      setMsg($("#phoneMsg"), "휴대폰 번호를 입력하세요.", "error");
      $("#phoneChecked").val("false");
      $("#phone_no").focus();
      return;
    }
    if (!code) {
      setMsg($("#phoneMsg"), "인증번호를 입력하세요.", "error");
      $("#phoneChecked").val("false");
      $("#phone_code").focus();
      return;
    }

    $.ajax({
      url: "${pageContext.request.contextPath}/join/phoneVerifyCode.ajax",
      type: "post",
      dataType: "text",
      data: { phone_no: phone, code: code },
      success: function (res) {
        if ($.trim(res) === "OK") {
          setMsg($("#phoneMsg"), "휴대폰 인증이 완료되었습니다.", "success");
          $("#phoneChecked").val("true");
        } else {
          setMsg($("#phoneMsg"), "인증번호가 올바르지 않거나 만료되었습니다.", "error");
          $("#phoneChecked").val("false");
        }
      },
      error: function () {
        setMsg($("#phoneMsg"), "인증 확인 중 오류가 발생했습니다.", "error");
        $("#phoneChecked").val("false");
      }
    });
  });

  // 약관 전체동의/개별동의(선택)
  // 전체동의 체크하면 아래 체크 전부 on/off (필요 없으면 지워도 됨)
  $(".terms-box .all input[type='checkbox']").on("change", function () {
    const checked = $(this).is(":checked");
    // 약관리스트 안 체크박스들 전부(전체동의 자신 제외)
    $(".terms-box .tlist input[type='checkbox']").prop("checked", checked);
  });

  // 개별 체크 상태에 따라 전체동의 갱신(선택)
  $(".terms-box .tlist input[type='checkbox']").on("change", function () {
    const total = $(".terms-box .tlist input[type='checkbox']").length;
    const checkedCount = $(".terms-box .tlist input[type='checkbox']:checked").length;
    $(".terms-box .all input[type='checkbox']").prop("checked", total === checkedCount);
  });
  
  // 이벤트 등 프로모션 정보 수신 동의 (선택) SMS 이메일
  $(".event input[type='checkbox']").on("change", function () {
	    const checked = $(this).is(":checked");
	    $(".event2 input[type='checkbox']").prop("checked", checked);
	  });
  
  $(".event2 input[type='checkbox']").on("change", function () {
	    const total = $(".event2 input[type='checkbox']").length;
	    const checkedCount = $(".event2 input[type='checkbox']:checked").length;
	    $(".event input[type='checkbox']").prop("checked", total === checkedCount);
	  });

  // 가입 submit 최종 검증
  $(".join-form").on("submit", function () {
	  console.log("✅ submit 들어옴");
	  console.log("idChecked=", $("#idChecked").val(),
	              "nickChecked=", $("#nicknameChecked").val(),
	              "emailChecked=", $("#emailChecked").val(),
	              "phoneChecked=", $("#phoneChecked").val());
	  
	  
	  
    // 아이디 형식
    const idv = validateUserId(trimVal("#user_id"));
    if (!idv.ok) {
      setMsg($("#idMsg"), idv.msg, "error");
      $("#user_id").focus();
      return false;
    }

    // 비번 규칙 + 일치
    if (!checkPwAll()) {
      $("#password_confirm").focus();
      return false;
    }
    
    // 이름 한글만
    const nv = validateName(trimVal("#name"));
    if (!nv.ok) {
      setMsg($("#nameMsg"), nv.msg, "error");
      $("#name").focus();
      return false;
    }

    // 이메일 아이디 영문/숫자만
    const ev = validateEmailId(trimVal("#email_id"));
    if (!ev.ok) {
      setMsg($("#emailMsg"), ev.msg, "error");
      $("#email_id").focus();
      return false;
    }

    //  휴대폰 숫자만 + 자리수
    const pv = validatePhone(trimVal("#phone_no"));
    if (!pv.ok) {
      setMsg($("#phoneMsg"), pv.msg, "error");
      $("#phone_no").focus();
      return false;
    }

    // 아이디 중복확인 완료 여부
    if ($("#idChecked").val() !== "true") {
      setMsg($("#idMsg"), "아이디 중복확인을 해주세요.", "error");
      $("#user_id").focus();
      return false;
    }

    // 닉네임 중복확인
    if ($("#nicknameChecked").val() !== "true") {
      setMsg($("#nicknameMsg"), "닉네임 중복확인을 해주세요.", "error");
      $("#nickname").focus();
      return false;
    }

    // 이메일 중복확인
    if ($("#emailChecked").val() !== "true") {
      setMsg($("#emailMsg"), "이메일 중복확인을 해주세요.", "error");
      return false;
    }

    // 휴대폰 인증
    if ($("#phoneChecked").val() !== "true") {
      setMsg($("#phoneMsg"), "휴대폰 인증을 완료해주세요.", "error");
      $("#phone_no").focus();
      return false;
    }

    // 필수 약관
    const must1 = $("input[name='terms_ids'][value='1']").is(":checked");
    const must2 = $("input[name='terms_ids'][value='2']").is(":checked");
    const must4 = $("input[name='terms_ids'][value='4']").is(":checked");

    if (!must1 || !must2 || !must4) {
      alert("필수 약관에 동의해야 가입할 수 있습니다.");
      return false;
    }
    
    // 이메일 선택하도록
    const by = $("#birthY").val();
    const bm = $("#birthM").val();
    const bd = $("#birthD").val();

    const bv = validateBirth(by, bm, bd);
    if (!bv.ok) {
      setMsg($("#birthMsg"), bv.msg, "error");
      $("#birthY").focus();
      return false;
    }
    
   

    return true; 
  });

});

</script>

