<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.baskinrobbins.co.kr/menu/list.php?cate-gory=F by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 00:58:18 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<title>배스킨라빈스</title>

<meta name="description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta name="keywords" content="baskinrobbins, br31, 배스킨라빈스, 배라, 베라">
<meta name="author" content="배스킨라빈스">
<meta property="og:site_name" content="배스킨라빈스">
<meta property="og:url" content="${pageContext.request.contextPath}/index.html">
<meta property="og:title" content="[배스킨라빈스] 아이스크림">
<meta property="og:description" content="배스킨라빈스의 아이스크림 메뉴입니다.">
<meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">



<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

<script type="module" src="https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/fontstream/djs/?sid=gAAAAABk3G1_eyGB8FmZaMXgewjzvKQwe0I-4Kj9Xj-dKpNnUlp_rsk4w6Z_0UeYWyfihX4Dle9eu9HBqxj-2haSIR5ke8aarBIUuDqDVOLuImctKnYplmDTPSV-Bfn2TzQR4jSr7yknqw7gbTlj_xE3x62PMBY9Y3jC5rjtwuoBrWb2FaAY21Z2idAGvnk9xlfgI9CdciJwW6IGsijBsI592KNSqOLc9CQ4zV1Jziva1IN_NNxkzeG_pkU7_0TogufO4qTNTYRr" charset="utf-8"></script>

<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body id="baskinrobbins-menu" class="baskinrobbins-menu">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<section class="site-container">
    <nav class="page-menu">
    <ul class="page-menu__list">
        <!-- 현재 페이지인 경우 page-menu__item--active 추가-->
        <li class="page-menu__item ">
            <a href="${pageContext.request.contextPath}/menu/fom.do" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">이달의 맛</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ${category=='A'?'page-menu__item--active':''}">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=A" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">아이스크림</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ${category=='B'?'page-menu__item--active':''}">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=B" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">프리팩</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ${category=='C'?'page-menu__item--active':''}">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=C" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">아이스크림케이크</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ${category=='D'?'page-menu__item--active':''}">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=D" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">디저트</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ${category=='E'?'page-menu__item--active':''}">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=E" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">음료</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ${category=='F'?'page-menu__item--active':''}">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=F" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">커피</span>
                </div>
            </a>
        </li>
    </ul>
