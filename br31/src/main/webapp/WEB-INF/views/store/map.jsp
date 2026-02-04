<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <section id="content" class="store-map">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">Store</h2>
                </div>
            </div>
        </header>

        <div class="store-map__container">
            <div class="store-map__content">
                <form action="${pageContext.request.contextPath}/views/api/store-list.jsp" class="store-map-form" method="get">
                    <fieldset class="store-map-form__fieldset">
                        <legend>매장 찾기</legend>
                        <div class="store-map-option">
                            <button type="button" class="store-map__button store-map-option__button">옵션 선택</button>
                            <div class="store-map-option__content">
                                <dl class="store-map-option__list">
                                    <div class="store-map-option__item store-type">
                                        <dt class="store-map-option__name">매장타입</dt>
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="store_type" value="BR 31">
                                                <span class="store-map-option__text">BR 31</span>
                                            </label>
                                        </dd>
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="store_type" value="BR 100flavor">
                                                <span class="store-map-option__text">100flavor</span>
                                            </label>
                                        </dd>
                                    </div>
                                    <div class="store-map-option__item service-info">
                                        <dt class="store-map-option__name">제공 서비스</dt>
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="주차">
                                                <span class="store-map-option__text">주차</span>
                                            </label>
                                        </dd>
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="배달">
                                                <span class="store-map-option__text">배달</span>
                                            </label>
                                        </dd>
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="픽업">
                                                <span class="store-map-option__text">픽업</span>
                                            </label>
                                        </dd>
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="취식여부">
                                                <span class="store-map-option__text">취식여부</span>
                                            </label>
                                        </dd>
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="해피스테이션">
                                                <span class="store-map-option__text">해피스테이션</span>
                                            </label>
                                        </dd>
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="가챠머신">
                                                <span class="store-map-option__text">가챠머신</span>
                                            </label>
                                        </dd>

                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="KT 제휴">
                                                <span class="store-map-option__text">KT 제휴</span>
                                            </label>
                                        </dd>

                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="SKT 제휴">
                                                <span class="store-map-option__text">SKT 제휴</span>
                                            </label>
                                        </dd>
                                        
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="LGU+ 제휴">
                                                <span class="store-map-option__text">LGU+ 제휴</span>
                                            </label>
                                        </dd>
                                        
                                        <dd class="store-map-option__area">
                                            <label class="store-map-option__label">
                                                <input type="checkbox" class="store-map-option__input" name="service_info" value="맛보기 제휴">
                                                <span class="store-map-option__text">맛보기 제휴</span>
                                            </label>
                                        </dd>                                        
                                        
                                        



                                    </div>
                                </dl>
                            </div>
                        </div>
                        <div class="store-map-city">
                            <select name="sido" class="store-map__button store-map-city__select dosi">
                                <option value="">도/시 선택</option>
                            </select>
                            <select name="gugun" class="store-map__button store-map-city__select gugun">
                                <option value="">구/군 선택</option>
                            </select>
                        </div>
                    </fieldset>
                    <div class="store-map-input">
                        <input type="text" placeholder="매장명" class="store-map-input__input store-name" name="store_name">
                    </div>
                    <button type="submit" class="store-map__submit">검색</button>
                </form>

                <div class="store-map-list">
                    <p class="store-map-list__result">검색결과 <span class="store-map-list__point-color"></span>개</p>
                    <div class="store-map-list__container">
                        <ul class="store-map-list__list"></ul>
                    </div>
                </div>
            </div>
            
            <div id="store-map-field" class="store-map-field"></div>
        </div>
    </section>

<script>
var contextPath = "${pageContext.request.contextPath}";
var map = null;
var markers = [];

function normalizeStoreType(type) {
  if (!type) return "BR 31";
  if (type.includes("100")) return "BR 100flavor";
  return "BR 31";
}

var markerIconMap = {
  "BR 31": contextPath + "/resources/images/store/map/icon_map_marker_default.png",
  "BR 100flavor": contextPath + "/resources/images/store/map/icon_map_marker_flavors.png"
};

