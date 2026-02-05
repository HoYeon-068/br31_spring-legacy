<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <section class="consulting-condition__container">
            <div class="consulting-condition__content">
	            <h3 class="consulting-condition__title">창업조건</h3>
				<ul class="consulting-condition__list">
					<li class="consulting-condition__item">
                        교육이수 / 9일 (이론, 실습),<br>
                        점주 포함 2명
                    </li>
					<li class="consulting-condition__item">
						창업 가능 지역 전국<br>
						주요 상권
					</li>
					<li class="consulting-condition__item">
						계약기간 초기 3년 계약<br>
						(1년 단위 재계약)
					</li>
					<li class="consulting-condition__item">
                        점포규모<br>
                        면적 실 22평(최소) ~ 실 25평(권장)<br>
                        전면폭 6.0m이상
						<span>* 점포규모는 상권 등에 따라 변동될 수 있음. </span>
					</li>
				</ul>
	            <p class="consulting-condition__location">
                    교육장소 비알코리아(주) 아카데미
		            <button type="button" class="consulting-condition__button">교육장소 약도보기</button>
	            </p>
	            <div class="consulting-condition__table">
		            <h3 class="consulting-condition__title consulting-condition__table--title">투자비용</h3>
		            <p class="consulting-condition__table--text">(단위 : 천원, 부가세 별도)</p>
		            <table class="consulting-condition__table--table">
			            <colgroup>
				            <col width="125px">
				            <col width="270px">
				            <col width="200px">
				            <col width="*">
			            </colgroup>
			            <tr>
				            <th colspan="2">구분</th>
				            <th>금액</th>
				            <th>비고</th>
			            </tr>
			            <tr>
				            <td rowspan="5">본사납입금</td>
				            <td class="align-left">가맹비</td>
				            <td>5,000</td>
				            <td>소멸성 비용</td>
			            </tr>
			            <tr>
				            <td class="align-left">계약이행보증금</td>
				            <td>8,000</td>
				            <td>
					            계약 종료시 반환<br>
					            * 휴게소등 월단위 결제점포의 경우 40,000천원 적용
				            </td>
			            </tr>
			            <tr>
				            <td class="align-left">기획관리비</td>
				            <td>3,000</td>
				            <td>인테리어 공사진행 관리, 감독</td>
			            </tr>
			            <tr>
				            <td class="align-left">교육비</td>
				            <td>1,500</td>
				            <td>이론, 실습교육(2인 기준, 9일 교육)</td>
			            </tr>
			            <tr>
				            <td class="align-left">소계</td>
				            <td><strong>17,500</strong></td>
				            <td></td>
			            </tr>
			            <tr>
				            <td rowspan="8">투자비</td>
				            <td class="align-left">인테리어</td>
				            <td>71,000 ~ 89,000</td>
				            <td>점포 특성에 따라 변동</td>
			            </tr>
			            <tr>
				            <td class="align-left">판매장비</td>
				            <td>74,000 ~ 91,000</td>
				            <td>점포 특성에 따라 변동</td>
			            </tr>
			            <tr>
				            <td class="align-left">간판(내외부 Sign)</td>
				            <td>9,500 ~ 14,000</td>
				            <td>점포 특성에 따라 변동</td>
			            </tr>
			            <tr>
				            <td class="align-left">가구, 의탁자 등</td>
				            <td>28,500 ~ 36,500</td>
				            <td>점포 특성에 따라 변동</td>
			            </tr>
			            <tr>
				            <td class="align-left">초도 제품, 상품</td>
				            <td>18,200 ~ 22,700</td>
				            <td>제품, 상품</td>
			            </tr>
			            <tr>
				            <td class="align-left">기타</td>
				            <td>8,000 ~ 11,000</td>
				            <td>에어컨, CCTV, 보안 外</td>
			            </tr>
			            <tr>
				            <td class="align-left">소계</td>
				            <td><strong>209,200 ~ 264,200</strong></td>
				            <td></td>
			            </tr>
			            <tr>
				            <td colspan="2"><span>합계 (본사납입금 + 투자비)</span></td>
				            <td><strong>226,700 ~ 281,700</strong></td>
			            </tr>
		            </table>
		            <ul class="consulting-condition__table--list">
			            <li class="consulting-condition__table--item">상기 금액은 당사의 가맹점 운영 경험을 토대로 추정한 것으로 실제 지불금액과는 다를 수 있음</li>
			            <li class="consulting-condition__table--item">전기증설(최소 25KW) 비용, 정화조 증설비용 등 점포 여건에 따라 추가 비용이 발생할 수 있음</li>
			            <li class="consulting-condition__table--item">임차성 비용 별도</li>
		            </ul>
	            </div>

	            <div id="consulting-condition-modal" class="consulting-condition-popup modal fade">
		            <div class="modal-dialog modal-dialog-centered">
			            <div class="modal-content">
				            <div class="modal-body">
					            <div class="consulting-condition-popup__container">
						            <header class="consulting-condition-popup__header">
							            <h3 class="consulting-condition-popup__title">비알코리아㈜ 아카데미</h3>
							            <p class="consulting-condition-popup__address">
								            주소 : 서울특별시 동작구 비알코리아 아카데미<br>
                                            (도로명) 신대방16다길 14
							            </p>
										<div id="map" class="consulting-condition-popup__map"></div>
						            </header>
						            <div class="consulting-condition-popup__content">
							            <h4 class="consulting-condition-popup__content--title">오시는 방법</h4>
							            <div class="consulting-condition-popup__content--list">
								            <div>
									            <div class="consulting-condition-popup__content--item">
										            <h5>· 지하철 이용시</h5>
										            <p>구로디지털단지역(1,2호선)</p>
										            <dl>
											            <div>
												            <dt>버스 환승 시 6번 출구 :</dt>
												            <dd>
													            구로디지털역환승센터 버스정류장 승차 &gt;<br>
													            신대방경남아파트(중) 하차
												            </dd>
											            </div>
										            </dl>
										            <p>신대방역(2호선)</p>
										            <dl>
											            <div>
												            <dt>도보 시 4번 출구 :</dt>
												            <dd>강남성심병원방향 (약 10분 소요)</dd>
											            </div>
											            <div>
												            <dt>버스 환승 시 4번 출구 :</dt>
												            <dd>
													            ‘신대방역’마을버스 05번 승차 &gt;<br>
													            ‘신대방우성아퍄트 앞 하차
												            </dd>
											            </div>
										            </dl>
										            <p>신풍역(7호선)</p>
										            <dl>
											            <div>
												            <dt>도보 시 2번 출구:</dt>
												            <dd>대림삼거리방향 (약 15분 소요)</dd>
											            </div>
											            <div>
												            <dt>버스 환승 시 4번 출구:</dt>
												            <dd>
													            백악관 웨딩문화원 앞 ‘신풍역’버스정류장 승차 &gt;<br>
													            강남성심병원, 대림성모병원(중) 하차
												            </dd>
											            </div>
										            </dl>
									            </div>
								            </div>
								            <div>
									            <div class="consulting-condition-popup__content--item">
										            <h5>· 버스 이용시</h5>
										            <p>강남성심병원, 대림성모병원(중) / 신대방경남아파트(중) 정류장</p>
										            <dl>
											            <div>
												            <dt>간선(파랑) :</dt>
												            <dd>150, 505</dd>
											            </div>
											            <div>
												            <dt>지선(녹색) :</dt>
												            <dd>5531, 5536, 5616, 5620, 5623, 5625, 5633,<br>
													            5713, 6512
												            </dd>
											            </div>
											            <div>
												            <dt>경기 :</dt>
												            <dd>900(수원), 5(안양), 5609(안산)</dd>
											            </div>
										            </dl>
									            </div>
									            <div class="consulting-condition-popup__content--item consulting-condition-popup__content--item--last">
										            <h5>· 자차 이용시</h5>
										            <p>네비게이션 ‘SPC미래창조원‘ or ‘비알코리아아카데미‘ 검색</p>
									            </div>
								            </div>
							            </div>
						            </div>
						            <button type="button" class="btn-close" data-bs-dismiss="modal">
							            <span>닫기</span>
						            </button>
					            </div>
				            </div>
			            </div>
		            </div>
	            </div>
            </div>
        </section>
    </div>

