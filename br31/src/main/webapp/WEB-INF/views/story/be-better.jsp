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
<meta property="og:title" content="[배스킨라빈스] Be betteR">
<meta property="og:description" content="배스킨라빈스의 사회공헌 메뉴 입니다.">
<meta property="og:image" content="https://www.baskinrobbins.co.kr${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />
<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>


<style>
/* 체크박스 모달 핵심 */
.modal-toggle { display:none; }

/*wrap: 화면 전체 + 중앙정렬 */
.modal-wrap{
  display:none;
  position:fixed;
  inset:0;
  z-index:9999;
  padding:40px 20px;       /* 화면 작은 경우 여백 */
  box-sizing:border-box;

  /* 중앙정렬용 (열릴 때만 flex로 바뀌도록 아래에서 제어) */
}

.modal-toggle:checked ~ .modal-wrap{
  display:flex;
  align-items:center;
  justify-content:center;
}

/* dim: 항상 화면 전체 덮기 */
.modal-dim{
  position:fixed;
  inset:0;
  background:rgba(0,0,0,0.5);
}

/*  modal box: 중앙에 뜨는 본문 */
.modal-box{
  position:relative;
  width:900px;
  max-width:100%;
  max-height:calc(100% - 80px); /* 위아래 여백 고려 */
  background:#fff;
  border-radius:12px;
  overflow:auto;
  padding:24px;
  box-sizing:border-box;
  margin:0;                /* 중앙정렬에서 margin 불필요 */
}

/* 닫기 버튼 */
.modal-close{
  position:absolute;
  right:16px;
  top:16px;
  width:36px;
  height:36px;
  border-radius:50%;
  border:1px solid #ddd;
  display:flex;
  align-items:center;
  justify-content:center;
  cursor:pointer;
  font-size:22px;
  line-height:1;
  background:none;
  z-index:10;
}

/* 다른 CSS에서 ::before/::after로 아이콘 붙이면 겹칠 수 있어서 제거 */
.modal-close::before,
.modal-close::after{
  content:none !important;
}

/* 제목/리스트 스타일 */
.modal-title{
  font-size:20px;
  font-weight:700;
  margin:0 50px 16px 0;
  padding-bottom:12px;
  border-bottom:1px solid #eee;
}

.modal-item{
  padding:14px 0;
  border-bottom:1px solid #f2f2f2;
}
.modal-item:last-child{ border-bottom:none; }

.modal-item .ym{
  font-weight:700;
  margin-bottom:6px;
}
.modal-item .desc{
  white-space:pre-line; /* DB에 \n 있으면 줄바꿈 */
}

.btn-open{
  cursor:pointer !important;
  pointer-events:auto !important;
  display:inline-block; /* 클릭 영역 확실히 */
}

.modal-top-title{
  font-size:16px;
  font-weight:700;
  margin:0 0 14px 0;
  color:#111;
}

.modal-line{
  border:0;
  border-top:1px solid #e9e9e9;
  margin:0 0 18px 0;
}

/* 2열(화면 좁으면 1열) */
.modal-grid{
  display:grid;
  grid-template-columns: 1fr 1fr;
  gap:22px;
}
@media (max-width: 900px){
  .modal-grid{ grid-template-columns: 1fr; }
}

.modal-card{
  display:flex;
  gap:14px;
  align-items:flex-start;
}

.modal-card__img{
  width:110px;
  flex:0 0 110px;
}
.modal-card__img img{
  width:100%;
  height:auto;
  display:block;
  border-radius:6px;
}

.modal-card__ym{
  font-size:13px;
  font-weight:700;
  color:#666;
  margin-bottom:6px;
}

.modal-card__title{
  font-size:15px;
  font-weight:800;
  color:#d23b5a;
  margin-bottom:8px;
}

.modal-card__desc{
  font-size:13px;
  color:#333;
  line-height:1.6;
  white-space:pre-line;
}

.modal-empty{
  grid-column: 1 / -1;
  padding:20px 0;
  color:#666;
}

/* 더보기(label) 버튼 글씨/정렬 고정 */
.story-be-better-list__link.btn-open{
  display:inline-flex !important;
  align-items:center !important;
  justify-content:center !important;

  /* 버튼 높이/패딩 */
  height:32px;
  padding:0 14px;

  /* 글씨 */
  font-size:13px !important;
  font-weight:700 !important;
  line-height:1 !important;
  color:#fff !important;
  text-decoration:none !important;

  /* 혹시 기존 CSS가 label을 기울이거나 이상하게 만드는 경우 방지 */
  letter-spacing:0;
  white-space:nowrap;

  /* 클릭감 */
  cursor:pointer;
}

/* 기존 app.css에서 더보기 링크에 붙는 아이콘/장식(가상요소) 제거 */
.story-be-better-list__link.btn-open::before,
.story-be-better-list__link.btn-open::after{
  content:none !important;
}



