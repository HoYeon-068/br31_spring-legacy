<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="site-container">
    <jsp:include page="../consulting/layout/consulting_header.jsp" /> 

        <section class="consulting-store-view__container">
            <div class="consulting-store-view__content">
                <h3>
                    신규후보매장
                </h3>

                <p>
                    자세한 문의 사항은 지역별 담당자에게 연락주시기 바랍니다.
                </p>

                <table>
                    <tbody>
                    <tr>
                        <th>담당자</th>
                        <td>${dto.currentBusiness}</td>
                        <th>연락처</th>
                        <td>수정예정</td>
                    </tr>
                    <tr>
                        <th>지역상세</th>
                        <td>${dto.sido} ${dto.sigungu}</td>
                        <th>현재 업종</th>
                        <td>-</td>
                    </tr>
                    <tr>
                        <th>상권 &amp; 입지</th>
                        <td colspan="3">${dto.marketArea}</td>
                    </tr>
                    <tr>
                        <th>해당 층</th>
                        <td>${dto.floor}</td>
                        <th>면적</th>
                        <td>${dto.area}</td>
                    </tr>
                    <tr>
                        <th>지도</th>
                        <td colspan="3">
                                                            <!-- 지도 api -->
                                <input type="hidden" value="${dto.latitude}" class="lat">
                                <input type="hidden" value="${dto.longitude}" class="lng">
                                
                                <div class="map_p" style="width:100%; height:400px;"></div>
                                                                                    </td>
                               
                                                                        
                    </tr>
                    <tr>
                        <th>권리금</th>
                        <td>${dto.keyMoney}</td>
                        <th>보증금</th>
                        <td>${dto.deposit}</td>
                    </tr>
                    <tr>
                        <th>임대료</th>
                        <td colspan="3">${dto.rentalFee}</td>
                    </tr>
                    <tr>
                        <th>설명</th>
                        <td colspan="3">
                            ${dto.description}</td>
                    </tr>
                    </tbody>
                </table>
                <div class="pagination">
                <c:choose>
    <c:when test="${empty nextNum}">
        <a href="#none" onclick="alert('이전 데이터가 없습니다')">
                                    
                                            <span>이전</span>
                                            </a>
        
    </c:when>
    <c:otherwise>
        <a href="${pageContext.request.contextPath}/information-center/consulting/store-view.do?findword=${param.findword}&seq=${nextNum}">
                                            <span>이전</span>
        </a>
    </c:otherwise>
</c:choose>
                
                
                                        

                    <a href="${pageContext.request.contextPath}/information-center/consulting/store-list.do?findword=${param.findword}">목록</a>
                    
  <c:choose>
    <c:when test="${empty prevNum}">
        <a href="#none" onclick="alert('다음 데이터가 없습니다')">
                                            <span>다음</span>
        </a>
    </c:when>
    <c:otherwise>
        <a href="${pageContext.request.contextPath}/information-center/consulting/store-view.do?findword=${param.findword}&seq=${prevNum}">
                        <span>다음</span>
                    </a>
    </c:otherwise>
</c:choose>                  
                    
                    
                    
                                        
                                    </div>
            </div>
        </section>
    </div>
</div>



<script type="text/javascript">
    // window.kakao.maps.load()를 통해 API가 완전히 로드된 후 실행되도록 보장합니다.
    window.onload = function() {
        if (typeof kakao !== 'undefined' && kakao.maps) {
            kakao.maps.load(function() {
                var latVal = parseFloat(document.querySelector('.lat').value);
                var lngVal = parseFloat(document.querySelector('.lng').value);

                // 1. 지도를 담을 영역
                var mapContainer = document.querySelector('.map_p'); 
                
                // 2. 지도 옵션 설정
                var mapOption = { 
                    center: new kakao.maps.LatLng(latVal, lngVal), 
                    level: 3 
                };

                // 3. 지도 생성
                var map = new kakao.maps.Map(mapContainer, mapOption); 

                // 4. 마커 생성
                var markerPosition  = new kakao.maps.LatLng(latVal, lngVal); 
                var marker = new kakao.maps.Marker({
                    position: markerPosition
                });

                // 5. 마커 표시
                marker.setMap(map);

                // 6. (중요) 지도가 작게 나오거나 깨질 경우를 대비해 크기 재조정
                map.relayout();
                map.setCenter(new kakao.maps.LatLng(latVal, lngVal));
            });
        } else {
            console.error("Kakao Maps SDK가 로드되지 않았습니다. appkey를 확인하세요.");
        }
    };
</script>