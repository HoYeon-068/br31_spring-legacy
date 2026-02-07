<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- CONTENT -->
    <article id="content" class="myflavor-list">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">My Flavor List</h2>
                </div>

                <div class="page-header__content">
                    <p class="page-header__text">
                        내 맘대로 하는 맛조합! 나만의 플레이버 리스트를 만들어보세요!<br>
                        센스있는 플레이버 리스트에게는 행운이 올지도 모른답니다!
                    </p>
                </div>
            </div>
        </header>

        <!-- 참여하기 -->
        <aside class="myflavor-list__make-my-flavor">
            <p>
                <span>내맘대로 추천하는</span>
                <strong>나만의 <em>맛조합</em> 만들기</strong>

                <a href="${pageContext.request.contextPath}/play/myflavor/register.do">참여하기</a>
            </p>
        </aside>

        <!-- 필터 폼 -->
        <form class="myflavor-list__form myflavor-form"
              method="get"
              action="${pageContext.request.contextPath}/play/myflavor/list.do">

            <!-- 맛 태그 -->
            <fieldset class="myflavor-form__field myflavor-form__field--tag">
                <legend class="myflavor-form__title">맛 태그</legend>

                <div class="myflavor-form__content myflavor-select">
                    <ul>
                        <c:choose>
                            <c:when test="${not empty tags}">
                                <c:forEach var="t" items="${tags}">
                                    <li>
                                        <label>
                                            <input type="checkbox" name="tag" value="${t}">
                                            <span><c:out value="${t}" /></span>
                                        </label>
                                    </li>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <label>
                                        <input type="checkbox" name="tag" value="특이한 맛들을 모아서">
                                        <span>특이한 맛들을 모아서</span>
                                    </label>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </fieldset>

            <!-- 인기 플레이버 -->
            <fieldset class="myflavor-form__field myflavor-form__field--flavor">
                <legend class="myflavor-form__title">인기 플레이버</legend>

                <div class="myflavor-form__content myflavor-flavor">
                    <ul>
                        <c:choose>
                            <c:when test="${not empty popularFlavors}">
                                <c:forEach var="f" items="${popularFlavors}">
                                    <li>
                                        <label>
                                            <input type="checkbox" name="flavor" value="${f.id}">
                                            <span style="background-image:url('${pageContext.request.contextPath}${f.imgPath}')"></span>
                                            <span><c:out value="${f.name}" /></span>
                                        </label>
                                    </li>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <li>
                                    <label>
                                        <input type="checkbox" name="flavor" value="17">
                                        <span style="background-image:url('${pageContext.request.contextPath}/resources/images/upload/product/main/91c8668227bcf556c43a968b97e342e6.png')"></span>
                                        <span>엄마는 외계인</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input type="checkbox" name="flavor" value="16">
                                        <span style="background-image:url('${pageContext.request.contextPath}/resources/images/upload/product/main/e7cb5667c3147ddb0b31e28d1f365980.png')"></span>
                                        <span>아몬드 봉봉</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input type="checkbox" name="flavor" value="6">
                                        <span style="background-image:url('${pageContext.request.contextPath}/resources/images/upload/product/main/fb92d70dee836652115c4f3b13175541.png')"></span>
                                        <span>민트 초콜릿 칩</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input type="checkbox" name="flavor" value="3">
                                        <span style="background-image:url('${pageContext.request.contextPath}/resources/images/upload/product/main/60a04a3a5d1b0119f065d12ee7797b2c.png')"></span>
                                        <span>뉴욕 치즈케이크</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input type="checkbox" name="flavor" value="24">
                                        <span style="background-image:url('${pageContext.request.contextPath}/resources/images/upload/product/main/f6609e3e3431d54beceeb1d3787403af.png')"></span>
                                        <span>체리쥬빌레</span>
                                    </label>
                                </li>
                                <li>
                                    <label>
                                        <input type="checkbox" name="flavor" value="5">
                                        <span style="background-image:url('${pageContext.request.contextPath}/resources/images/upload/product/main/5ad63f3af7244a666d981a1497a39fe7.png')"></span>
                                        <span>레인보우 샤베트</span>
                                    </label>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </fieldset>

            <!-- 사이즈 -->
            <fieldset class="myflavor-form__field myflavor-form__field--size">
                <legend class="myflavor-form__title">사이즈</legend>

                <div class="myflavor-form__content myflavor-select">
                    <ul>
                        <li><label><input type="checkbox" name="size" value="A"><span>3가지 맛(파인트)</span></label></li>
                        <li><label><input type="checkbox" name="size" value="B"><span>4가지 맛(쿼터)</span></label></li>
                        <li><label><input type="checkbox" name="size" value="C"><span>5가지 맛(패밀리)</span></label></li>
                        <li><label><input type="checkbox" name="size" value="D"><span>6가지 맛(하프갤런)</span></label></li>
                    </ul>
                </div>
            </fieldset>

            <p class="myflavor-form__buttons">
                <button type="reset">선택초기화</button>
            </p>
        </form>

        <!-- 결과 리스트 -->
        <section class="myflavor-list__list">
            <p>
                총 <strong>
                    <c:out value="${empty totalCount ? 0 : totalCount}" />
                </strong>개의 플레이버 리스트가 있습니다.
            </p>

            <div class="myflavor-flavorlist">
                <ul>
                    <c:if test="${not empty myFlavorList}">
                        <c:forEach var="item" items="${myFlavorList}">
                            <li>
                                <!-- 예: 상세로 이동 -->
                                <a href="${pageContext.request.contextPath}/play/myflavor/view.jsp?seq=${item.seq}">
                                    <div class="card-list__content">
                                        <h3 class="card-list__title"><c:out value="${item.title}" /></h3>
                                        <p class="card-list__text"><c:out value="${item.summary}" /></p>
                                    </div>
                                </a>
                            </li>
                        </c:forEach>
                    </c:if>
                </ul>
            </div>

            <nav>
                <ul class="pagination">
                </ul>
            </nav>
        </section>

    </article>