/* 카드 전체 구조 정렬 */
.story-be-better-list__wrapper{
  display:flex;
  gap:32px;                 /* 이미지-텍스트 간격 */
  align-items:center;
}

/* 왼쪽 이미지 영역: 크게 + 고정 */
.story-be-better-list__frame{
  width:300px;              /* ⭐ 크기 핵심 (260~320 조절 가능) */
  height:300px;             /* ⭐ 모두 동일한 정사각형 */
  flex:0 0 300px;
  background:#f8f8f8;       /* 이미지 로딩 전 배경(선택) */
  border-radius:20px;
  overflow:hidden;
}

/* 이미지 꽉 채우기 */
.story-be-better-list__frame .story-be-better-list__image{
  width:100%;
  height:100%;
  display:block;
  object-fit:cover;         /* 꽉 채움 (잘림 허용) */
  object-position:center;
}



</style>
</head>
<html>
<body id="baskinrobbins-story-be-better" class="baskinrobbins-story-be-better">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">
  <nav class="page-menu">
    <ul class="page-menu__list">
      <li class="page-menu__item">
        <a href="${pageContext.request.contextPath}/story/story.do" class="page-menu__link">
          <div class="page-menu__box"><span class="page-menu__name">브랜드 스토리</span></div>
        </a>
      </li>
      <li class="page-menu__item">
        <a href="${pageContext.request.contextPath}/story/history.do" class="page-menu__link">
          <div class="page-menu__box"><span class="page-menu__name">이달의 맛 히스토리</span></div>
        </a>
      </li>
      <li class="page-menu__item page-menu__item--active">
        <a href="${pageContext.request.contextPath}/story/be-better.do" class="page-menu__link">
          <div class="page-menu__box"><span class="page-menu__name">Be Better</span></div>
        </a>
      </li>
    </ul>
  </nav>

  <section id="content" class="story-be-better">
    <header class="page-header">
      <div class="page-header__container">
        <div class="page-header__content">
          <h2 class="page-header__title">Be Better</h2>
        </div>
        <div class="page-header__content">
          <p class="page-header__text">배라가 사회와 함께 하는 방법,<br>가치 있는 같이</p>
        </div>
      </div>
    </header>

    <div class="story-be-better-list">
      <div class="story-be-better-list__container">
        <ul class="story-be-better-list__list">

 <c:forEach var="c" items="${campaignList}">
  <li class="story-be-better-list__item story-be-better-list__item--dream">

    <!-- 1) 스위치 -->
    <input type="checkbox" id="modal${c.campaignId}" class="modal-toggle" />

    <!-- 2) 카드 -->
    <div class="story-be-better-list__wrapper">
      <div class="story-be-better-list__frame">
        <img src="${pageContext.request.contextPath}${c.campaignImgPath}"
             alt="${c.campaignName}" class="story-be-better-list__image">
      </div>

      <div class="story-be-better-list__box">
        <h3 class="story-be-better-list__title">${c.campaignName}</h3>

        <div class="story-be-better-list__inner">
          <p class="story-be-better-list__text">${c.campaignSubtitle}</p>

          <!--  label 클릭 가능하게 버튼처럼 -->
          <label for="modal${c.campaignId}" class="story-be-better-list__link btn-open">
            더보기
          </label>
        </div>

        <p class="story-be-better-list__description">${c.campaignDescription}</p>
        <pre class="story-be-better-list__content">${c.campaignSummary}</pre>
      </div>
    </div>

    <!-- 3) 모달 -->
    <div class="modal-wrap">
  <label for="modal${c.campaignId}" class="modal-dim"></label>

  <div class="modal-box" role="dialog" aria-modal="true">
    <label for="modal${c.campaignId}" class="modal-close">×</label>

    <!-- 상단 제목 -->
    <h2 class="modal-top-title">
      ‘${c.campaignName}’
    </h2>
    <hr class="modal-line"/>

    <div class="modal-grid">
      <c:set var="hasItem" value="false" />

      <c:forEach var="it" items="${campaignInfoAll}">
        <c:if test="${it.campaignId == c.campaignId}">
          <c:set var="hasItem" value="true" />

          <div class="modal-card">
            <!-- 왼쪽 이미지 -->
            <div class="modal-card__img">
              <img
                src="${pageContext.request.contextPath}${it.campaignActivityImgPath}"
                alt="${it.campaignActivityTitle}">
            </div>

            <!-- 오른쪽 텍스트 -->
            <div class="modal-card__txt">
              <div class="modal-card__ym">${it.campaignActivityYm}</div>
              <div class="modal-card__title">${it.campaignActivityTitle}</div>
              <div class="modal-card__desc">${it.campaignActivityDescription}</div>
            </div>
          </div>

        </c:if>
      </c:forEach>

      <c:if test="${hasItem == false}">
        <div class="modal-empty">상세 내용이 없습니다.</div>
      </c:if>
    </div>

  </div>
</div>

  </li>
</c:forEach>



        </ul>
      </div>
    </div>

  </section>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>
