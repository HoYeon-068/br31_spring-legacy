<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<header class="site-header">
    <div class="site-header__container">
        <div class="site-header__content">
            <h1 class="site-header-logo">
                <a href="${pageContext.request.contextPath}/index.do" class="site-header-logo__link">
                    <span class="site-header-logo__text">Baskin Robbins</span>
                </a>
            </h1>

            <nav class="site-menu">
                <ul class="site-menu__list">
                    <li class="site-menu__item">
                        <a href="${pageContext.request.contextPath}/menu/list.do?category=A" class="site-menu__link">Menu</a>

                        <div class="site-menu-list">
                            <div class="site-menu-list__container">
                                <div class="site-menu-list__content">
                                    <ul class="site-menu-list__list">
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/menu/fom.do" class="site-menu-list__link">이달의 맛</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/menu/list.do?category=A" class="site-menu-list__link">아이스크림</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/menu/list.do?category=B" class="site-menu-list__link">프리팩</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/menu/list.do?category=C" class="site-menu-list__link">아이스크림 케이크</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/menu/list.do?category=D" class="site-menu-list__link">디저트</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/menu/list.do?category=E" class="site-menu-list__link">음료</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/menu/list.do?category=F" class="site-menu-list__link">커피</a>
                                        </li>
                                    </ul>

                                                                    </div>
                            </div>
                        </div>
                    </li>
                    <li class="site-menu__item">
                        <a href="${pageContext.request.contextPath}/play/event/list.do" class="site-menu__link">BR Play</a>

                        <div class="site-menu-list">
                            <div class="site-menu-list__container">
                                <div class="site-menu-list__content">
                                    <ul class="site-menu-list__list">
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/play/event/list.do" class="site-menu-list__link">이벤트</a>

                                            <ul class="site-menu-sub">
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/play/event/list.do?category=1" class="site-menu-sub__link">프로모션</a>
                                                </li>
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/play/event/list.do?category=2" class="site-menu-sub__link">제휴혜택</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="site-menu-list__item site-menu-list__item--depth">
                                            <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="site-menu-list__link">BR Play</a>

                                            <ul class="site-menu-sub">
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="site-menu-sub__link">배라광장</a>
                                                </li>
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/play/recipe/list.do" class="site-menu-sub__link">BR레시피</a>
                                                </li>
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/play/myflavor/list.do" class="site-menu-sub__link">마이플레이버리스트</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>


                                                                    </div>
                            </div>
                        </div>
                    </li>
                    <li class="site-menu__item">
                        <a href="${pageContext.request.contextPath}/story/story.do" class="site-menu__link">BR Story</a>

                        <div class="site-menu-list">
                            <div class="site-menu-list__container">
                                <div class="site-menu-list__content">
                                    <ul class="site-menu-list__list">
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/story/story.do" class="site-menu-list__link">브랜드 스토리</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/story/history.do" class="site-menu-list__link">이달의 맛 히스토리</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/story/be-better.do" class="site-menu-list__link">Be Better</a>
                                        </li>
                                    </ul>

                                                                    </div>
                            </div>
                        </div>
                    </li>
                    <li class="site-menu__item">
                        <a href="${pageContext.request.contextPath}/store/map.do" class="site-menu__link">Delivery/Store</a>

                        <div class="site-menu-list">
                            <div class="site-menu-list__container">
                                <div class="site-menu-list__content">
                                    <ul class="site-menu-list__list">
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/store/map.do" class="site-menu-list__link">Store</a>
                                            <ul class="site-menu-sub">
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/store/map.do" class="site-menu-sub__link">매장 찾기</a>
                                                </li>
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/store/flavor.do" class="site-menu-sub__link">100flavor 플래그십스토어</a>
                                                </li>
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/store/workshop.do" class="site-menu-sub__link">워크샵 by 배스킨라빈스</a>
                                                </li>
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/information-center/consulting/br.do" class="site-menu-sub__link">점포개설문의</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="site-menu-list__item site-menu-list__item--depth">
                                            <a href="${pageContext.request.contextPath}/store/delivary.do" class="site-menu-list__link">Delivery</a>

                                            <ul class="site-menu-sub">
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/store/delivary.do" class="site-menu-sub__link">배달주문</a>
                                                </li>
                                                <li class="site-menu-sub__item">
                                                    <a href="${pageContext.request.contextPath}/store/catering.do" class="site-menu-sub__link">단체주문</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>

                                                                    </div>
                            </div>
                        </div>
                    </li>


                    <li class="site-menu__item">
                        <a href="${pageContext.request.contextPath}/brapp/brapp.do" class="site-menu__link">배라앱</a>

                        <div class="site-menu-list">
                            <div class="site-menu-list__container">
                                <div class="site-menu-list__content">
                                    <ul class="site-menu-list__list">
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/brapp/brapp.do" class="site-menu-list__link">배라앱 소개 및 다운로드</a>
                                        </li>                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    

                    
                    <li class="site-menu__item site-menu__item--hidden">
                        <a href="${pageContext.request.contextPath}/information-center/customer/list.do" class="site-menu__link">Information Center</a>

                        <div class="site-menu-list">
                            <div class="site-menu-list__container">
                                <div class="site-menu-list__content">
                                    <ul class="site-menu-list__list">
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/information-center/customer/list.do" class="site-menu-list__link">고객센터</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/information-center/customer/ccm.do" class="site-menu-list__link">소비자중심경영(CCM)</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/information-center/praise/list.html" class="site-menu-list__link">칭찬점포</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/information-center/notice/list.do" class="site-menu-list__link">공지사항</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/information-center/press/list.do" class="site-menu-list__link">보도자료</a>
                                        </li>
                                        <li class="site-menu-list__item">
                                            <a href="${pageContext.request.contextPath}/information-center/fairtrade/list.do" class="site-menu-list__link">공정거래자율준수</a>
                                        </li>                                        
                                    </ul>

                                                                    </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="site-header__content">
            <div class="site-header__search">
                <button type="button" class="site-header__search-button">
                    <span class="site-header__search-hidden">검색</span>
                </button>
            </div>

            <div class="site-user-menu">
                <div class="site-user-menu__container">
                    <button class="site-user-menu__button" data-bs-toggle="dropdown">
                        <span class="site-user-menu__text">메뉴 열고 닫기</span>
                    </button>

                    <form name="loginForm" method="get" action="https://www.baskinrobbins.co.kr/login/login.php" >
                        <input type="hidden" name="returnURL" value="/brapp/brapp.php" />
                    </form>

                    <nav class="site-user-menu__content dropdown-menu">
                        <ul class="site-user-menu__list"> 
                        		<!-- 수정 -->
                        		<sec:authorize access="isAuthenticated()">
								  <li class="site-user-menu__item">
								    <form action="${pageContext.request.contextPath}/login/logout.do" method="post" style="display:inline;">
								      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
								      <button type="submit" class="site-user-menu__link"
								              style="all: unset; background:none;border:0;padding:0;cursor:pointer ">
								        Logout
								      </button>
								    </form>
								  </li>
								
								  <li class="site-user-menu__item">
								    <a href="${pageContext.request.contextPath}/mypage/mypage.do" target="_blank" class="site-user-menu__link">My Page</a>
								  </li>
								  <li class="site-user-menu__item">
								    <a href="${pageContext.request.contextPath}/information-center/customer/list.do" class="site-user-menu__link">CS CENTER</a>
								  </li>
								</sec:authorize>
								
								<sec:authorize access="isAnonymous()">
								    <li class="site-user-menu__item">
								        <a href="${pageContext.request.contextPath}/login/login.do" class="site-user-menu__link">Login</a>
								    </li>
								    <li class="site-user-menu__item">
								        <a href="${pageContext.request.contextPath}/join/join.do" target="_blank" class="site-user-menu__link">Join</a>
								    </li>
								    <li class="site-user-menu__item">
								        <a href="${pageContext.request.contextPath}/information-center/customer/list.do" class="site-user-menu__link">CS CENTER</a>
								    </li>
								</sec:authorize>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>

    <div class="site-search">
        <div class="site-search__container">
            <div class="site-search__content">
                <button type="button" class="site-search__close">
                    <span class="site-search__close-text">close</span>
                </button>
            </div>
        </div>

        <div class="site-search__container">
            <div class="site-search__content">
                <form action="${pageContext.request.contextPath}/search/list.do" class="site-search__form" method="GET">
                    <fieldset>
                        <legend>제품 검색 폼</legend>

                        <div class="site-search__box">
                            <input type="text" name="keyword" class="site-search__input" placeholder="제품명을 입력하세요">

                            <button type="button" class="site-search__delete">
                                <span class="site-search__hidden">삭제</span>
                            </button>

                            <button type="submit" class="site-search__submit">
                                <span class="site-search__hidden">검색</span>
                            </button>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</header>