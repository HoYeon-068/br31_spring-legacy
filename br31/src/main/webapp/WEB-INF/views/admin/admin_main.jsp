<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<h2 class="admin-title">관리자 대시보드</h2>
<p class="admin-desc">
    관리자 전용 페이지입니다. 좌측 메뉴를 통해 각 관리 기능에 접근할 수 있습니다.
</p>

<div class="dashboard">
    <div class="card">
        <h3>상품 관리</h3>
        <p class="count">${productsCount}</p>
        <a href="${pageContext.request.contextPath}/admin/product/list.do"
           class="card-link">바로가기</a>
    </div>

    <div class="card">
        <h3>FAQ 관리</h3>
        <p class="count">5</p>
     <a href="${pageContext.request.contextPath}/admin/faq/list.do"
   class="card-link">
   바로가기
</a>

    </div>
</div>

<style>
.admin-title {
    font-size: 24px;
    margin-bottom: 8px;
}

.admin-desc {
    color: #666;
    margin-bottom: 30px;
}

.dashboard {
    display: flex;
    gap: 20px;
}

.card {
    flex: 1;
    padding: 20px;
    background: #f5f6f7;
    border-radius: 8px;
    text-align: center;
}

.card h3 {
    font-size: 18px;
    margin-bottom: 10px;
}

.card .count {
    font-size: 28px;
    font-weight: bold;
    margin-bottom: 15px;
}

.card-link {
    display: inline-block;
    padding: 8px 14px;
    background: #333;
    color: #fff;
    border-radius: 4px;
    font-size: 14px;
}
</style>
