<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
    (function() {
        const $popup = document.querySelector('.find-store');
        const $btn = document.querySelector('.find-store-button');
        const $close = document.querySelector('.find-store__close-button');
        const $input = document.querySelector('.find-store__input');
        const $noData = document.querySelector('.find-store__item--no-data');

        // 매장 아이템(검색 대상) - no-data 제외
        const $items = Array.from(document.querySelectorAll('.find-store__list .find-store__item'))
            .filter(el => !el.classList.contains('find-store__item--no-data'));

        function openPopup() {
            if ($popup) $popup.style.display = 'block';
        }

        function resetPopup() {
            if ($input) $input.value = '';
            $items.forEach(el => el.style.display = '');
            if ($noData) $noData.style.display = 'none';
        }

        function closePopup() {
            if ($popup) $popup.style.display = 'none';
            resetPopup();
        }

        if ($btn) $btn.addEventListener('click', openPopup);
        if ($close) $close.addEventListener('click', closePopup);

        if ($input) {
            $input.addEventListener('input', function() {
                const keyword = ($input.value || '').toLowerCase().trim();
                let found = false;

                $items.forEach(el => {
                    const text = (el.textContent || '').toLowerCase();
                    const show = keyword === '' || text.includes(keyword);
                    el.style.display = show ? '' : 'none';
                    if (show) found = true;
                });

                if ($noData) $noData.style.display = found ? 'none' : '';
            });
        }

        // 바깥 클릭 시 닫기
        document.addEventListener('click', function(e) {
            if (!$popup || $popup.style.display !== 'block') return;

            const insidePopup = $popup.contains(e.target);
            const isButton = $btn && ($btn === e.target || $btn.contains(e.target));

            if (!insidePopup && !isButton) {
                closePopup();
            }
        });

        // 초기 상태
        closePopup();
    })();
</script>