<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- CONTENT -->
    <div id="content" class="recipe-list">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">BR Recipe</h2>
                </div>
                <div class="page-header__content">
                    <p class="page-header__text">다양한 전문가들이 제안하는 배라 행복레시피</p>
                </div>
            </div>
        </header>

        <!-- 탭 -->
        <nav class="page-tab">
		  <ul class="page-tab__list">
		    <li class="page-tab__item ${category eq 'ALL' ? 'page-tab__item--active' : ''}">
		      <a href="list.do?category=ALL&page=1" class="page-tab__link"><span class="page-tab__text">전체</span></a>
		    </li>
		
		    <li class="page-tab__item ${category eq '1' ? 'page-tab__item--active' : ''}">
		      <a href="list.do?category=1&page=1" class="page-tab__link"><span class="page-tab__text">셰프 &amp; 파티시에</span></a>
		    </li>
		
		    <li class="page-tab__item ${category eq '2' ? 'page-tab__item--active' : ''}">
		      <a href="list.do?category=2&page=1" class="page-tab__link"><span class="page-tab__text">바리스타 &amp; 바텐더</span></a>
		    </li>
		
		    <li class="page-tab__item ${category eq '3' ? 'page-tab__item--active' : ''}">
		      <a href="list.do?category=3&page=1" class="page-tab__link"><span class="page-tab__text">아티스트</span></a>
		    </li>
		
		    <li class="page-tab__item ${category eq '4' ? 'page-tab__item--active' : ''}">
		      <a href="list.do?category=4&page=1" class="page-tab__link"><span class="page-tab__text">인플루언서</span></a>
		    </li>
		  </ul>
		</nav>


        <div class="recipe-list-list card-list">
            <ul class="card-list__list">

			  <c:if test="${empty list}">
			    <li class="card-list__item">
			      <div class="card-list__content">
			        <p class="recipe-list-list__text">등록된 레시피가 없습니다.</p>
			      </div>
			    </li>
			  </c:if>
			
			  <c:forEach items="${list}" var="dto">
			    <li class="card-list__item">
			      <a href="view.do?recipeId=${dto.recipeId}&category=${category}&page=${pageVO.currentPage}" class="card-list__link">
			        <div class="card-list__box">
			          <img src="${pageContext.request.contextPath}${dto.thumbnail}"
			               alt="${dto.title}"
			               class="recipe-list-list__image">
			        </div>
			
			        <div class="card-list__content">
			          <p class="recipe-list-list__category">${dto.categoryName}</p>
			          <h3 class="recipe-list-list__title">${dto.title}</h3>
			          <p class="recipe-list-list__text">${dto.subTitle}</p>
			        </div>
			      </a>
			    </li>
			  </c:forEach>
			
			</ul>


            <!-- pagination  -->
           <nav>
			  <ul class="pagination">
			
			    <!-- 이전 -->
			    <li class="pagination__item pagination__item--icon pagination__item--prev ${pageVO.prev ? '' : 'pagination__item--disabled'}">
			      <a href="list.do?category=${category}&page=${pageVO.start - 1}" class="pagination__link">
			        <span class="pagination__name">이전</span>
			      </a>
			    </li>
			
			    <!-- 페이지 번호 -->
			    <c:forEach var="i" begin="${pageVO.start}" end="${pageVO.end}">
			      <c:choose>
			        <c:when test="${i == pageVO.currentPage}">
			          <li class="pagination__item pagination__item--current" aria-current="page">
			            <strong class="pagination__link"><span class="pagination__name">${i}</span></strong>
			          </li>
			        </c:when>
			        <c:otherwise>
			          <li class="pagination__item">
			            <a href="list.do?category=${category}&page=${i}" class="pagination__link">
			              <span class="pagination__name">${i}</span>
			            </a>
			          </li>
			        </c:otherwise>
			      </c:choose>
			    </c:forEach>
			
			    <!-- 다음 -->
			    <li class="pagination__item pagination__item--icon pagination__item--next ${pageVO.next ? '' : 'pagination__item--disabled'}">
			      <a href="list.do?category=${category}&page=${pageVO.end + 1}" class="pagination__link">
			        <span class="pagination__name">다음</span>
			      </a>
			    </li>
			
			  </ul>
			</nav>

        </div>

    </div>
