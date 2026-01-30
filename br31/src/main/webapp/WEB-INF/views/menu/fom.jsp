<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<!-- Mirrored from www.baskinrobbins.co.kr/menu/fom.php by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 25 Nov 2025 00:52:21 GMT -->
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
<meta property="og:title" content="[배스킨라빈스] 이달의 맛">
<meta property="og:description" content="배스킨라빈스에서 매달 새로운 이달의 맛을 만나보세요.">
<meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
<meta property="og:type" content="website">



<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

<script type="module" src="https://bks0c7yrb0.execute-api.ap-northeast-2.amazonaws.com/v1/api/fontstream/djs/?sid=gAAAAABk3G1_eyGB8FmZaMXgewjzvKQwe0I-4Kj9Xj-dKpNnUlp_rsk4w6Z_0UeYWyfihX4Dle9eu9HBqxj-2haSIR5ke8aarBIUuDqDVOLuImctKnYplmDTPSV-Bfn2TzQR4jSr7yknqw7gbTlj_xE3x62PMBY9Y3jC5rjtwuoBrWb2FaAY21Z2idAGvnk9xlfgI9CdciJwW6IGsijBsI592KNSqOLc9CQ4zV1Jziva1IN_NNxkzeG_pkU7_0TogufO4qTNTYRr" charset="utf-8"></script>

<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>




<body id="baskinrobbins-menu-fom" class="baskinrobbins-menu-fom">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>


<jsp:include page="/WEB-INF/views/layout/header.jsp" />


<section class="site-container menu-fom">
    <nav class="page-menu">
    <ul class="page-menu__list">
        <!-- 현재 페이지인 경우 page-menu__item--active 추가-->
        <li class="page-menu__item page-menu__item--active">
            <a href="${pageContext.request.contextPath}/menu/fom.do" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">이달의 맛</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=A" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">아이스크림</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=B" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">프리팩</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=C" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">아이스크림케이크</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=D" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">디저트</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ">
            <a href="${pageContext.request.contextPath}/menu/list.do?category=E" class="page-menu__link">
                <div class="page-menu__box">
                    <span class="page-menu__name">음료</span>
                </div>
            </a>
        </li>
        <li class="page-menu__item ">
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
                        <span class="page-header__number">1월</span>
                        이달의 맛
                    </h2>
                </div>
            </div>
        </header>

        <article class="menu-fom__container">
            <div class="menu-fom__content">


            


                <div class="menu-fom__box">
                    <header class="menu-fom__header">
                        <p class="menu-fom__title menu-fom__title--en">${dto.productDTO.english_name}</p>

                        <h3 class="menu-fom__title">
                            ${dto.productDTO.product_name}                        </h3>

                        <p class="menu-fom__text">
                            ${dto.productDTO.description}                       </p>
                    </header>

                    <ul class="menu-fom-menu">
                    
                    		<c:forEach items="${dto.ingredientDTO}" var="vo">
                    			<li class="menu-fom-menu__item">
                            <img src="${pageContext.request.contextPath}${vo.img_path}" class="menu-fom-menu__image" alt="${vo.ingredient_name}">
                            <p class="menu-fom-menu__text">${vo.ingredient_name}</p>
                        </li>
                    		</c:forEach>
                    	
                                            
                                        </ul>
                </div>

                <div class="menu-fom__content">
                    <img src="${pageContext.request.contextPath}${dto.monthlyFlavorDTO.poster_path}" alt="${dto.productDTO.description}" class="menu-fom__image">
                </div>

                                <br><br><br><br>

                <div style="position: relative; width: 100%; padding-bottom: 56.25%; height: 0;">
                <iframe style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" src="${dto.monthlyFlavorDTO.youtube_path}" 
                    title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                    referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                </div>                
                            </div>
        </article>
    </div>

    <article class="menu-fom-new">
        <div class="menu-form-new__container">
            <header class="menu-fom-new__header">
                <h4 class="menu-fom-new__title">이달의 신제품</h4>
            </header>

            <div class="menu-fom-new__content">
                <div class="menu-fom-new__inner">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                                <a href="${pageContext.request.contextPath}/menu/view.do?seq=${dto.productDTO.products_id}" class="menu-fom-new__link">
                                    <div class="menu-fom-new__frame">
                                        <img src="${pageContext.request.contextPath}${dto.monthlyFlavorDTO.img_path}" class="menu-fom-new__image" alt="${dto.productDTO.description}">
                                    </div>
                                    <h5 class="menu-fom-new__name">${dto.productDTO.product_name}</h5>
<!--                                    <p class="menu-fom-new__text">-->
<!--                                        <span class="menu-fom-new__price menu-fom-new__price--origin">--><!--원</span>-->
<!--                                        <strong class="menu-fom-new__price menu-fom-new__price--dc">--><!--원</strong>-->
<!--                                    </p>-->
                                </a>
                            </div>
                                                </div>
                    </div>
                </div>
            </div>
        </div>
    </article>
</section>

 <jsp:include page="/WEB-INF/views/layout/footer.jsp" />
 
</body>


</html>


