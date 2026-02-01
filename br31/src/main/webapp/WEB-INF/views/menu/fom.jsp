<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <p class="menu-fom__title menu-fom__title--en">${dto.productDTO.englishName}</p>

                        <h3 class="menu-fom__title">
                            ${dto.productDTO.productName}                        </h3>

                        <p class="menu-fom__text">
                            ${dto.productDTO.description}                       </p>
                    </header>

                    <ul class="menu-fom-menu">
                    
                    		<c:forEach items="${dto.ingredientDTO}" var="vo">
                    			<li class="menu-fom-menu__item">
                            <img src="${pageContext.request.contextPath}${vo.imgPath}" class="menu-fom-menu__image" alt="${vo.ingredientName}">
                            <p class="menu-fom-menu__text">${vo.ingredientName}</p>
                        </li>
                    		</c:forEach>
                    	
                                            
                                        </ul>
                </div>

                <div class="menu-fom__content">
                    <img src="${pageContext.request.contextPath}${dto.monthlyFlavorDTO.posterPath}" alt="${dto.productDTO.description}" class="menu-fom__image">
                </div>

                                <br><br><br><br>

                <div style="position: relative; width: 100%; padding-bottom: 56.25%; height: 0;">
                <iframe style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;" src="${dto.monthlyFlavorDTO.youtubePath}" 
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
                                <a href="${pageContext.request.contextPath}/menu/view.do?seq=${dto.productDTO.productsId}" class="menu-fom-new__link">
                                    <div class="menu-fom-new__frame">
                                        <img src="${pageContext.request.contextPath}${dto.monthlyFlavorDTO.imgPath}" class="menu-fom-new__image" alt="${dto.productDTO.description}">
                                    </div>
                                    <h5 class="menu-fom-new__name">${dto.productDTO.productName}</h5>
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