function makeMarkerImage(src) {
  var size = new kakao.maps.Size(137, 106);
  var offset = new kakao.maps.Point(36, 106);
  return new kakao.maps.MarkerImage(src, size, { offset: offset });
}

function clearMarkers() {
  markers.forEach(function(m) {
    if(m.overlay) m.overlay.setMap(null); // 오버레이도 함께 제거
    m.setMap(null);
  });
  markers = [];
}

// 모든 오버레이 닫기 함수
function closeAllOverlays() {
  markers.forEach(function(m) {
    if(m.overlay) m.overlay.setMap(null);
  });
}

$(function () {
  var container = document.getElementById("store-map-field");
  if (container && kakao.maps) {
    map = new kakao.maps.Map(container, {
      center: new kakao.maps.LatLng(37.5665, 126.9780),
      level: 6
    });
  }
});

// 검색 및 리스트 생성 핵심 로직
function searchAndRender(formData) {
  $(".store-map-list__list").empty();
  $.ajax({
    url: contextPath + "/store/mapSearch.ajax",
    type: "GET",
    data: formData,
    dataType: "json",
    success: function (data) {
      if (!Array.isArray(data)) return;
      $("span.store-map-list__point-color").text(data.length);
      clearMarkers();

      $.each(data, function (index, store) {
        var storeType = normalizeStoreType(store.storeType);
        var iconSrc = markerIconMap[storeType] || markerIconMap["BR 31"];
        var addrDetail = (store.addressDetail === "null" || store.addressDetail == null) ? "" : store.addressDetail;
        var fullAddr = (store.sido || "") + " " + (store.sigungu || "") + " " + (store.street || "") + " " + addrDetail;

        var info = { index: index, latitude: store.latitude, longitude: store.longitude };
        var encodedInfo = encodeURIComponent(JSON.stringify(info));

        var li = '<li class="store-map-list__item">'
          + '  <a href="#" role="button" class="store-map-list__button" data-info="' + encodedInfo + '">'
          + '    <div class="store-map-list__box">'
          + '      <h3 class="store-map-list__title">' + (store.storeName || "") + '</h3>'
          + '      <address class="store-map-list__address">' + fullAddr + '</address>'
          + '      <dl class="store-map-list__content">'
          + '        <dt class="store-map-list__name">연락처</dt><dd class="store-map-list__text">' + (store.storeTel || "") + '</dd>'
          + '        <dt class="store-map-list__name">운영시간</dt><dd class="store-map-list__text">' + (store.businessHours || "") + '</dd>'
          + '      </dl>'
          + '    </div>'
          + '  </a>'
          + '</li>';
        $(".store-map-list__list").append(li);

        if (map && store.latitude && store.longitude) {
          var position = new kakao.maps.LatLng(store.latitude, store.longitude);
          var marker = new kakao.maps.Marker({ position: position, image: makeMarkerImage(iconSrc) });
          marker.setMap(map);

          // --- 커스텀 오버레이 HTML 생성 ---
          var overlayContent = document.createElement('div');
          overlayContent.innerHTML = 
            '<article class="store-map-field__info">' +
            '  <div class="store-map-field__container">' +
            '    <div class="store-map-field__inner">' +
            '      <div class="store-map-field__header">' +
            '        <h3 class="store-map-field__title">' +
            '          <span class="store-map-field__type">' + storeType + '</span>' + (store.storeName || "") +
            '        </h3>' +
            '        <button type="button" class="store-map-field__close" onclick="closeAllOverlays()">' +
            '          <img src="' + contextPath + '/resources/images/store/map/btn_close.png" alt="닫기" class="store-map-field__image">' +
            '        </button>' +
            '      </div>' +
            '      <div class="store-map-field__content">' +
            '        <table class="store-map-field__table">' +
            '          <tbody>' +
            '            <tr><th>매장주소</th><td>' + fullAddr + '</td></tr>' +
            '            <tr><th>전화번호</th><td>' + (store.storeTel || "") + '</td></tr>' +
            '            <tr><th>운영시간</th><td>' + (store.businessHours || "") + '</td></tr>' +
            '            <tr><th>매장서비스</th><td>주차, 배달, 픽업, 취식여부, 해피스테이션, 가챠머신, KT제휴, SKT제휴, LG U+제휴, 맛보기</td></tr>' +
            '          </tbody>' +
            '        </table>' +
            '      </div>' +
            '    </div>' +
            '  </div>' +
            '</article>';

          var overlay = new kakao.maps.CustomOverlay({
            content: overlayContent,
            position: position,
            yAnchor: 1.35
          });

          marker.overlay = overlay; // 마커에 오버레이 객체 보관
          markers.push(marker);

          kakao.maps.event.addListener(marker, "click", function () {
            closeAllOverlays();
            map.panTo(position);
            overlay.setMap(map);
          });
        }
      });
      if (map && data.length > 0) map.panTo(new kakao.maps.LatLng(data[0].latitude, data[0].longitude));
    }
  });
}

