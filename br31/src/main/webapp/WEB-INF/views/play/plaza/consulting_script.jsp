<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
document.addEventListener("DOMContentLoaded", function () {
  const $sido = document.querySelector("select[name='sido']");
  const $gugun = document.querySelector("select[name='gugun']");

  const SIDOS = [
    { value: "서울", label: "서울" },
    { value: "경기", label: "경기" },
    { value: "강원", label: "강원특별자치도" },
    { value: "부산", label: "부산" },
    { value: "대구", label: "대구" },
    { value: "인천", label: "인천" },
    { value: "광주", label: "광주" },
    { value: "대전", label: "대전" },
    { value: "울산", label: "울산" },
    { value: "세종", label: "세종특별자치시" },
    { value: "충북", label: "충북" },
    { value: "충남", label: "충남" },
    { value: "전북", label: "전북" },
    { value: "전남", label: "전남" },
    { value: "경북", label: "경북" },
    { value: "경남", label: "경남" },
    { value: "제주", label: "제주특별자치도" }
  ];

  SIDOS.forEach(({value, label}) => {
    const opt = document.createElement("option");
    opt.value = value;
    opt.textContent = label;
    $sido.appendChild(opt);
  });

  function resetGugun() {
    $gugun.innerHTML = '<option value="">구/군</option>';
  }

  $sido.addEventListener("change", function () {
    const sido = this.value;
    resetGugun();
    if (!sido) return;

    fetch("${pageContext.request.contextPath}/api/store-address.do?sido=" + encodeURIComponent(sido))
      .then(res => res.json())
      .then(data => {
        if (!data.code) return;
        data.result.list.forEach(item => {
          const opt = document.createElement("option");
          opt.value = item.address;
          opt.textContent = item.address;
          $gugun.appendChild(opt);
        });
      })
      .catch(err => console.error("구/군 로딩 실패", err));
  });
});
</script>
