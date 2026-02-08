<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <!-- CONTENT -->
    <div id="content" class="recipe-view">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">BR Recipe</h2>
                    <div class="event-view__header">
                        다양한 전문가들이 제안하는 배라 행복레시피
                    </div>
                </div>
            </div>
        </header>

        <!-- HTML -->
        <c:set var="html" value="${dto.contentHtml}" />

        <!-- /assets 경로 치환 -->
        <c:set var="html" value="${fn:replace(
            html,
            'src=&quot;/assets',
            'src=&quot;https://www.baskinrobbins.co.kr/assets'
        )}" />

        <!--/upload 경로 치환 -->
        <c:set var="html" value="${fn:replace(
            html,
            'src=&quot;/upload',
            'src=&quot;https://www.baskinrobbins.co.kr/upload'
        )}" />

        <!-- 출력 -->
        <article class="recipe-view-article">
            <c:out value="${html}" escapeXml="false" />
        </article>

        <!-- 목록 버튼 -->
        <div class="recipe-view__box">
            <a href="list.do?category=${param.category}&page=${param.page}"
               class="recipe-view__button">목록</a>
        </div>

    </div>
