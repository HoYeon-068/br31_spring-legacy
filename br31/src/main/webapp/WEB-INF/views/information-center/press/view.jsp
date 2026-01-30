<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>배스킨라빈스 | 보도자료</title>

  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendors.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css">
    <script src="${pageContext.request.contextPath}/resources/js/vendors.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</head>

<body id="baskinrobbins-press"
      class="baskinrobbins-press">

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<div class="site-container">

    <section id="content" class="press-list board-view">

        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">보도자료</h2>
                </div>
            </div>
        </header>

        <article class="board-view__article">

           
            <header class="board-view__header">
               <h3 class="board-view__title">${dto.title}</h3>

             <p class="board-view__date">${dto.reg_date}</p>

            </header>

         
            <div class="board-view__container">
           
			<div class="board-view__content"">
    ${dto.content}
</div>
			
               
            </div>

            
            <p class="board-view__back">
                <a href="${pageContext.request.contextPath}/press/list.do">목록</a>

            </p>

        </article>

    </section>
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />

</body>
</html>
