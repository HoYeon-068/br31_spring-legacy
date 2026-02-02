<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="site-container">
     <jsp:include page="../consulting/layout/consulting_header.jsp" /> 

        <section class="consulting-faq__container">
            <div class="consulting-faq__content">
	            <div class="consulting-faq__header">
		            <h3 class="consulting-faq__title">창업FAQ</h3>
		            <p>창업과 관련해 고객님들께서 자주 물으시는 질문들 입니다. </p>
	            </div>
	            <ul class="faq-list__list consulting-faq__list">
	            
	            
	            <c:forEach items="${list}" var="vo">
	            	<li class="faq-list__item">
			            <button type="button" class="faq-list__title">${vo.question}</button>
			            <div class="faq-list__answer">
				            <p>${vo.answer}</p>
			            </div>
		            </li>
	            </c:forEach>
                        	            </ul>
            </div>
                    </section>
    </div>
</div>

