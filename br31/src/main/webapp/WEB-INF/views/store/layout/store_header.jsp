<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="page-menu">
        <ul class="page-menu__list">
            <!--            현재 페이지인 경우 page-menu__item--active 추가-->
            <li class="page-menu__item ${activeMenu eq 'map'?'page-menu__item--active':'' }">
                <a href="${pageContext.request.contextPath}/store/map.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">매장 찾기</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item ${activeMenu eq 'flavor'?'page-menu__item--active':'' }">
                <a href="${pageContext.request.contextPath}/store/flavor.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">100 flavor</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item ${activeMenu eq 'workshop'?'page-menu__item--active':'' }">
                <a href="${pageContext.request.contextPath}/store/workshop.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">Workshop</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item ${activeMenu eq 'delivary'?'page-menu__item--active':'' }">
                <a href="${pageContext.request.contextPath}/store/delivary.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">배달주문</span>
                    </div>
                </a>
            </li>
            <li class="page-menu__item ${activeMenu eq 'catering'?'page-menu__item--active':'' }">
                <a href="${pageContext.request.contextPath}/store/catering.do" class="page-menu__link">
                    <div class="page-menu__box">
                        <span class="page-menu__name">단체주문</span>
                    </div>
                </a>
            </li>
        </ul>
    </nav>