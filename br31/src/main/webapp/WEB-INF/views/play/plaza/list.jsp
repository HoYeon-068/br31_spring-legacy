<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

    <!-- CONTENT -->
    <div id="content" class="plaza-list">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">배라광장</h2>
                </div>
                <div class="page-header__content">
                    <p class="page-header__text">
                        배라에게 묻고 배라가 답해드려요,<br>
                        배라에게 다양한 의견을 전달해주세요
                    </p>
                </div>
            </div>
        </header>

        <!-- 상단 3개 배너 영역 -->
        <nav class="plaza-list-nav">
            <ul class="plaza-list-nav__list">
                <li class="plaza-list-nav__item plaza-list-nav__item--new">
                    <div class="plaza-list-nav__container">
                        <div class="plaza-list-nav__box">
                            <p class="plaza-list-nav__text">
                                내가 만드는 맛이<br>
                                31가지 아이스크림이 된다고?
                            </p>
                            <h3 class="plaza-list-nav__title">내가 만드는 아이스크림</h3>
                            <div class="plaza-list-nav__buttons">
                                <a href="${pageContext.request.contextPath}/play/plaza/new.do" class="plaza-list-nav__link">
                                    만들어주세요
                                </a>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="plaza-list-nav__item plaza-list-nav__item--collabo">
                    <div class="plaza-list-nav__container">
                        <div class="plaza-list-nav__box">
                            <p class="plaza-list-nav__text">
                                우리 브랜드를<br>
                                “널리널리” 알리고 싶은 기업 모여라
                            </p>
                            <h3 class="plaza-list-nav__title">중소기업 콜라보레이션</h3>
                            <div class="plaza-list-nav__buttons">
                                <a href="${pageContext.request.contextPath}/play/plaza/collabo.do" class="plaza-list-nav__link">
                                    우리와 함께해요
                                </a>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="plaza-list-nav__item plaza-list-nav__item--store">
                    <div class="plaza-list-nav__container">
                        <div class="plaza-list-nav__box">
                            <p class="plaza-list-nav__text">
                                배라와의 시작<br>
                                배라로의 시작
                            </p>
                            <h3 class="plaza-list-nav__title">점포개설 문의</h3>
                            <div class="plaza-list-nav__buttons">
                                <a href="${pageContext.request.contextPath}/play/plaza/consulting.do" class="plaza-list-nav__link">
                                    동행을 희망해요
                                </a>
                                <a href="${pageContext.request.contextPath}/information-center/consulting/br.do"
                                   class="plaza-list-nav__link plaza-list-nav__link--white">
                                    더 알아보기
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>

        <nav class="page-tab">
            <ul class="page-tab__list">
                <li class="page-tab__item ${param.category == null || param.category == 'ALL' ? 'page-tab__item--active' : ''}">
                    <a href="${pageContext.request.contextPath}/play/plaza/list.do?category=ALL" class="page-tab__link">
                        <span class="page-tab__text">ALL</span>
                    </a>
                </li>
                <li class="page-tab__item ${param.category == '1' ? 'page-tab__item--active' : ''}">
                    <a href="${pageContext.request.contextPath}/play/plaza/list.do?category=1" class="page-tab__link">
                        <span class="page-tab__text">NEW</span>
                    </a>
                </li>
                <li class="page-tab__item ${param.category == '2' ? 'page-tab__item--active' : ''}">
                    <a href="${pageContext.request.contextPath}/play/plaza/list.do?category=2" class="page-tab__link">
                        <span class="page-tab__text">COLLABO</span>
                    </a>
                </li>
            </ul>
        </nav>

        <!-- 목록 -->
        <div class="plaza-list__container">
            <div class="plaza-list-list">
                <ul class="plaza-list-list__list">

                    <c:choose>
                        <c:when test="${empty list}">
                            <li class="plaza-list-list__item">
                                <div class="plaza-list-list__header">
                                    <h4 class="plaza-list-list__title">등록된 글이 없습니다.</h4>
                                </div>
                                <p class="plaza-list-list__text">첫 글을 남겨주세요!</p>
                            </li>
                        </c:when>

                        <c:otherwise>
                            <c:forEach items="${list}" var="p">
                                <li class="plaza-list-list__item plaza-list-list__item--new">
                                    <div class="plaza-list-list__header">
                                        <h4 class="plaza-list-list__title">${p.title}</h4>

                                        <p class="plaza-list-list__category">
                                          <c:choose>
				                                <c:when test="${p.plazaCategoryId == 1}">NEW</c:when>
				                                <c:otherwise>COLLABO</c:otherwise>
				                           </c:choose>
                                            
                                        </p>
                                    </div>

                                    <p class="plaza-list-list__text">
                                        ${p.content}
                                    </p>

                                    <p class="plaza-list-list__name">${p.userId}님</p>

                                    <div class="plaza-list-list__container">
                                        <div class="plaza-list-like">
                                            <button type="button"
											        class="plaza-list-like__button ${p.liked ? 'plaza-list-like__button--active' : ''}"
											        data-seq="${p.plazaId}">
                                                <span class="plaza-list-like__text">추천</span>
                                            </button>
                                        </div>

                                        <a href="${pageContext.request.contextPath}/play/plaza/view.do?seq=${p.plazaId}"
                                           class="plaza-list-list__link">
                                            자세히 보기
                                        </a>
                                    </div>
                                </li>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                </ul>
            </div>
        </div>
		<sec:csrfInput/>
    </div>


<script>
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
