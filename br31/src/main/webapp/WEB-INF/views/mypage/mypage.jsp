<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<section class="site-container">
    <div id="content" class="mypage">
        <header class="page-header">
            <div class="page-header__container">
                <div class="page-header__content">
                    <h2 class="page-header__title">
                        MY PAGE
                    </h2>
                </div>
            </div>
        </header>

        <div class="mypage__container">
            <div class="mypage__content">
                <div class="mypage-info">
                    <div class="mypage-info__box">
                        <div class="mypage-info__content">
                            <div class="mypage-info__frame">
                                <c:choose>
								  <c:when test="${not empty loginUser.profileImgPath}">
								    <img src="${pageContext.request.contextPath}${loginUser.profileImgPath}" alt="" class="mypage-info__image">
								  </c:when>
								  <c:otherwise>
								    <img src="${pageContext.request.contextPath}/resources/images/mypage/img_profile_1.png" alt="" class="mypage-info__image">
								  </c:otherwise>
								</c:choose>
                            </div>

                            <a class="mypage-info__button"   href="${pageContext.request.contextPath}/mypage/profileEdit.do">
							  프로필 수정
							</a>
                        </div>

                        <div class="mypage-info__content">
                            <p class="mypage-info__text mypage-info__text--big">${loginUser.name}님!</p>
                            <p class="mypage-info__text mypage-info__text--big">반갑습니다!</p>
                        </div>
                    </div>
                    <div class="mypage-info__content">
                        <a href="https://www.happypointcard.com/page/presentation/membership.spc" target="_blank" class="mypage-info__link">해피포인트 등급/혜택안내</a>
                    </div>
                </div>

                <div class="mypage__box">
                    <h3 class="mypage__title">참여 마이플레이버리스트 내역 <strong class="mypage__point">0</strong>건 입니다.</h3>

                    <div class="mypage-myflavor">
                                            <!-- 마이플레이버리스트 없을 때 -->
                        <div class="mypage-not">
                            <div class="mypage-not__container">
                                <p class="mypage-not__text">참여하신 마이플레이버리스트가 없습니다.</p>
                                <a href="/play/myflavor/list.php" class="mypage-not__link">
                                    <span class="mypage-not__link-text">마이플레이 리스트 참여하기</span>
                                </a>
                            </div>
                        </div>
                                        </div>
                </div>

                <div class="mypage__box">
                    <h3 class="mypage__title">작성 배라광장 내역 <strong class="mypage__point">0</strong>건 입니다.</h3>

                    <div class="mypage-plaza">
                                            <!-- 작성 배라광장 없을 때 -->
                        <div class="mypage-not">
                            <div class="mypage-not__container">
                                <p class="mypage-not__text">참여하신 배라광장이 없습니다.</p>
                                <a href="/play/plaza/list.php" class="mypage-not__link">
                                    <span class="mypage-not__link-text">배라광장 참여하기</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

