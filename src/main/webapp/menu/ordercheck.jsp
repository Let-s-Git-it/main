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
<style>
#product>.complete>.message>h2 {
	font-size: 32px;
	font-weight: bold;
	text-align: center;
	color: #555;
	padding: 10px;
}

#product>.complete>.message>h2>i {
	font-size: 26px;
}

#product>.complete>.message>p {
	font-size: 18px;
	font-weight: bold;
	padding: 10px;
	text-align: center;
}

#product>.complete>.message>h2>i {
	font-size: 26px;
}

#product>.complete>.message>p {
	font-size: 18px;
	font-weight: bold;
	padding: 10px;
	text-align: center;
}

#product>.complete>article {
	margin-top: 16px;
}

#product>.complete>article>h1 {
	font-weight: bold;
	font-size: 14px;
	color: #111;
	padding: 6px 0;
}

#product>.complete table tr>th {
	padding: 12px 0;
	background: #fff;
	color: #383838;
	font-size: 0.95em;
	text-align: center;
	letter-spacing: -0.1em;
}

#product>.complete>.info table tr>td {
	text-align: center;
}

#product>.complete>.info table tr>td img {
	float: left;
	width: 80px;
}

#product>.complete>.info table tr>td div {
	float: left;
	margin-left: 10px;
	text-align: left;
}

#product>.complete>.info table tr>td div>p {
	text-align: left;
	color: #777;
	margin-top: 4px;
}

#product>.complete>.info .total>td>table tr {
	border: none;
}

#product>.complete>.info .total>td>table td {
	text-align: right;
	color: #111;
	background: #f2f2f2;
	font-weight: normal;
	border-bottom: none;
	padding: 10px;
	box-sizing: border-box;
}

#product>.complete>.info .total>td>table tr:last-child span {
	font-weight: bold;
	color: #ff006c;
}

#product>.complete>.order>table tr>td:nth-child(1) {
	width: 160px;
	background: #f2f2f2;
}

#product>.complete>.order table tr>td:nth-child(2) {
	width: auto;
}

#product>.complete>.order table tr>td:nth-child(3) {
	width: 100px;
	text-align: right;
	vertical-align: top;
	background: #f2f2f2;
}

#product>.complete>.order table tr>td:nth-child(4) {
	width: 100px;
	text-align: right;
	vertical-align: top;
	background: #f2f2f2;
}

#product>.complete>.order table span {
	font-weight: bold;
	color: #ff006c;
}

/* 추가 스타일: 상품정보 테이블을 가운데 정렬 */
#product>.complete .info table {
	margin: 0 auto; /* 수평 가운데 정렬 */
	width: 80%; /* 원하는 너비 조정 가능 */
}

.message h2 {
	margin-left: 380px;
}

.info {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
}

table {
	margin: 0 auto;
	text-align: left;
}

td {
	text-align: center;
}

img {
	display: block;
	margin: 0 auto;
}

.total {
	text-align: center;
}

.info {
	margin-top: 60px;
}

hr {
	border: 1 solid #000;
	width: 1140px;
	margin-top: 8px;
	margin-bottom: 10px;
}
</style>

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
									href="${pageContext.request.contextPath}/menu/food_menu.jsp">메뉴</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/base/chefs.jsp">소개</a>
								</li>
								<li class="nav-item"><a class="dropdown-item"
									href="${pageContext.request.contextPath}/menu/review.us">리뷰</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/mapping.jsp">오시는 길</a>
								</li>
							</ul>
						</div>
						<c:choose>
							<c:when
								test="${empty sessionScope.userid && empty param.kakaoUserId}">
								<div class="menu_btn" id="signupBtn">
									<a href="${pageContext.request.contextPath}/join/joinview.jsp"
										class="btn_1 d-none d-sm-block">회원가입</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="menu_btn" id="logoutBtn">
									<a href="${pageContext.request.contextPath}/user/Logoutok.us"
										class="btn_1 d-none d-sm-block"
										onclick="return confirm('로그아웃하시겠습니까?');">로그아웃</a>
								</div>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when
								test="${empty sessionScope.userid && empty param.kakaoUserId}">
								<div class="menu_btn" id="loginBtn"
									test="${empty sessionScope.userid && empty param.kakaoUserId}">
									<a
										href="${pageContext.request.contextPath}/login/loginview.jsp"
										class="btn_1 d-none d-sm-block">로그인</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="menu_btn" id="orderBtn">
									<a href="${pageContext.request.contextPath}/menu/order.jsp"
										class="btn_1 d-none d-sm-block">주문하기</a>
								</div>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when
								test="${empty sessionScope.userid &&empty param.kakaoUserId}">
								<div class="menu_btn" id="orderBtn">
									<a
										href="${pageContext.request.contextPath}/login/loginview.jsp"
										class="btn_1 d-none d-sm-block">주문하기</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="menu_btn" id="orderCheckbtn">
									<a href="${pageContext.request.contextPath}/menu/ordercheck.jsp"
										class="btn_1 d-none d-sm-block">주문내역</a>
								</div>
							</c:otherwise>
						</c:choose>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- 주문 내역 표시 -->
	<section class="complete">
		<article class="message">
			<h2>
				네모바지 주문내역 <i class="far fa-smile" aria-hidden="true"></i>
			</h2>
		</article>
		<article class="info">
			<h1>상품정보</h1>
			<hr>
			<table border="0">
				<tr>
					<th>상품명</th>
					<th>상품금액</th>
					<th>할인금액</th>
					<th>수량</th>
					<th>주문금액</th>
				</tr>
				<tr>
					<td>
						<article>
							<img src="https://via.placeholder.com/80X80" alt="">
							<div>
								<h2>
									<a href="#">상품명</a>
								</h2>
							</div>
						</article> <c:forEach items="${orderHistory}" var="order">
							<tr>
								<td>
									<article>
										<img src="https://via.placeholder.com/80X80" alt="">
										<div>
											<h2>${order.menu_name}</h2>
											<p>상품설명</p>
										</div>
									</article>
								</td>
								<td>${order.price}원</td>
								<td>${order.quantity}</td>
							</tr>
						</c:forEach>
				<tr class="total">
					<td colspan="4"></td>
					<td>
						<table>
							<tr>
								<td>총 상품금액</td>
								<td>${order.price * order.quantity}원</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</article>
	</section>

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
	<!-- order js -->
	<script src="${pageContext.request.contextPath}/js/order.js"></script>
	<%--kakao apia, js--%>
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.4.0/kakao.min.js"
		integrity="sha384-mXVrIX2T/Kszp6Z0aEWaA8Nm7J6/ZeWXbL8UpGRjKwWe56Srd/iyNmWMBhcItAjH"
		crossorigin="anonymous"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="${pageContext.request.contextPath}/login/kakao.js"></script>
</body>
</html>