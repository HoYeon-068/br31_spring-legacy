<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
