<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="site-container">
    <jsp:include page="../store/layout/store_header.jsp" /> 

	<div class="content">
		<header class="page-header">
			<div class="page-header__container">
				<div class="page-header__content">
					<h2 class="page-header__title">
                        100 Flavor
                    </h2>
				</div>

				<div class="page-header__content">
					<p class="page-header__text">
						배스킨라빈스 100flavor
					</p>
				</div>
			</div>
		</header>

		<div class="store-flavor">
			<div class="store-flavor__container">
				<div class="store-flavor__content">
					<section class="store-flavor-flavor">
						<h3 class="store-flavor-flavor__title">
						<span>
							<span>All About ICE CREAM 100</span>
						</span>
						</h3>
						<ul class="store-flavor-flavor__list">
							<li class="store-flavor-flavor__item">
								<span class="store-flavor-flavor__item--visual"></span>
								<div>
									<h4 class="store-flavor-flavor__item--title">
										배라에서 만나는<br>
										아르데코 스타일의 공간
									</h4>
									<p class="store-flavor-flavor__item--content">
										글로벌 인테리어 디자인 브랜드 오스모스<br>
										(OSMOSE)사와 협업해  우아한 라인과 기하학적<br>
										디자인의 아르데코 스타일을 현대적으로 구현했습니다.<br>
										아트슈머까지 만족시킬 예술적인 인테리어가<br>
										돋보이는 공간입니다.
									</p>
								</div>
							</li>
							<li class="store-flavor-flavor__item">
								<span class="store-flavor-flavor__item--visual"></span>
								<div>
									<h4 class="store-flavor-flavor__item--title">
										취향대로 고르는<br>
										100가지 아이스크림
									</h4>
									<p class="store-flavor-flavor__item--content">
										해외 인기 플레이버와 이달의 맛으로 선보였던 히트 메뉴,<br>
                                        트렌드를 반영한 오가닉 라인과 파르나스몰점의<br>
										시그니처 플레이버 등 풍성하게 준비된 아이스크림<br>
										컬렉션을 즐겨보세요.
									</p>
								</div>
							</li>
						</ul>
					</section>
					<section class="store-flavor-store">
						<nav class="page-tab">
							<ul class="page-tab__list">
								<!-- 현재 페이지인 경우 page-tab__item--active 추가 -->
								<li class="page-tab__item page-tab__item--active">
									<button class="page-tab__link">
										<span class="page-tab__text">부산서면중앙점</span>
									</button>
								</li>
								<li class="page-tab__item">
									<button class="page-tab__link">
										<span class="page-tab__text">파르나스몰점</span>
									</button>
								</li>
								<li class="page-tab__item">
									<button class="page-tab__link">
										<span class="page-tab__text">SPC스퀘어점</span>
									</button>
								</li>
								<li class="page-tab__item">
									<button class="page-tab__link">
										<span class="page-tab__text">강남대로점</span>
									</button>
								</li>
							</ul>
						</nav>
						<div class="store-flavor-store__list">
							<!-- 현재 페이지인 경우 store-flavor-store__item--active 추가 -->
							<div class="store-flavor-store__item store-flavor-store__item--active">
								<div>
									<h3>부산서면중앙점</h3>
									<dl>
										<div>
											<dt>매장주소</dt>
											<dd>부산 부산진구 부전동 195-3 1층</dd>
										</div>
										<div>
											<dt>전화번호</dt>
											<dd>051-803-1180</dd>
										</div>
										<div>
											<dt>운영시간</dt>
											<dd>AM 10 ~ PM 11</dd>
										</div>
										<div>
											<dt>스페셜 메뉴</dt>
											<dd>크레이프 포켓</dd>
										</div>
										<div>
											<dt>매장 서비스</dt>
											<dd>주차가능, 해피포인트 적립가능,<br>해피오더 딜리버리, 해피오더 픽업</dd>
										</div>
									</dl>
								</div>
								<div class="swiper">
									<div class="swiper-wrapper">

										<div class="swiper-slide">
											<span class="swiper-visual" style="background-image: url(${pageContext.request.contextPath}/resources/images/store/flavor/img_slide_crepe_pocket.png)"></span>
											<h4 class="swiper-title">크레이프 포켓</h4>
											<p class="swiper-content">
												수제 크레이프 속에 아이스크림과 커스타드 크림,<br>
												생 과일이 들어간 주머니형태의 달콤한 디저트
											</p>
										</div>

									</div>
									<div class="swiper-pagination"></div>
								</div>
							</div>
							<div class="store-flavor-store__item">
								<div>
									<h3>파르나스몰점</h3>
									<dl>
										<div>
											<dt>매장주소</dt>
											<dd>
												서울 강남구 테헤란로 521, 지하1층 R-21,22호<br>(삼성동, 파르나스타워)
											</dd>
										</div>
										<div>
											<dt>전화번호</dt>
											<dd>02-3453-8801</dd>
										</div>
										<div>
											<dt>운영시간</dt>
											<dd>AM 9 ~ PM 10</dd>
										</div>
										<div>
											<dt>스페셜 메뉴</dt>
											<dd>크레이프 포켓</dd>
										</div>
										<div>
											<dt>매장 서비스</dt>
											<dd>주차가능, 해피포인트 적립가능,<br>해피오더 픽업, 해피오더 딜리버리, 요기요</dd>
										</div>
									</dl>
								</div>
								<div class="swiper">
									<div class="swiper-wrapper">

										<div class="swiper-slide">
											<span class="swiper-visual" style="background-image: url(${pageContext.request.contextPath}/resources/images/store/flavor/img_slide_crepe_pocket.png)"></span>
											<h4 class="swiper-title">크레이프 포켓</h4>
											<p class="swiper-content">
												수제 크레이프 속에 아이스크림과 커스타드 크림,<br>
												생 과일이 들어간 주머니형태의 달콤한 디저트
											</p>
										</div>

									</div>
									<div class="swiper-pagination"></div>
								</div>
							</div>
							<div class="store-flavor-store__item">
								<div>
									<h3>SPC 스퀘어점</h3>
									<dl>
										<div>
											<dt>매장주소</dt>
											<dd>서울 강남구 역삼동 831-23 2층</dd>
										</div>
										<div>
											<dt>전화번호</dt>
											<dd>02-565-1012</dd>
										</div>
										<div>
											<dt>운영시간</dt>
											<dd>AM 10 ~ PM 11</dd>
										</div>
										<div>
											<dt>스페셜 메뉴</dt>
											<dd>텐미니</dd>
										</div>
										<div>
											<dt>매장 서비스</dt>
											<dd>주차가능, 해피포인트 적립가능,<br>해피오더 픽업, 해피오더 딜리버리, 요기요</dd>
										</div>
									</dl>
								</div>
								<div class="swiper">
									<div class="swiper-wrapper">

										<div class="swiper-slide">
											<span class="swiper-visual" style="background-image: url(${pageContext.request.contextPath}/resources/images/store/flavor/img_slide_10mini.png)"></span>
											<h4 class="swiper-title">텐미니</h4>
											<p class="swiper-content">
												100가지 베스트 플레이버로 즐기는<br>
												미니 아이스크림 벨지안 와플콘
											</p>
										</div>

									</div>
									<div class="swiper-pagination"></div>
								</div>
							</div>
							<div class="store-flavor-store__item">
								<div>
									<h3>강남대로점</h3>
									<dl>
										<div>
											<dt>매장주소</dt>
											<dd>서울특별시 강남구 강남대로 442(역삼1동) 1층</dd>
										</div>
										<div>
											<dt>전화번호</dt>
											<dd>02-561-1217</dd>
										</div>
										<div>
											<dt>운영시간</dt>
											<dd>AM 10 ~ PM 11</dd>
										</div>
										<div>
											<dt>스페셜 메뉴</dt>
											<dd>텐미니</dd>
										</div>
										<div>
											<dt>매장 서비스</dt>
											<dd>해피포인트 적립가능, 해피오더 픽업,<br>해피오더 딜리버리, 요기요</dd>
										</div>
									</dl>
								</div>
								<div class="swiper">
									<div class="swiper-wrapper">

										<div class="swiper-slide">
											<span class="swiper-visual" style="background-image: url(${pageContext.request.contextPath}/resources/images/store/flavor/img_slide_10mini.png)"></span>
											<h4 class="swiper-title">텐미니</h4>
											<p class="swiper-content">
												100가지 베스트 플레이버로 즐기는<br>
												미니 아이스크림 벨지안 와플콘
											</p>
										</div>

									</div>
									<div class="swiper-pagination"></div>
								</div>
							</div>
						</div>

					</section>
				</div>
			</div>
		</div>

	</div>
</div>


