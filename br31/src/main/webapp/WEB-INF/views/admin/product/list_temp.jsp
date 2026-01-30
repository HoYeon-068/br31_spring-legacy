<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container-fluid">

  <!-- 페이지 타이틀 -->
  <div class="d-flex justify-content-between align-items-center mb-4">
    <h3 class="fw-bold">배스킨라빈스 상품 관리</h3>
    <button class="btn btn-primary btn-sm">
      + 상품 등록
    </button>
  </div>

  <!-- 상품 테이블 -->
  <div class="card shadow-sm">
    <div class="card-body p-0">
      <table class="table table-hover mb-0 text-center align-middle">
        <thead class="table-light">
          <tr>
            <th>번호</th>
            <th>상품명</th>
            <th>영문명</th>
            <th>상태</th>
            <th>가격</th>
            <th>관리</th>
          </tr>
        </thead>
        <tbody>

          <!-- 임시 데이터 -->
          <tr>
            <td>1</td>
            <td>엄마는 외계인</td>
            <td>Mom Is Alien</td>
            <td>
              <span class="badge bg-success">판매중</span>
            </td>
            <td>4,500원</td>
            <td>
              <button class="btn btn-outline-secondary btn-sm">수정</button>
              <button class="btn btn-outline-danger btn-sm">삭제</button>
            </td>
          </tr>

          <tr>
            <td>2</td>
            <td>아몬드 봉봉</td>
            <td>Almond Bonbon</td>
            <td>
              <span class="badge bg-secondary">판매중지</span>
            </td>
            <td>4,500원</td>
            <td>
              <button class="btn btn-outline-secondary btn-sm">수정</button>
              <button class="btn btn-outline-danger btn-sm">삭제</button>
            </td>
          </tr>

          <tr>
            <td>3</td>
            <td>민트 초코</td>
            <td>Mint Chocolate</td>
            <td>
              <span class="badge bg-success">판매중</span>
            </td>
            <td>4,500원</td>
            <td>
              <button class="btn btn-outline-secondary btn-sm">수정</button>
              <button class="btn btn-outline-danger btn-sm">삭제</button>
            </td>
          </tr>

        </tbody>
      </table>
    </div>
  </div>

</div>
