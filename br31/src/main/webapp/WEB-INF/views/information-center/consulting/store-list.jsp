<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="site-container">
    <jsp:include page="../consulting/layout/consulting_header.jsp" /> 

        <section class="consulting-store-list__container">
            <div id="list" class="consulting-store-list__content">
                <h3>
                    정밀한 상권 분석을 통해<br>
                    성공 가능성이 높은 점포를 안내해드립니다.
                    ${param.findword}
                </h3>
                <nav>
                    <ul>
                        <li ${empty param.findword ? 'class="active"' : ''}>
                            <a href="store-list.do">전국</a>
                        </li>
                                                    <li ${param.findword eq '서울'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=서울">서울</a>
                            </li>
                                                    <li ${param.findword eq '경기'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=경기">경기</a>
                            </li>
                                                    <li ${param.findword eq '인천'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=인천">인천</a>
                            </li>
                                                    <li ${param.findword eq '강원'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=강원">강원</a>
                            </li>
                                                    <li ${param.findword eq '충북'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=충북">충북</a>
                            </li>
                                                    <li ${param.findword eq '충남'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=충남">충남</a>
                            </li>
                                                    <li ${param.findword eq '대전'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=대전">대전</a>
                            </li>
                                                    <li ${param.findword eq '세종'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=세종">세종</a>
                            </li>
                                                    <li ${param.findword eq '전북'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=전북">전북</a>
                            </li>
                                                    <li ${param.findword eq '전남'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=전남">전남</a>
                            </li>
                                                    <li ${param.findword eq '광주'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=광주">광주</a>
                            </li>
                                                    <li ${param.findword eq '경북'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=경북">경북</a>
                            </li>
                                                    <li ${param.findword eq '경남'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=경남">경남</a>
                            </li>
                                                    <li ${param.findword eq '대구'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=대구">대구</a>
                            </li>
                                                    <li ${param.findword eq '울산'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=울산">울산</a>
                            </li>
                                                    <li ${param.findword eq '부산'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=부산">부산</a>
                            </li>
                            <li ${param.findword eq '제주'? 'class="active"' : ''}>
                                <a href="store-list.do?findword=제주">제주</a>
                            </li>
                                            </ul>
                </nav>

                <div class="consulting-store-list__box">
                    <p>총 <span>${pvo.totalNum}</span> 건</p>

                    <table>
                        <thead>
                        <tr>
                            <th>번호</th>
                            <th>지역</th>
                            <th>상원 &amp; 입지</th>
                            <th>담당자</th>
                            <th>등록일</th>
                            <th>조회수</th>
                        </tr>
                        </thead>
                        <tbody>
                        
                        <c:choose>
        <c:when test="${ empty list }">
          <tr>
            <td colspan="6">등록된 게시글이 없습니다.</td>
          </tr>
        </c:when>
        <c:otherwise>
         <c:forEach items="${list}" var="vo">
                        	<tr>
                            <%-- <td><span class="top">${list.newStoreBoardId}</span></td> --%>
                            <td><span>${vo.newStoreBoardId}</span></td>
                            <td>${vo.sido}</td>
                            <td>
                                <a href="store-view.do?seq=${vo.newStoreBoardId}&currentPage=${pvo.currentPage}&findword=${param.findword}">${vo.marketArea}</a>
                            </td>
                            <td>${vo.currentBusiness}</td>
                            <td>${vo.createdAt}</td>
                            <td>${vo.viewCount}</td>
                       		</tr>
                        </c:forEach>           
        </c:otherwise>
      </c:choose> 
                        
                        
                        
                        
                                                             </tbody>
                    </table>
                    
                    
                    

                     <ul class='pagination'>
                     
                      <li class='pagination__item pagination__item--icon pagination__item--prev pagination__item--disabled'>
    <a href='store-list0293.html?page=1&amp;findword=' class='pagination__link'>
        <span class='pagination__name'>
            이전
        </span>
    </a>
</li>
                     <c:forEach begin="${ pvo.start }" end="${ pvo.end }" step="1" var="i">
              
              <c:choose>
                <c:when test="${ pvo.currentPage eq i }">
                   
                   <li class='pagination__item pagination__item--current' aria-current='page'>
    <strong class='pagination__link'>
        <span class='pagination__name'>${ i }</span>
    </strong>
</li>
                </c:when>
                <c:otherwise>
                  <li class='pagination__item'>
    <a href='store-list.do?currentPage=${i}' class='pagination__link'>
        <span class='pagination__name'>${ i }</span>
    </a>
</li>
                </c:otherwise>
              </c:choose> 
              
            </c:forEach>
                     
                     
                     
 <!-- <li class='pagination__item pagination__item--icon pagination__item--prev pagination__item--disabled'>
    <a href='store-list0293.html?page=1&amp;findword=' class='pagination__link'>
        <span class='pagination__name'>
            이전
        </span>
    </a>
</li>
<li class='pagination__item pagination__item--current' aria-current='page'>
    <strong class='pagination__link'>
        <span class='pagination__name'>1</span>
    </strong>
</li>
<li class='pagination__item'>
    <a href='store-list5aff.html?page=2&amp;findword=' class='pagination__link'>
        <span class='pagination__name'>
2
        </span>
    </a>
</li>
<li class='pagination__item'>
    <a href='store-list49e2.html?page=3&amp;findword=' class='pagination__link'>
        <span class='pagination__name'>
3
        </span>
    </a>
</li> -->
<li class='pagination__item pagination__item--icon pagination__item--next pagination__item--disabled'>
    <a href='{pageContext.request.contextPath}' class='pagination__link'>
        <span class='pagination__name'>
            다음        </span>    </a></li></ul>
                </div>
            </div>
        </section>
    </div>
</div> 

