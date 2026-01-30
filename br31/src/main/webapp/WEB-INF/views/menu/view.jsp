<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
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


<script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>

</head>
<body id="baskinrobbins-menu-view" class="baskinrobbins-menu-view">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>


<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">
    <div id="content" class="menu-view">
        <section>
                        <article class="menu-view-top menu-view-top--${dto.category_name}">
                <div class="menu-view-top__container">
                    <div class="menu-view-top__content menu-view-top__content--center">
                        <div class="menu-view-top__box">
                            <header class="menu-view-header">
                                <div class="menu-view-header__container">
                                    <div class="menu-view-header__content">
                                        <p class="menu-view-header__category">${dto.category_name}</p>
                                        <h2 class="menu-view-header__title">
                                            <span class="menu-view-header__title--en">
                                                ${dto.english_name}                                            </span>
                                            <span class="menu-view-header__title--ko">
                                                ${dto.product_name}                                            </span>
                                        </h2>
                                        <p class="menu-view-header__text">
                                            ${dto.description}                                        </p>
                                            
                                            <c:if test="${dto.price !=0}">
                                            <p class="menu-view-header__price">
                                            ${dto.price}원                                        </p>                                            
                                            </c:if>
                                                                            </div>
                                </div>
                            </header>
                                                            <div class="menu-view-ingredients">
                                    <ul class="menu-view-ingredients__list">
                                    	<c:forEach items="${dto.ingredientDTO}" var="vo">
                                    		<li class="menu-view-ingredients__item">
                                                <img src="${pageContext.request.contextPath}${vo.img_path}" alt="${vo.ingredient_name}" class="menu-view-ingredients__image">
                                                <span class="menu-view-ingredients__name">${vo.ingredient_name}</span>
                                            </li>
                                    	</c:forEach>
                                    
                                    
                                    
                                            
                                                                                </ul>
                                </div>
                            

                                                    </div>

                        <div>
                            <div class="menu-view-hero ${category_id eq 1?"menu-view-hero--icecream":""} menu-view-hero--current" style="background-color: ${dto.bg_color};">

                                <img src="${pageContext.request.contextPath}${dto.img_path}" alt="${dto.product_name}" class="menu-view-hero__image">
                            </div>
                        </div>
                    </div>


						<c:if test="${not empty prevDTO}">
							<a href="${pageContext.request.contextPath}/menu/view.do?seq=${prevDTO.products_id}" class="menu-view-top__link menu-view-top__link--prev">
                            <span class="menu-view-top__text">${prevDTO.product_name}</span>
                        </a>
                        <div class="menu-view-top__content menu-view-top__content--left">
                            <!-- 관리자: 이전 컨텐츠 컬러값  -->
                            <div class="menu-view-hero menu-view-hero--left" style="background-color: ${prevDTO.bg_color}">
                                <img src="${pageContext.request.contextPath}${prevDTO.img_path}" alt="${prevDTO.product_name}" class="menu-view-hero__image">
                            </div>
                        </div>
						</c:if>

                                            
                        <c:if test="${not empty nextDTO}">
                        	<a href="${pageContext.request.contextPath}/menu/view.do?seq=${nextDTO.products_id}" class="menu-view-top__link menu-view-top__link--next">
                            <span class="menu-view-top__text">${nextDTO.product_name}</span>
                        </a>
                        <div class="menu-view-top__content menu-view-top__content--right">
                            <!-- 관리자: 이전 컨텐츠 컬러값  -->
                            <div class="menu-view-hero menu-view-hero--right" style="background-color:${nextDTO.bg_color}">
                                <img src="${pageContext.request.contextPath}${nextDTO.img_path}" alt="${nextDTO.product_name}" class="menu-view-hero__image">
                            </div>
                        </div>
                        </c:if>
                        
                        
                                                
                                        </div>
            </article>

            <div class="menu-view__container">
            
            
            			
            				            <article class="menu-view-nutrition">
            				            <c:if test="${not empty dto.iceNutritionDTO}">
                        <div class="menu-view-nutrition__container">
                            <h3 class="menu-view-nutrition__title">영양정보</h3>

                            <dl class="menu-view-nutrition__content">
                                <div class="menu-view-nutrition__item">
                                    <dt class="menu-view-nutrition__name">1회 제공량(g)</dt>
                                    <dd class="menu-view-nutrition__text">${dto.iceNutritionDTO.serving_size}</dd>
                                </div>
                                <div class="menu-view-nutrition__item">
                                    <dt class="menu-view-nutrition__name">열량(kcal)</dt>
                                    <dd class="menu-view-nutrition__text">${dto.iceNutritionDTO.calories}</dd>
                                </div>
                                <div class="menu-view-nutrition__item">
                                    <dt class="menu-view-nutrition__name">당류(g)</dt>
                                    <dd class="menu-view-nutrition__text" style="">${dto.iceNutritionDTO.sugar}</dd>
                                </div>
                                <div class="menu-view-nutrition__item">
                                    <dt class="menu-view-nutrition__name">단백질(g)</dt>
                                    <dd class="menu-view-nutrition__text">${dto.iceNutritionDTO.protein}</dd>
                                </div>
                                <div class="menu-view-nutrition__item">
                                    <dt class="menu-view-nutrition__name">포화지방(g)</dt>
                                    <dd class="menu-view-nutrition__text">${dto.iceNutritionDTO.saturated_fat}</dd>
                                </div>
                                <div class="menu-view-nutrition__item">
                                    <dt class="menu-view-nutrition__name">나트륨(mg)</dt>
                                    <dd class="menu-view-nutrition__text">${dto.iceNutritionDTO.sodium}</dd>
                                </div>
                                                                <div class="menu-view-nutrition__item">
                                    <dt class="menu-view-nutrition__name">알레르기 성분</dt>
                                    <dd class="menu-view-nutrition__text">${dto.iceNutritionDTO.allergens}</dd>
                                </div>
                            </dl>
                        </div>

            			</c:if>
                                            </article>
            				
            			
                                        
                                        
                         <c:if test="${dto.poster_path!=''}">
                         	 <article class="menu-view-content">
                        <div class="menu-view-content__container">
                            <div class="menu-view-content__content">
                                <p style="text-align&#58; center&#59;"><img alt="" src="${pageContext.request.contextPath}${dto.poster_path}" /></p>                            </div>
                        </div>
                    </article>                    
                         </c:if>
                    
                    <c:if test="${dto.category_name=='icecream'}">
                                    <article class="menu-view-size">
                        <h3 class="menu-view-size__title">SELECT SIZE</h3>

                        <div class="menu-view-size__container">
                            <article class="menu-view-size__content menu-view-list">
                                <h4 class="menu-view-list__title">
                                    CONE &amp; CUP
                                    <span>콘,컵 제외 중량</span>
                                </h4>

                                <ul class="menu-view-list__list-cone-cup">
                                    <li class="menu-view-list__item menu-view-list__item--c1">
                                        <span class="menu-view-list__name">싱글레귤러</span>
                                        <span class="menu-view-list__weight">1가지 맛 (중량 115 g)</span>
                                        <strong class="menu-view-list__price">3,900원</strong>
                                    </li>
                                    <li class="menu-view-list__item menu-view-list__item--c2">
                                        <span class="menu-view-list__name">싱글킹</span>
                                        <span class="menu-view-list__weight">1가지 맛 (중량 145 g)</span>
                                        <strong class="menu-view-list__price">4,700원</strong>
                                    </li>
                                    <li class="menu-view-list__item menu-view-list__item--c3">
                                        <span class="menu-view-list__name">더블주니어</span>
                                        <span class="menu-view-list__weight">2가지맛(중량 150 g)</span>
                                        <strong class="menu-view-list__price">5,100원</strong>
                                    </li>
                                    <li class="menu-view-list__item menu-view-list__item--c4">
                                        <span class="menu-view-list__name">트리플 주니어</span>
                                        <span class="menu-view-list__weight">3가지맛(중량 225 g)</span>
                                        <strong class="menu-view-list__price">7,200원</strong>
                                    </li>
                                    <li class="menu-view-list__item menu-view-list__item--c5">
                                        <span class="menu-view-list__name">더블레귤러</span>
                                        <span class="menu-view-list__weight">2가지맛(중량 230 g)</span>
                                        <strong class="menu-view-list__price">7,300원</strong>
                                    </li>
                                </ul>
                            </article>

                            <article class="menu-view-size__content menu-view-list">
                                <h4 class="menu-view-list__title">
                                    HAND PACK
                                    <span>용기 포함 중량</span>
                                </h4>

                                <ul class="menu-view-list__list">
                                    <li class="menu-view-list__item menu-view-list__item--hp1">
                                        <span class="menu-view-list__name">파인트</span>
                                        <span class="menu-view-list__weight">3가지맛(중량 336 g)</span>
                                        <strong class="menu-view-list__price">9,800원</strong>
                                    </li>
                                    <li class="menu-view-list__item menu-view-list__item--hp2">
                                        <span class="menu-view-list__name">쿼터</span>
                                        <span class="menu-view-list__weight">4가지맛(중량 643 g)</span>
                                        <strong class="menu-view-list__price">18,500원</strong>
                                    </li>
                                    <li class="menu-view-list__item menu-view-list__item--hp3">
                                        <span class="menu-view-list__name">패밀리</span>
                                        <span class="menu-view-list__weight">5가지맛(중량 989 g)</span>
                                        <strong class="menu-view-list__price">26,000원</strong>
                                    </li>
                                    <li class="menu-view-list__item menu-view-list__item--hp4">
                                        <span class="menu-view-list__name">하프갤론</span>
                                        <span class="menu-view-list__weight">6가지맛(중량 1,237 g)</span>
                                        <strong class="menu-view-list__price">31,500원</strong>
                                    </li>
                                </ul>
                            </article>

                                                        <p class="menu-view-size__text">* 일부 제품에 한해 가격이 상이할 수 있습니다.</p>
                                                    </div>
                    </article>

                    <article class="menu-view-mixture">
                        <div class="menu-view-mixture__container">
                            <header class="menu-view-mixture__header">
                                <h3 class="menu-view-mixture__title">BR 추천 조합</h3>
                                <p class="menu-view-mixture__text">마이 플레이버 리스트 맛 조합 추천</p>
                            </header>

                            <div class="menu-view-mixture__content">
                                <div class="menu-view-mixture__inner">
                                    <div class="swiper">
                                        <div class="swiper-wrapper">
                                                                                        <!-- 항상 존재하는 것 -->
                                            <div class="swiper-slide menu-view-mixture__item menu-view-mixture__item--default">
                                                <a href="../play/myflavor/list.html" class="menu-view-mixture__link">
                                                    <p class="menu-view-mixture__description">
                                                    <span class="menu-view-mixture__description-text-1">
                                                        더 다양한 맛 조합이 보고 싶다면?<br>
                                                        내가 추천하는 조합이 있다면?
                                                    </span>
                                                        <span class="menu-view-mixture__description-text-2">
                                                        <span>마이 플레이버리스트</span>
                                                    </span>
                                                    </p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                         </c:if>
                                   
                            </div>
        </section>
    </div>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>


</html>
