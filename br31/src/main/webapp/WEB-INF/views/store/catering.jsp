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
                        단체 주문
					</h2>
				</div>

				<div class="page-header__content">
					<p class="page-header__text">
						단체주문도 언제나, 어디서나 배스킨라빈스!
					</p>
				</div>
			</div>
		</header>

		<div class="store-catering">
			<div class="store-catering__container">
				<div class="store-catering__content">
					<section class="store-catering-info">
						<header>
							<h3 class="store-catering-info__title">
								특별한 날, 이벤트 행사 등 단체 선물이 필요할 때<br>
								배스킨라빈스 단체주문 혜택도 받고 편하게 받아보세요!
							</h3>
							<p class="store-catering__button">
								<a href="${pageContext.request.contextPath}/store/catering-order.do">주문서 접수하기</a>
							</p>
                            <p class="store-catering__text">
                                수령일 기준 최소 3일전 주문 가능
                            </p>
						</header>

						<div class="store-catering-info__list">
							<div class="store-catering-info__item">
								<span class="store-catering-info__visual"></span>
								<div>
									<p class="store-catering-info__item--title">
										<span>아이스크림 제품</span>
										회사, 관공서, 은행, 학교 등
										<strong>한 장소로 일괄배송</strong>
									</p>
									<dl>
										<div>
											<dt>할인 및 혜택</dt>
											<dd>
												할인혜택 <span>별도협의 필요</span><br>
												50만원 이상 <span>배송/배달 서비스</span>
											</dd>
										</div>
										<div>
											<dt>결제방식</dt>
											<dd>현금 (계좌이체) / 카드 (전화결제)</dd>
										</div>
									</dl>
								</div>
							</div>
							<div class="store-catering-info__item">
								<span class="store-catering-info__visual"></span>
								<div>
									<p class="store-catering-info__item--title">
										<span>아이스크림 제품</span>
										전국 VIP 고객에게 원하는 시간 / 장소로 배달
										<strong>여러곳 배달</strong>
									</p>
									<dl>
										<div>
											<dt>할인 및 혜택</dt>
											<dd>
												할인혜택 <span>별도협의 필요</span><br>
												50만원 이상 <span>배송/배달 서비스</span>
											</dd>											
										</div>
										<div>
											<dt>결제방식</dt>
											<dd>카드 (전화결제) </dd>
										</div>
									</dl>
								</div>
							</div>
							<div class="store-catering-info__item">
								<span class="store-catering-info__visual"></span>
								<div>
									<p class="store-catering-info__item--title">
										<span>온/오프라인 상품권</span>
										매장, 해피오더, 배달앱 다양한 채널 결제 가능
										<strong>모바일교환권</strong>
									</p>
									<dl>
										<div>
											<dt>할인 및 혜택</dt>
											<dd>
												500만원 이상 <span>1%</span><br>
												<span>발송료 무료</span> (건당 50원)
											</dd>
										</div>
										<div>
											<dt>결제방식</dt>
											<dd>현금 (계좌이체) /<br>법인카드 (전화결제)</dd>
										</div>
									</dl>
								</div>
							</div>
							<div class="store-catering-info__item">
								<span class="store-catering-info__visual"></span>
								<div>
									<p class="store-catering-info__item--title">
										<span>온/오프라인 상품권</span>
										모바일사용이 익숙지 않은 분께 감사의 마음을 전하고 싶다면?
										<strong>지류상품권</strong>
									</p>
									<dl>
										<div>
											<dt>할인 및 혜택</dt>
											<dd>
												300만원 이상 <span>2%</span><br>
												500만원 이상 <span>3%</span><br>
												포장봉투 제공 /  등기발송 (1곳)

											</dd>
										</div>
										<div>
											<dt>결제방식</dt>
											<dd>
												현금 (계좌이체) /<br>
												법인카드 (전화결제)
											</dd>
										</div>
									</dl>
								</div>
							</div>
                            <div class="store-catering-info__item">
                                <span class="store-catering-info__visual"></span>
                                <div>
                                    <p class="store-catering-info__item--title">
                                        <span>아이스크림, 음료 제품</span>
                                        실내외 공연, 연예인, 축제 등 이벤트 장소 케이터링
                                        <strong>아이스크림 트레일러</strong>
                                    </p>
                                    <dl>
                                        <div>
                                            <dt>할인 및 혜택</dt>
                                            <dd>
                                                별도 협의 필요
                                            </dd>
                                        </div>
                                        <div>
                                            <dt>결제방식</dt>
                                            <dd>
                                                1:1 문의 (400만원 이상)
                                            </dd>
                                        </div>
                                    </dl>
                                </div>
                            </div>
						</div>
					</section>
					<section class="store-catering-howto">
						<h3 class="store-catering-howto__title">HOW TO ORDER</h3>
						<ol class="store-catering-howto__list">
							<li class="store-catering-howto__item">
								<span>STEP 1</span>
								배스킨라빈스 홈페이지에서<br>
								원하는 메뉴를 골라주세요
							</li>
							<li class="store-catering-howto__item">
								<span>STEP 2</span>
								원하는 방법을<br>
								선택해주세요
							</li>
							<li class="store-catering-howto__item">
								<span>STEP 3</span>
								주문서 접수하기를 남겨주세요<br>
								주문서 접수하시면 확인 후 연락드려요
							</li>
						</ol>
						<div class="store-catering-howto__content">
							<ul>
								<li>※ 배달 서비스는 인근 매장에서 진행되며, 단체 주문 시 배달비 무료 혜택을 드립니다. (단, 매장 상황에 따라 배달 서비스가 제한될 수 있습니다.)</li>
								<li>※ 문의: 월~금 AM 9:00 ~ PM 6:00</li>
								<li>※ 연락처 : summit@spc.co.kr</li>
							</ul>
							<p class="store-catering__button">
								<a href="catering-order.html">주문서 접수하기</a>
							</p>
						</div>
					</section>
				</div>
			</div>
		</div>

	</div>
</div>