</nav>
    <div id="content">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        ${title}                   </h2>
                </div>
                <div class="page-header__content">
                    <p class="page-header__text">
                        ${description}</p>
                </div>
            </div>
        </header>

        <div>
            <div class="menu-list">
                <ul class="menu-list__list">
                
                <%--              <li class="menu-list__item menu-list__item--fom menu-list__item--icecream" style="--menu-list-color: #F2C06E">
                        <a href="view599c.html?seq=834" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/a60ae4b0c3ef4628b2ca3adb0c3f5b6b.png" alt="골든 프랄린 버터" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#5f3728">
                            #버터아이스크림 #프랄린슈가                             </span>
                        </a>
                        <strong class="menu-list__title">골든 프랄린 버터</strong>
                    </li> --%>
                
                
                <c:forEach items="${list}" var="vo">
                	<li class="menu-list__item menu-list__item--${vo.categoryName}" style="--menu-list-color: ${vo.bgColor}">
                        <a href="${pageContext.request.contextPath}/menu/view.do?seq=${vo.productsId}" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}${vo.imgPath}" alt="골든 프랄린 버터" class="menu-list__image">
                            <span class="menu-list__hash" style="color:${vo.spanColor}">
                            ${vo.tags}                         </span>
                        </a>
                        <strong class="menu-list__title">${vo.productName}</strong>
                    </li>
                </c:forEach>
                
                
                
					
					<%--              <li class="menu-list__item menu-list__item--fom menu-list__item--icecream" style="--menu-list-color: #F2C06E">
                        <a href="view599c.html?seq=834" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/a60ae4b0c3ef4628b2ca3adb0c3f5b6b.png" alt="골든 프랄린 버터" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#5f3728">
                            #버터아이스크림 #프랄린슈가                             </span>
                        </a>
                        <strong class="menu-list__title">골든 프랄린 버터</strong>
                    </li> --%>
					
					
					<%-- 
                                    <li class="menu-list__item menu-list__item--fom menu-list__item--icecream" style="--menu-list-color: #F2C06E">
                        <a href="view599c.html?seq=834" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/a60ae4b0c3ef4628b2ca3adb0c3f5b6b.png" alt="골든 프랄린 버터" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#5f3728">
                            #버터아이스크림 #프랄린슈가                             </span>
                        </a>
                        <strong class="menu-list__title">골든 프랄린 버터</strong>
                    </li>
					
					
					
					
					
                                    <li class="menu-list__item menu-list__item--new menu-list__item--icecream" style="--menu-list-color: #623924">
                        <a href="view9dc3.html?seq=840" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/d1c5862f5649eb3de61e7cc150999d18.png" alt="초코포키해♥" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#957B6F">
                            #초코포키 #초콜릿쿠키                             </span>
                        </a>

                        <strong class="menu-list__title">초코포키해♥</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #9ca759">
                        <a href="view565c.html?seq=803" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/196edabde017591708905ad0f489257e.png" alt="말차다미아" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#2e1300">
                            #말차다미아 #말차 #마카다미아 #마스카포네치즈                             </span>
                        </a>

                        <strong class="menu-list__title">말차다미아</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #fdf8e1">
                        <a href="view8210.html?seq=418" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/cc95113a4bfca780bbfee39b16fbedf1.png" alt="너는 참 달고나" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#fdb833">
                            #달고나 #카라멜                             </span>
                        </a>

                        <strong class="menu-list__title">너는 참 달고나</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #3d5120">
                        <a href="view91e4.html?seq=827" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/0716427ae68eff29f6da0445ad46cf39.png" alt="&#40;Lessly Edition&#41; 초코나무숲" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#ffd988">
                            #레슬리에디션 #LesslyEdition #초코나무숲                             </span>
                        </a>

                        <strong class="menu-list__title">&#40;Lessly Edition&#41; 초코나무숲</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #F1627D">
                        <a href="view363a.html?seq=808" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/ec90470f157dbd136d2cfc7e94c1cd89.png" alt="골든 애플 요거트" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#ffffff">
                            #사과 #요거트                             </span>
                        </a>

                        <strong class="menu-list__title">골든 애플 요거트</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #f8cb5c">
                        <a href="view547a.html?seq=801" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/e511aa903274e35ed11287f59cc924df.png" alt="&#40;Lessly Edition&#41; 아몬드 봉봉" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#4c2113">
                            #레슬리에디션 #LesslyEdition #아몬드봉봉                             </span>
                        </a>

                        <strong class="menu-list__title">&#40;Lessly Edition&#41; 아몬드 봉봉</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #b0724f">
                        <a href="vieweaeb.html?seq=777" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/09ce6b140dad71186b063fbc77fa6617.png" alt="&#40;Lessly Edition&#41; 엄마는 외계인" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#ffffff">
                            #레슬리에디션 #LesslyEdition #엄마는외계인                             </span>
                        </a>

                        <strong class="menu-list__title">&#40;Lessly Edition&#41; 엄마는 외계인</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #8a5c02">
                        <a href="viewb847.html?seq=788" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/63c000c0602e29401abc877f8f617ec9.png" alt="아이스 맥심 모카골드" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#f9e4af">
                            #맥심 #모카골드 #커피                             </span>
                        </a>

                        <strong class="menu-list__title">아이스 맥심 모카골드</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #cf5d57">
                        <a href="view0dc2.html?seq=786" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/fea066eec3455d92b954428498ad30b3.png" alt="사랑에 빠진 딸기" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#3f2b21">
                            #딸기 #치즈 #크런치초콜릿                             </span>
                        </a>

                        <strong class="menu-list__title">사랑에 빠진 딸기</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #ffb700">
                        <a href="viewe0b6.html?seq=438" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/fd1b61565b616ae04864840360b7cd9d.png" alt="피치 요거트" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#fae0e4">
                            #피치 #요거트                             </span>
                        </a>

                        <strong class="menu-list__title">피치 요거트</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #76bf6c">
                        <a href="viewbb8d.html?seq=557" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/16c6b8173ad0f21ed0e53fed0ffc86cf.png" alt="수박 Hero" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#ffffff">
                            #수박                             </span>
                        </a>

                        <strong class="menu-list__title">수박 Hero</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #004e98">
                        <a href="view2237.html?seq=469" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/719e8584fd50151284b5ace3589f7a34.png" alt="소금 우유 아이스크림" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#ffffff">
                            #소금우유 #단짠                             </span>
                        </a>

                        <strong class="menu-list__title">소금 우유 아이스크림</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #ccd5ae">
                        <a href="viewc632.html?seq=348" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/dd743197f80c722eb57389b4c1814d2f.png" alt="마법사의 비밀 레시피" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#432818">
                            #마법사의 비밀 레시피 #초콜릿 #민트                             </span>
                        </a>

                        <strong class="menu-list__title">마법사의 비밀 레시피</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #f8cb5c">
                        <a href="view2346.html?seq=17" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/91c8668227bcf556c43a968b97e342e6.png" alt="엄마는 외계인" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#87602c">
                            #초콜릿 #초코볼                             </span>
                        </a>

                        <strong class="menu-list__title">엄마는 외계인</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #CDEEEF">
                        <a href="view0073.html?seq=6" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/fb92d70dee836652115c4f3b13175541.png" alt="민트 초콜릿 칩" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#5E3224">
                            #민트 #초콜릿 #민초                             </span>
                        </a>

                        <strong class="menu-list__title">민트 초콜릿 칩</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #7f5a4d">
                        <a href="view3b1b.html?seq=3" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/60a04a3a5d1b0119f065d12ee7797b2c.png" alt="뉴욕 치즈케이크" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#c17641">
                            #치즈 #치즈케이크                             </span>
                        </a>

                        <strong class="menu-list__title">뉴욕 치즈케이크</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #ffeb8e">
                        <a href="view70ee.html?seq=5" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/5ad63f3af7244a666d981a1497a39fe7.png" alt="레인보우 샤베트" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#e54567">
                            #파인애플 #오렌지 #라즈베리                             </span>
                        </a>

                        <strong class="menu-list__title">레인보우 샤베트</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #b45a93">
                        <a href="viewa1ad.html?seq=24" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/f6609e3e3431d54beceeb1d3787403af.png" alt="체리쥬빌레" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#ffd7de">
                            #체리                             </span>
                        </a>

                        <strong class="menu-list__title">체리쥬빌레</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #324b79">
                        <a href="view5b4c.html?seq=15" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/a4b71e8b99743c93a7824331850b0a3d.png" alt="슈팅스타" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#9dbac6">
                            #톡톡 #팝핑캔디 #체리                             </span>
                        </a>

                        <strong class="menu-list__title">슈팅스타</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #35221f">
                        <a href="viewace1.html?seq=19" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/414246bd9041530d6ad4d30d97aac87c.png" alt="오레오 쿠키 앤 크림" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#e6d7ba">
                            #바닐라 #오레오                             </span>
                        </a>

                        <strong class="menu-list__title">오레오 쿠키 앤 크림</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #126f4a">
                        <a href="viewc158.html?seq=12" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/ea6608b4f72563b360da5c44c946ddc7.png" alt="베리베리 스트로베리" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#ffc9c1">
                            #스트로베리 #새콤상큼                             </span>
                        </a>

                        <strong class="menu-list__title">베리베리 스트로베리</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #396b8e">
                        <a href="viewe423.html?seq=1" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/d56328637eaf86e3273ebc39c57aada7.png" alt="31요거트" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#c8d870">
                            #요거트 #31요거트                             </span>
                        </a>

                        <strong class="menu-list__title">31요거트</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #c32550">
                        <a href="viewe076.html?seq=8" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/01ecc320f5d3a6f32e5188eda373842d.png" alt="바람과 함께 사라지다" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#ffcec7">
                            #블루베리 #스트로베리 #치즈케이크                             </span>
                        </a>

                        <strong class="menu-list__title">바람과 함께 사라지다</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #ffaeb8">
                        <a href="view8057.html?seq=22" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/4db4f9967ad6f603837a40eede965ef0.png" alt="이상한 나라의 솜사탕" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#4f8096">
                            #달달 #부드러운 #솜사탕                             </span>
                        </a>

                        <strong class="menu-list__title">이상한 나라의 솜사탕</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #836233">
                        <a href="viewec14.html?seq=29" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/868364b0ed6038d0c9aee0a10e50d4a9.png" alt="피스타치오 아몬드" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#c5e5dd">
                            #피스타치오 #아몬드                             </span>
                        </a>

                        <strong class="menu-list__title">피스타치오 아몬드</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #c4a788">
                        <a href="view4891.html?seq=28" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/0d67607c2ca4dde4ec24ac8109a343c2.png" alt="초콜릿 무스" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#612f29">
                            #초코속에 #초콜릿                             </span>
                        </a>

                        <strong class="menu-list__title">초콜릿 무스</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #fcef84">
                        <a href="viewd9d9.html?seq=2" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/a6bd7bcdd6bdb56f28df7e98f051abda.png" alt="그린티" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#49511f">
                            #녹차 #그린티                             </span>
                        </a>

                        <strong class="menu-list__title">그린티</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #fff99d">
                        <a href="view457b.html?seq=27" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/aff1c39b1653ddb7701abd9b4c8394ee.png" alt="초콜릿" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#612f29">
                            #진정한 #초콜릿                             </span>
                        </a>

                        <strong class="menu-list__title">초콜릿</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #6f6b69">
                        <a href="view8d20.html?seq=23" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/f31388da0371388c2086a7c90990a097.png" alt="자모카 아몬드 훠지" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#ddc295">
                            #모카 #초콜릿                             </span>
                        </a>

                        <strong class="menu-list__title">자모카 아몬드 훠지</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #f8cb5c">
                        <a href="view24bf.html?seq=16" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/e7cb5667c3147ddb0b31e28d1f365980.png" alt="아몬드 봉봉" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#4c2113">
                            #아몬드 #초콜릿                             </span>
                        </a>

                        <strong class="menu-list__title">아몬드 봉봉</strong>
                    </li>
                                    <li class="menu-list__item  menu-list__item--icecream" style="--menu-list-color: #67869b">
                        <a href="view5a16.html?seq=7" class="menu-list__link">
                            <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/901f131644310c0eb356cbab7ecc4738.png" alt="바닐라" class="menu-list__image">
                            <span class="menu-list__hash" style="color:#f3efe5">
                            #바닐라                             </span>
                        </a>

                        <strong class="menu-list__title">바닐라</strong>
                    </li> --%>
                                </ul>
            </div>
        </div>
    </div>

</section>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />


<script>
	$("")
</script>

</body>

<!-- Mirrored from www.baskinrobbins.co.kr/menu/list.php?cate-gory=F by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 00:58:18 GMT -->
</html>
