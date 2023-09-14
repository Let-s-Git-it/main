<%@ page import="com.pizzaorder.web.user.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>네모바지 피자</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flaticon.css">
<!-- font awesome CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/magnific-popup.css">
<!-- swiper CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/gijgo.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/all.css">
<!-- style CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
	<!--::header part start::-->
	<header class="main_menu">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand"
							href="${pageContext.request.contextPath}/base/index.jsp"> <img
							src="${pageContext.request.contextPath}/img/logo.png" alt="logo">
						</a>
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div
							class="collapse navbar-collapse main-menu-item justify-content-end"
							id="navbarSupportedContent">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/base/index.jsp">홈</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="food_menu.jsp">메뉴</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/base/chefs.jsp">소개</a>
								</li>
								<li class="nav-item"><a class="dropdown-item"
									href="${pageContext.request.contextPath}/menu/review.jsp">리뷰</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/mapping.jsp">오시는 길</a>
								</li>
							</ul>
						</div>
						<c:choose>
							<c:when
								test="${empty sessionScope.userid} ||${empty sessionScope.kakaoid }">
								<div class="menu_btn" id="loginBtn">
									<a href="${pageContext.request.contextPath}/join/joinview.jsp"
										class="btn_1 d-none d-sm-block">회원가입</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="menu_btn" id="logoutBtn">
									<a href="${pageContext.request.contextPath}/user/Logoutok.us"
										class="btn_1 d-none d-sm-block">로그아웃</a>
								</div>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when
								test="${empty sessionScope.userid} ||${empty sessionScope.kakaoid }">
								<div class="menu_btn" id="signupBtn" test="${session.user }">
									<a
										href="${pageContext.request.contextPath}/login/loginview.jsp"
										class="btn_1 d-none d-sm-block">로그인</a>
								</div>
								<div class="menu_btn" id="orderBtn" test="${session.user }">
									<a
										href="${pageContext.request.contextPath}/login/loginview.jsp"
										class="btn_1 d-none d-sm-block">주문하기</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="menu_btn" id="orderCheckbtn">
									<a href="${pageContext.request.contextPath}/menu/review.jsp"
										class="btn_1 d-none d-sm-block">주문내역</a>
								</div>
								<div class="menu_btn" id="orderBtn">
									<a href="${pageContext.request.contextPath}/menu/order.jsp"
										class="btn_1 d-none d-sm-block">주문하기</a>
								</div>
							</c:otherwise>
						</c:choose>
					
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header part end-->

	<!-- breadcrumb start-->
	<section class="breadcrumb breadcrumb_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner text-center">
						<div class="breadcrumb_iner_item">
							<h2>메뉴</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->

	<!--::chefs_part start::-->
	<!-- food_menu start-->
	<section class="food_menu gray_bg">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="section_tittle">
						<p>Popular Menu</p>
						<h2>Delicious Food Menu</h2>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="nav nav-tabs food_menu_nav" id="myTab" role="tablist">
						<a class="active" id="Main-tab" data-toggle="tab" href="#Main"
							role="tab" aria-controls="Main" aria-selected="false">메인 메뉴<img
							src="${pageContext.request.contextPath}/img/icon/play.svg"
							alt="play"></a> <a id="Side-tab" data-toggle="tab" href="#Side"
							role="tab" aria-controls="Side" aria-selected="false">사이드 메뉴<img
							src="${pageContext.request.contextPath}/img/icon/play.svg"
							alt="play"></a> <a id="Drink-tab" data-toggle="tab"
							href="#Drink" role="tab" aria-controls="Drink"
							aria-selected="false">음료<img
							src="${pageContext.request.contextPath}/img/icon/play.svg"
							alt="play"></a> <a
							href="${pageContext.request.contextPath}/menu/review.jsp">리뷰</a>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="tab-content" id="myTabContent">
						<div class="tab-pane fade show active single-member" id="Main"
							role="tabpanel" aria-labelledby="Main-tab">
							<div class="row">
								<div class="col-sm-6 col-lg-6">
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/bulgogi.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>불고기</h3>
											<p>프리미엄 불고기 토핑이 듬뿍</p>
											<h5>￦22,500</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/quatro.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>콰트로</h3>
											<p>4가지 피자를 한 판에</p>
											<h5>￦29,500</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/seafood.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>씨푸드</h3>
											<p>바다와 육지의 대왕이 하나로</p>
											<h5>￦30,000</h5>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-lg-6">
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/pepperoni.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>페퍼로니</h3>
											<p>짭짤한 풍미의 페퍼로니, 파마산+로마노 치즈가 토핑</p>
											<h5>￦18,500</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/potato.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>포테이토</h3>
											<p>신선한 감자와 고소한 치즈의 환상 조합</p>
											<h5>￦20,500</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/steak.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>스테이크</h3>
											<p>카우보이들이 즐겨 먹던 정통 그릴드 비프 스테이크의 재현</p>
											<h5>￦28,000</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade single-member" id="Side" role="tabpanel"
							aria-labelledby="Side-tab">
							<div class="row">
								<div class="col-sm-6 col-lg-6">
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/cheese_ball.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>치즈볼</h3>
											<p>맥앤치즈 필링에 자꾸만 손이 가는 매력적인 맛</p>
											<h5>￦6,900</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/hot_wing.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>핫 윙</h3>
											<p>웨스턴 스타일로 매콤하게</p>
											<h5>￦9,800</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/carbonara.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>까르보나라</h3>
											<p>짭짤한 베이컨과 풍미 있는 까르보나라 소스가 어우러진</p>
											<h5>￦9,800</h5>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-lg-6">
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/bolognese.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>볼로네제 파스타</h3>
											<p>정통 이탈리안 볼로네즈 소스 베이스에 달달한 페타 크림 치즈를 덮어 풍미를 높이다</p>
											<h5>￦9,800</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/coleslaw.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>코울슬로</h3>
											<p>아삭한 양배추와 각종 야채를 소스와 버무려 새콤달콤한 맛이 가득</p>
											<h5>￦2,400</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade single-member" id="Drink"
							role="tabpanel" aria-labelledby="Drink-tab">
							<div class="row">
								<div class="col-sm-6 col-lg-6">
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/coke.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>콜라</h3>
											<h5>1.25L ￦2300</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/zerocoke.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>제로 콜라</h3>
											<h5>1.25L ￦2300</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/sprite.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>스프라이트</h3>
											<h5>1.5L ￦2400</h5>
										</div>
									</div>
								</div>
								<div class="col-sm-6 col-lg-6">
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/coke_500.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>콜라</h3>
											<h5>500ml ￦1700</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/zerocoke_500.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>제로 콜라</h3>
											<h5>500ml ￦1700</h5>
										</div>
									</div>
									<div class="single_food_item media">
										<a href="${pageContext.request.contextPath}/menu/order.jsp">
											<img
											src="${pageContext.request.contextPath}/img/food_menu/sprite_500.png"
											class="mr-3" alt="...">
										</a>
										<div class="media-body align-self-center">
											<h3>스프라이트</h3>
											<h5>500ml ￦1700</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- food_menu part end-->
	<!--::chefs_part end::-->

	<!-- footer part start-->
	<!-- <footer class="footer-area"> -->
	<!--     <div class="container"> -->
	<!--         <div class="row"> -->
	<!--             <div class="col-xl-3 col-sm-6 col-md-4"> -->
	<!--                 <div class="single-footer-widget footer_1"> -->
	<!--                     <h4>About Us</h4> -->
	<!--                     <p>Heaven fruitful doesn't over for these theheaven fruitful doe over days -->
	<!--                         appear creeping seasons sad behold beari ath of it fly signs bearing -->
	<!--                         be one blessed after.</p> -->
	<!--                 </div> -->
	<!--             </div> -->
	<!--             <div class="col-xl-3 col-sm-6 col-md-4"> -->
	<!--                 <div class="single-footer-widget footer_2"> -->
	<!--                     <h4>Important Link</h4> -->
	<!--                     <div class="contact_info"> -->
	<!--                         <ul> -->
	<!--                             <li><a href="#">WHMCS-bridge</a></li> -->
	<!--                             <li><a href="#"> Search Domain</a></li> -->
	<!--                             <li><a href="#">My Account</a></li> -->
	<!--                             <li><a href="#">Shopping Cart</a></li> -->
	<!--                             <li><a href="#"> Our Shop</a></li> -->
	<!--                         </ul> -->
	<!--                     </div> -->
	<!--                 </div> -->
	<!--             </div> -->
	<!--             <div class="col-xl-3 col-sm-6 col-md-4"> -->
	<!--                 <div class="single-footer-widget footer_2"> -->
	<!--                     <h4>Contact us</h4> -->
	<!--                     <div class="contact_info"> -->
	<!--                         <p><span> Address :</span>Hath of it fly signs bear be one blessed after </p> -->
	<!--                         <p><span> Phone :</span> +2 36 265 (8060)</p> -->
	<!--                         <p><span> Email : </span>info@colorlib.com </p> -->
	<!--                     </div> -->
	<!--                 </div> -->
	<!--             </div> -->
	<!--             <div class="col-xl-3 col-sm-8 col-md-6"> -->
	<!--                 <div class="single-footer-widget footer_3"> -->
	<!--                     <h4>Newsletter</h4> -->
	<!--                     <p>Heaven fruitful doesn't over lesser in days. Appear creeping seas</p> -->
	<!--                     <form action="#"> -->
	<!--                         <div class="form-group"> -->
	<!--                             <div class="input-group mb-3"> -->
	<!--                                 <input type="text" class="form-control" placeholder='Email Address' -->
	<!--                                        onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'"> -->
	<!--                                 <div class="input-group-append"> -->
	<!--                                     <button class="btn" type="button"><i class="fas fa-paper-plane"></i></button> -->
	<!--                                 </div> -->
	<!--                             </div> -->
	<!--                         </div> -->
	<!--                     </form> -->
	<!--                 </div> -->
	<!--             </div> -->
	<!--         </div> -->
	<!--         <div class="copyright_part_text"> -->
	<!--             <div class="row"> -->
	<!--                 <div class="col-lg-8"> -->
	<!--                     <p class="footer-text m-0"> -->
	<!--                         Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	<!--                         Copyright &copy;<script>document.write(new Date().getFullYear());</script> -->
	<!--                         All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by -->
	<!--                         <a href="https://colorlib.com" target="_blank">Colorlib</a> -->
	<!--                         Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.</p> -->
	<!--                 </div> -->
	<!--                 <div class="col-lg-4"> -->
	<!--                     <div class="copyright_social_icon text-right"> -->
	<!--                         <a href="#"><i class="fab fa-facebook-f"></i></a> -->
	<!--                         <a href="#"><i class="fab fa-twitter"></i></a> -->
	<!--                         <a href="#"><i class="ti-dribbble"></i></a> -->
	<!--                         <a href="#"><i class="fab fa-behance"></i></a> -->
	<!--                     </div> -->
	<!--                 </div> -->
	<!--             </div> -->
	<!--         </div> -->
	<!--     </div> -->
	<!-- </footer> -->
	<!-- footer part end-->

	<!-- jquery plugins here-->
	<!-- jquery -->
	<script
		src="${pageContext.request.contextPath}/js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- easing js -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
	<!-- swiper js -->
	<script src="${pageContext.request.contextPath}/js/masonry.pkgd.js"></script>
	<!-- particles js -->
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<!-- swiper js -->
	<script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/gijgo.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
	<!-- custom js -->
	<script src="${pageContext.request.contextPath}/js/custom.js"></script>
	<script src="${pageContext.request.contextPath}/login/login.js"></script>
</body>
</html>