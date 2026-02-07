<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String seq = request.getParameter("seq");
if (seq == null) {
    response.sendRedirect(request.getContextPath() + "/views/play/myflavor/list.do");
    return;
}
Object dto = session.getAttribute("MYFLAVOR_" + seq);
if (dto == null) {
    response.sendRedirect(request.getContextPath() + "/views/play/myflavor/list.do");
    return;
}
%>

    <!-- CONTENT -->
    <!-- ✅ recipe-view 제거 -->
    <div id="content" class="myflavor-register-complete-wrap">

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

        <article class="myflavor-register-complete">
            <h3>마이플레이버 리스트<br>등록 완료!</h3>

            <div class="myflavor-flavorlist-image">
                <!-- 미리보기(정사각 이미지) -->
                <div class="myflavor-flavorlist-image__preview"
                     style="
                       width:700px;
                       height:700px;
                       margin:0 auto;
                       background-image:url('${pageContext.request.contextPath}/play/myflavor/image.do?seq=${param.seq}');
                       background-size:cover;
                       background-position:center;
                       transform-origin: top center;
                     ">
                </div>

                <p class="myflavor-flavorlist-image__action">
                    <a href="${pageContext.request.contextPath}/play/myflavor/image.do?seq=${param.seq}"
                       download="my_flavor_list_${param.seq}.png">
                        이미지 저장하기
                    </a>

                    <button type="button"
                            onclick="
                              navigator.clipboard.writeText(
                                '${pageContext.request.contextPath}/play/myflavor/register-complete.do?seq=${param.seq}&register=Y'
                              );
                              alert('URL이 복사되었습니다.');
                            ">
                        URL 공유하기
                    </button>
                </p>
            </div>

            <p>
                등록하신 플레이버 리스트는 관리자 확인 후 홈페이지에 등록이 완료됩니다.<br>
                적절하지 않은 게시글은 등록되지 않을 수 있습니다.
                <a href="${pageContext.request.contextPath}/play/myflavor/list.do">확인</a>
            </p>
        </article>

    </div>

