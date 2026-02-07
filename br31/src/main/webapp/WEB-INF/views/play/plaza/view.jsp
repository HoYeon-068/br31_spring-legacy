<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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

    <meta name="description" content="배스킨라빈스에게 다양한 의견을 전달해주세요.">
    <meta property="og:site_name" content="배스킨라빈스">
    <meta property="og:url" content="${pageContext.request.contextPath}/index.jsp">
    <meta property="og:title" content="[배스킨라빈스] 배라광장">
    <meta property="og:description" content="배스킨라빈스에게 다양한 의견을 전달해주세요.">
    <meta property="og:image" content="${pageContext.request.contextPath}/resources/images/common/img_share.png">
    <meta property="og:type" content="website">

    <!-- 프로젝트 리소스 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">

    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>

<body id="baskinrobbins-play-plaza-view" class="baskinrobbins-play-plaza-view">

<div class="skipnav"><a href="#content">본문 영역으로 바로가기</a></div>

<!-- HEADER -->
<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<section class="site-container">

    <!-- 상단 page-menu -->
    <nav class="page-menu">
        <ul class="page-menu__list">
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/event/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">이벤트</span></div>
                </a>
            </li>
            <li class="page-menu__item page-menu__item--active">
                <a href="${pageContext.request.contextPath}/play/plaza/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">배라광장</span></div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/recipe/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">BR 레시피</span></div>
                </a>
            </li>
            <li class="page-menu__item">
                <a href="${pageContext.request.contextPath}/play/myflavor/list.do" class="page-menu__link">
                    <div class="page-menu__box"><span class="page-menu__name">마이플레이버 리스트</span></div>
                </a>
            </li>
        </ul>
    </nav>

    <!-- CONTENT -->
    <div id="content" class="plaza-view">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
					  <c:choose>
					    <c:when test="${dto.plazaCategoryId == 1}">
					      아이스크림 맛 제안 요청
					    </c:when>
					    <c:otherwise>
					      콜라보 제안 요청
					    </c:otherwise>
					  </c:choose>
					</h2>
                </div>
            </div>
        </header>

        <article class="plaza-view__container">
            <input type="hidden" name="csrf_token" value="DUMMY_CSRF_TOKEN">
            <header class="plaza-view-header">
                <div class="plaza-view-header__box">
                  <p class="plaza-view-header__name">
				  <c:choose>
				    <c:when test="${dto.plazaCategoryId == 1}">
				      제품 이름
				    </c:when>
				    <c:otherwise>
				      제목
				    </c:otherwise>
				  </c:choose>
				</p>
				<h3 class="plaza-view-header__title">${dto.title}</h3>
                </div>
                <div class="plaza-view-header__box">
                    <p class="plaza-view-header__name">이름</p>
                    <p class="plaza-view-header__text">
					  <c:choose>
					    <c:when test="${dto.isAuthorPublics == 1}">
					      비공개
					    </c:when>
					    <c:otherwise>
					      ${dto.name}
					    </c:otherwise>
					  </c:choose>
					</p>

                </div>

            </header>
            <div class="plaza-view__editor">
			  ${dto.content}
			</div>
            <div class="plaza-view__buttons">
                <button type="button"
				        class="plaza-view-control__like ${dto.liked ? 'plaza-view-control__like--active' : ''}"
				        data-seq="${dto.plazaId}">
                    <span class="plaza-view-control__like-text">좋아요</span>
                </button>
                <a href="${pageContext.request.contextPath}/play/plaza/list.do"
                   class="plaza-view__button">
                    목록
                </a>
            </div>
			<sec:csrfInput/>
        </article>
    </div>
</section>

<!-- FOOTER -->
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

<script>
/*   const contextPath = '${pageContext.request.contextPath}';

  document.addEventListener('click', async (e) => {
    const listBtn = e.target.closest('.plaza-list-like__button');
    const viewBtn = e.target.closest('.plaza-view-control__like');
    const btn = listBtn || viewBtn;
    if (!btn) return;

    const seq = btn.dataset.seq;
    if (!seq) return;

    try {
      const url = contextPath + '/play/plaza/like.do';

      const res = await fetch(url, {
        method: 'POST',
        headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
        body: 'seq=' + encodeURIComponent(seq)
      });

      const data = await res.json();

      if (data.needLogin) {
        alert('로그인 후 참여해주세요.');
        location.href = contextPath + '/login/login.do';
        return;
      }

      if (!data.success) return;

      if (listBtn) {
        btn.classList.toggle('plaza-list-like__button--active', data.liked);
      }
      if (viewBtn) {
        btn.classList.toggle('plaza-view-control__like--active', data.liked);
      }
    } catch (err) {
      console.log(err);
      alert('통신 중 오류가 발생했습니다.');
    }
  }); */
  const contextPath = '${pageContext.request.contextPath}';

  function getCsrf() {
    const input = document.querySelector('input[name="_csrf"]');
    return input ? input.value : null;
  }

  document.addEventListener('click', async (e) => {
    const listBtn = e.target.closest('.plaza-list-like__button');
    const viewBtn = e.target.closest('.plaza-view-control__like');
    const btn = listBtn || viewBtn;
    if (!btn) return;

    const seq = btn.dataset.seq;
    if (!seq) return;

    const csrf = getCsrf();

    try {
      const url = contextPath + '/play/plaza/like.do';

      const res = await fetch(url, {
        method: 'POST',
        credentials: 'same-origin',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
          ...(csrf ? {'X-CSRF-TOKEN': csrf} : {})
        },
        body: 'seq=' + encodeURIComponent(seq)
      });

      const data = await res.json();

      if (data.needLogin) {
        alert('로그인 후 참여해주세요.');
        location.href = contextPath + '/login/login.do';
        return;
      }

      if (!data.success) return;

      btn.classList.toggle('plaza-list-like__button--active', data.liked);
      btn.classList.toggle('plaza-view-control__like--active', data.liked);

    } catch (err) {
      console.log(err);
      alert('통신 중 오류가 발생했습니다.');
    }
  });

</script>


</body>
</html>
