<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
/* 상품 이미지 썸네일 스타일 */
.product-thumb {
  width: 70px;
  height: 70px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto;
}

.product-thumb img {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
}
</style>

<div class="container-fluid">

  <!-- 페이지 타이틀 -->
  <div class="d-flex justify-content-between align-items-center mb-4">
    <h3 class="fw-bold">배스킨라빈스 상품 관리</h3>
    <a href="${pageContext.request.contextPath}/admin/product/write.do" class="btn btn-primary btn-sm">
      + 상품 등록
    </a>
  </div>

  <!-- 상품 테이블 -->
  <div class="card shadow-sm">
    <div class="card-body p-0">
      <table class="table table-hover mb-0 text-center align-middle">
        <thead class="table-light">
          <tr>
            <th>번호</th>
            <th>이미지</th>
            <th>상품명</th>
            <th>제품카테고리</th>
            <th>등록일</th>
            <th>판매상태</th>
            <th>관리</th>
          </tr>
        </thead>

        <tbody>
          <!-- 상품 1 : 판매중 -->
          
          
          <c:forEach items="${list}" var="vo">
          	<tr>
            <td>${vo.productsId}</td>
            <td>
              <div class="product-thumb">
                <img src="${pageContext.request.contextPath}${vo.imgPath}" alt="${vo.productName}">
              </div>
            </td>
            <td>${vo.productName}</td>
            <td>${vo.categoryName}</td>
            <td>${vo.releaseDate}</td>
            <td>
              <div class="btn-group btn-group-sm" role="group">
                <button type="button" class="btn btn${vo.productStatus == '판매중'?'':'-outline'}-success">판매중</button>
                <button type="button" class="btn btn${vo.productStatus != '판매중'?'':'-outline'}-secondary">판매중지</button>
              </div>
            </td>
            <td>
              <a href="#" class="btn btn-outline-secondary btn-sm">수정</a>
              <a href="#" class="btn btn-outline-danger btn-sm"
                 onclick="return confirm('정말 삭제하시겠습니까?');">
                삭제
              </a>
            </td>
          </tr>
          
          </c:forEach>
       
        </tbody>

      </table>
    </div>
  </div>

</div>
