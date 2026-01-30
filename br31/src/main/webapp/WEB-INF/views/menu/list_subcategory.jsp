<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.baskinrobbins.co.kr/menu/list_subcategory.php?category=C by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 00:53:03 GMT -->
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
<meta property="og:url" content="../index.html">
<meta property="og:title" content="배스킨라빈스">
<meta property="og:description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
<meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

<script type="module" src="https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/fontstream/djs/?sid=gAAAAABk3G1_eyGB8FmZaMXgewjzvKQwe0I-4Kj9Xj-dKpNnUlp_rsk4w6Z_0UeYWyfihX4Dle9eu9HBqxj-2haSIR5ke8aarBIUuDqDVOLuImctKnYplmDTPSV-Bfn2TzQR4jSr7yknqw7gbTlj_xE3x62PMBY9Y3jC5rjtwuoBrWb2FaAY21Z2idAGvnk9xlfgI9CdciJwW6IGsijBsI592KNSqOLc9CQ4zV1Jziva1IN_NNxkzeG_pkU7_0TogufO4qTNTYRr" charset="utf-8"></script>

<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

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
				
				
				<c:forEach items="${list}" var="vo">
					 <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: ${vo.bg_color}">
                            <a href="${pageContext.request.contextPath}/menu/view.do?seq=${vo.products_id}" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}${vo.img_path}" alt="버터팝콘쉐이크" class="menu-list__image">
                                <span class="menu-list__hash" style="color:${vo.span_color}">
                            ${vo.tags}                              </span>
                            </a>
                            <strong class="menu-list__title">${vo.product_name}</strong>
                            <strong class="menu-list__desc">${vo.sub_title}</strong>
                        </li>
				</c:forEach>
				
               
                        
                        
                          <%--                       <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #9ca754">
                            <a href="view_subcategory791a.html?seq=58" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/f5b3686f3d7299a42d063f54683ef935.png" alt="말차 쉐이크 2종" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#ffffff">
                            #말차밀크쉐이크 #핑크베리말차쉐이크                             </span>
                            </a>
                            <strong class="menu-list__title">말차 쉐이크 2종</strong>
                            <strong class="menu-list__desc">제주산 말차의 깊은 풍미에 부드러움과 상큼함을 더한 두 가지 쉐이크</strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #BA905C">
                            <a href="view_subcategory01a6.html?seq=57" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/d392babbbfd677244b52838b62f2a42e.png" alt="아이스 믹스커피 블라스트" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#ffffff">
                            #믹스커피                             </span>
                            </a>
                            <strong class="menu-list__title">아이스 믹스커피 블라스트</strong>
                            <strong class="menu-list__desc"></strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #E2DAC9">
                            <a href="view_subcategory75ee.html?seq=56" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/41df44cd93e85296094d9fdda65fc06f.png" alt="짐빔 하이볼 레몬 블라스트" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#ffffff">
                            #짐빔 #하이볼 #레몬                             </span>
                            </a>
                            <strong class="menu-list__title">짐빔 하이볼 레몬 블라스트</strong>
                            <strong class="menu-list__desc"></strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #71a5d1">
                            <a href="view_subcategory3cc2.html?seq=55" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/358e161ba428689c51df86088e53cddb.png" alt="&#40;Lessly Edition&#41; 쉐이크" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#ffffff">
                            #레슬리에디션 #LesslyEdition #엄마는외계인 #민트초콜릿칩                             </span>
                            </a>
                            <strong class="menu-list__title">&#40;Lessly Edition&#41; 쉐이크</strong>
                            <strong class="menu-list__desc">&#40;엄마는 외계인, 민트 초콜릿 칩&#41;</strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #f4af38">
                            <a href="view_subcategory1e8c.html?seq=53" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/e7696bf9570ddc7ebda15e1baf5b174e.png" alt="칸탈로프 멜론 블라스트" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#ffffff">
                            #칸탈로프멜론                             </span>
                            </a>
                            <strong class="menu-list__title">칸탈로프 멜론 블라스트</strong>
                            <strong class="menu-list__desc"></strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #e37070">
                            <a href="view_subcategory2c32.html?seq=51" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/e9936b57cbc69aca730ab13bf2b6af9c.png" alt="수박 블라스트" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#ffffff">
                            #수박                             </span>
                            </a>
                            <strong class="menu-list__title">수박 블라스트</strong>
                            <strong class="menu-list__desc"></strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #f0b6b5">
                            <a href="view_subcategory05ef.html?seq=46" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/ce9844882c908828ee3b7937bd2d4284.png" alt="딸기 찹쌀떡 쉐이크" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#e21727">
                            #말랑딸기찹쌀떡 #딸기치즈쉐이크 #핑크떡                             </span>
                            </a>
                            <strong class="menu-list__title">딸기 찹쌀떡 쉐이크</strong>
                            <strong class="menu-list__desc"></strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #dfa163">
                            <a href="view_subcategory4e26.html?seq=40" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/2464a2862652ea3d9115e0c4f325f241.png" alt="저당 과일티" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#c13015">
                            #레몬 #자몽                             </span>
                            </a>
                            <strong class="menu-list__title">저당 과일티</strong>
                            <strong class="menu-list__desc">&#40;레몬, 자몽&#41;</strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #F6CFCE">
                            <a href="view_subcategory5a16.html?seq=7" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/9cf8841bd41c51f8ca0a3ea93df4e9ee.png" alt="설향딸기 블라스트" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#D93238">
                            #설향딸기                             </span>
                            </a>
                            <strong class="menu-list__title">설향딸기 블라스트</strong>
                            <strong class="menu-list__desc"></strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #f8f7ff">
                            <a href="view_subcategory59a5.html?seq=10" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/52b936244dcc6d3b44bcfbc3cbaddfff.png" alt="요거트 블라스트" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#f49cbb">
                            #스트로베리                             </span>
                            </a>
                            <strong class="menu-list__title">요거트 블라스트</strong>
                            <strong class="menu-list__desc">&#40;스트로베리&#41;</strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #f3e9dc">
                            <a href="view_subcategory0d33.html?seq=9" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/ce8b2ddadaf32cc9ac64690b3ec655c1.png" alt="카푸치노 블라스트" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#6c584c">
                            #카푸치노                             </span>
                            </a>
                            <strong class="menu-list__title">카푸치노 블라스트</strong>
                            <strong class="menu-list__desc">&#40;오리지널, 모카&#41;</strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #f9eae1">
                            <a href="view_subcategorye076.html?seq=8" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/fe4ae6f5d3b971767e89687ec15b4f1b.png" alt="아이스크림 블라스트" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#7d4f50">
                            #아몬드봉봉 #엄마는외계인 #우주라이크봉봉                             </span>
                            </a>
                            <strong class="menu-list__title">아이스크림 블라스트</strong>
                            <strong class="menu-list__desc">&#40;아몬드봉봉, 엄마는외계인, 우주라이크봉봉&#41;</strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #fec89a">
                            <a href="view_subcategory70ee.html?seq=5" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/1732ad450c6fbd27c04dd5d8f384d47c.png" alt="와츄원 쉐이크" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#bb9457">
                            #와츄원쉐이크                             </span>
                            </a>
                            <strong class="menu-list__title">와츄원 쉐이크</strong>
                            <strong class="menu-list__desc"></strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #e0e1dd">
                            <a href="view_subcategory3b2e.html?seq=4" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/1f4469a3408b0c270e442e404f0d381f.png" alt="밀크 쉐이크" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#99582a">
                            #밀크쉐이크                             </span>
                            </a>
                            <strong class="menu-list__title">밀크 쉐이크</strong>
                            <strong class="menu-list__desc"></strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #f08080">
                            <a href="view_subcategory3b1b.html?seq=3" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/3bfe8e7cc3e3a6c46af6721cdb70b7d1.png" alt="오레오 쉐이크" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#582f0e">
                            #오레오 #딸기 #초코                             </span>
                            </a>
                            <strong class="menu-list__title">오레오 쉐이크</strong>
                            <strong class="menu-list__desc">&#40;오리지널, 딸기, 초코&#41;</strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #fff3b0">
                            <a href="view_subcategoryd9d9.html?seq=2" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/9faa6c13582c134bbfcb60255507d059.png" alt="납작복숭아 아이스티" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#ff9770">
                            #납작복숭아                             </span>
                            </a>
                            <strong class="menu-list__title">납작복숭아 아이스티</strong>
                            <strong class="menu-list__desc"></strong>
                        </li>
                                                <li class="menu-list__item  menu-list__item--drink" style="--menu-list-color: #ffe5ec">
                            <a href="view_subcategorye423.html?seq=1" class="menu-list__link">
                                <img src="${pageContext.request.contextPath}/resources/images/upload/product/main/76341cf30ea88200db6f534db926d5df.png" alt="딸기 연유 라떼" class="menu-list__image">
                                <span class="menu-list__hash" style="color:#bc6c25">
                            #딸기 #연유 #베리베리스트로베리                             </span>
                            </a>
                            <strong class="menu-list__title">딸기 연유 라떼</strong>
                            <strong class="menu-list__desc"></strong>
                        </li> --%>
                                        </ul>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
