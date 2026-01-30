<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="date=no">
    <meta name="format-detection" content="address=no">
    <meta name="format-detection" content="email=no">
    <title>배스킨라빈스</title>

    <meta name="description" content="행복을 전하는 프리미엄 아이스크림, 배스킨라빈스 공식 홈페이지 입니다.">
    <meta name="keywords" content="baskinrobbins, br31, 배스킨라빈스, 배라, 베라">
    <meta name="author" content="배스킨라빈스">

    <meta property="og:site_name" content="배스킨라빈스">
    <meta property="og:url" content="${pageContext.request.contextPath}/">
    <meta property="og:title" content="[배스킨라빈스] 마이플레이버리스트">
    <meta property="og:description" content="내맘대로 하는 맛조합. 나만의 플레이버 리스트를 만들어보세요">
    <meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
    <meta property="og:type" content="website">

    <!-- CSS/JS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>

<body id="baskinrobbins-play-myflavor-register" class="baskinrobbins-play-myflavor-register">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<section class="site-container">

    <!-- page-menu -->
    <nav class="page-menu">
        <ul class="page-menu__list">
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/event/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">이벤트</span></div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">배라광장</span></div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/recipe/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">BR 레시피</span></div>
                </a>
            </li>
            <li class="page-menu__item page-menu__item--active">
                <a href="${pageContext.request.contextPath}/play/myflavor/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">마이플레이버 리스트</span></div>
                </a>
            </li>
        </ul>
    </nav>

    <div id="content" class="myflavor-register">

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

        <section class="myflavor-register__container">
            <h3 class="myflavor-register__title">마이플레이버 리스트 만들기</h3>

            <form class="myflavor-register__form myflavor-form"
                  method="post"
                  action="${pageContext.request.contextPath}/play/myflavor/register.do">
                  
                <fieldset class="myflavor-form__field myflavor-form__field--size">
                    <legend class="myflavor-form__title">맛 갯수</legend>

                    <div class="myflavor-form__content myflavor-select">
                        <ul>
                            <li>
                                <label>
                                    <input type="radio" name="size" value="A" data-flavor-size="3">
                                    <span>3가지 맛(파인트)</span>
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="size" value="B" data-flavor-size="4">
                                    <span>4가지 맛(쿼터)</span>
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="size" value="C" data-flavor-size="5">
                                    <span>5가지 맛(패밀리)</span>
                                </label>
                            </li>
                            <li>
                                <label>
                                    <input type="radio" name="size" value="D" data-flavor-size="6">
                                    <span>6가지 맛(하프갤런)</span>
                                </label>
                            </li>
                        </ul>
                    </div>
                </fieldset>

                <fieldset class="myflavor-form__field myflavor-form__field--flavor">
                    <legend class="myflavor-form__title">아이스크림 조합</legend>

                    <div class="myflavor-form__content myflavor-flavor">
                        <ul>
                            <c:choose>
                                <c:when test="${not empty flavors}">
                                    <c:forEach var="f" items="${flavors}">
                                        <li>
                                            <label>
                                                <input type="checkbox" name="productSeq" value="${f.id}">
                                                <span style="background-image:url('${pageContext.request.contextPath}${f.imgPath}')"></span>
                                                <span><c:out value="${f.name}" /></span>
                                            </label>
                                        </li>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <li>
									  <label>
									    <input type="checkbox" name="productSeq" value="863">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/9503e9dc08e5e728836d6243219a1141.png')"></span>
									    <span>윈터 밤</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="862">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/005a8b9dab143458191930812c1a5561.png')"></span>
									    <span>초콜릿 쿠키 스모어</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="843">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/01b945440bbb79c034a7eb6672e5fea4.png')"></span>
									    <span>아이스 꼬북칩</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="840">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/d1c5862f5649eb3de61e7cc150999d18.png')"></span>
									    <span>초코포키해♥</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="803">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/196edabde017591708905ad0f489257e.png')"></span>
									    <span>말차다미아</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="827">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/0716427ae68eff29f6da0445ad46cf39.png')"></span>
									    <span>&#40;Lessly Edition&#41; 초코나무숲</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="808">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/ec90470f157dbd136d2cfc7e94c1cd89.png')"></span>
									    <span>골든 애플 요거트</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="801">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/e511aa903274e35ed11287f59cc924df.png')"></span>
									    <span>&#40;Lessly Edition&#41; 아몬드 봉봉</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="777">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/09ce6b140dad71186b063fbc77fa6617.png')"></span>
									    <span>&#40;Lessly Edition&#41; 엄마는 외계인</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="788">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/63c000c0602e29401abc877f8f617ec9.png')"></span>
									    <span>아이스 맥심 모카골드</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="786">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/fea066eec3455d92b954428498ad30b3.png')"></span>
									    <span>사랑에 빠진 딸기</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="557">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/16c6b8173ad0f21ed0e53fed0ffc86cf.png')"></span>
									    <span>수박 Hero</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="414">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/abd67bc325966a949b24f08e75d8f1a7.png')"></span>
									    <span>아빠는 딸바봉</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="348">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/dd743197f80c722eb57389b4c1814d2f.png')"></span>
									    <span>마법사의 비밀 레시피</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="17">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/91c8668227bcf556c43a968b97e342e6.png')"></span>
									    <span>엄마는 외계인</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="6">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/fb92d70dee836652115c4f3b13175541.png')"></span>
									    <span>민트 초콜릿 칩</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="3">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/60a04a3a5d1b0119f065d12ee7797b2c.png')"></span>
									    <span>뉴욕 치즈케이크</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="5">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/5ad63f3af7244a666d981a1497a39fe7.png')"></span>
									    <span>레인보우 샤베트</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="24">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/f6609e3e3431d54beceeb1d3787403af.png')"></span>
									    <span>체리쥬빌레</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="15">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/a4b71e8b99743c93a7824331850b0a3d.png')"></span>
									    <span>슈팅스타</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="19">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/414246bd9041530d6ad4d30d97aac87c.png')"></span>
									    <span>오레오 쿠키 앤 크림</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="12">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/ea6608b4f72563b360da5c44c946ddc7.png')"></span>
									    <span>베리베리 스트로베리</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="1">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/d56328637eaf86e3273ebc39c57aada7.png')"></span>
									    <span>31요거트</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="8">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/01ecc320f5d3a6f32e5188eda373842d.png')"></span>
									    <span>바람과 함께 사라지다</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="22">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/4db4f9967ad6f603837a40eede965ef0.png')"></span>
									    <span>이상한 나라의 솜사탕</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="29">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/868364b0ed6038d0c9aee0a10e50d4a9.png')"></span>
									    <span>피스타치오 아몬드</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="28">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/0d67607c2ca4dde4ec24ac8109a343c2.png')"></span>
									    <span>초콜릿 무스</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="2">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/a6bd7bcdd6bdb56f28df7e98f051abda.png')"></span>
									    <span>그린티</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="27">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/aff1c39b1653ddb7701abd9b4c8394ee.png')"></span>
									    <span>초콜릿</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="23">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/f31388da0371388c2086a7c90990a097.png')"></span>
									    <span>자모카 아몬드 훠지</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="16">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/e7cb5667c3147ddb0b31e28d1f365980.png')"></span>
									    <span>아몬드 봉봉</span>
									  </label>
									</li>
									<li>
									  <label>
									    <input type="checkbox" name="productSeq" value="7">
									    <span style="background-image: url('${pageContext.request.contextPath}/resources/images/upload/product/main/901f131644310c0eb356cbab7ecc4738.png')"></span>
									    <span>바닐라</span>
									  </label>
									</li>

                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </fieldset>

                <!-- 조합이름 -->
                <fieldset class="myflavor-form__field myflavor-form__field--name">
                    <legend class="myflavor-form__title">조합이름</legend>
                    <p class="myflavor-text">
                        <input type="text" name="title"
                               placeholder="이름을 입력해주세요 (최대 20자)"
                               maxlength="20"
                               title="조합이름 입력"
                               required>
                    </p>
                </fieldset>

                <!-- 맛 태그 -->
                <fieldset class="myflavor-form__field myflavor-form__field--tag">
                    <legend class="myflavor-form__title">맛 태그</legend>

                    <div class="myflavor-form__content">
                        <div class="myflavor-select">
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

                        <!-- 추가 태그 입력 -->
                        <p class="myflavor-text">
                            <input type="text" name="addTag"
                                   placeholder="추가 태그를 입력해주세요 (최대 20자)"
                                   maxlength="20"
                                   title="추가 태그 입력">
                        </p>
                    </div>
                </fieldset>

                <p class="myflavor-form__buttons">
                    <button type="reset">초기화</button>
                    <button type="submit">등록하기</button>
                </p>
            </form>
        </section>
    </div>
</section>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