// 버튼 클릭 이벤트
$("button.store-map__submit").on("click", function (e) {
  e.preventDefault();
  searchAndRender($(".store-map-form").serialize());
});

// 리스트 클릭 이벤트
$(document).on("click", ".store-map-list__button", function (e) {
  e.preventDefault();
  var info = JSON.parse(decodeURIComponent($(this).attr("data-info")));
  if (map && info.latitude && info.longitude) {
    closeAllOverlays();
    var moveLatLng = new kakao.maps.LatLng(info.latitude, info.longitude);
    map.panTo(moveLatLng);
    // 리스트 클릭 시 해당 마커의 오버레이도 띄우기
    if(markers[info.index] && markers[info.index].overlay) {
        markers[info.index].overlay.setMap(map);
    }
  }
});

// 초기 로딩 (ready)
$(document).ready(function () {
  searchAndRender($(".store-map-form").serialize());
});
</script>

<script>
/* 시/도 및 구/군 셀렉트 로직 (기존과 동일) */
document.addEventListener("DOMContentLoaded", function () {
  const $sido = document.querySelector("select[name='sido']");
  const $gugun = document.querySelector("select[name='gugun']");
  const SIDOS = [
    { value: "서울", label: "서울" }, { value: "경기", label: "경기" }, { value: "강원", label: "강원특별자치도" },
    { value: "부산", label: "부산" }, { value: "대구", label: "대구" }, { value: "인천", label: "인천" },
    { value: "광주", label: "광주" }, { value: "대전", label: "대전" }, { value: "울산", label: "울산" },
    { value: "세종", label: "세종특별자치시" }, { value: "충북", label: "충북" }, { value: "충남", label: "충남" },
    { value: "전북", label: "전북" }, { value: "전남", label: "전남" }, { value: "경북", label: "경북" },
    { value: "경남", label: "경남" }, { value: "제주", label: "제주특별자치도" }
  ];
  SIDOS.forEach(({value, label}) => {
    const opt = document.createElement("option");
    opt.value = value; opt.textContent = label;
    $sido.appendChild(opt);
  });
  $sido.addEventListener("change", function () {
    const sido = this.value;
    $gugun.innerHTML = '<option value="">구/군</option>';
    if (!sido) return;
    fetch(contextPath + "/api/store-address.do?sido=" + encodeURIComponent(sido))
      .then(res => res.json())
      .then(data => {
        if (data.code && data.result.list) {
          data.result.list.forEach(item => {
            const opt = document.createElement("option");
            opt.value = item.address; opt.textContent = item.address;
            $gugun.appendChild(opt);
          });
        }
      });
  });
});


$('.store-map-option__button').on('click', function() {
    $(this).closest('.store-map-option').toggleClass('store-map-option--active');
});

</script>

