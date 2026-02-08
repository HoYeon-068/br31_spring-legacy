<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


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

