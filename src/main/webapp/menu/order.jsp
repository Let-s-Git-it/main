<%@ page import="com.pizzaorder.web.user.dao.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>네모바지 피자</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/gijgo.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
<!--::header part start::-->
<header class="main_menu">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/base/index.jsp"> <img
                            src="${pageContext.request.contextPath}/img/logo.png" alt="logo"> </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse main-menu-item justify-content-end"
                         id="navbarSupportedContent">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/base/index.jsp">홈</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"
                                   href="${pageContext.request.contextPath}/menu/food_menu.jsp">메뉴</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/base/chefs.jsp">소개</a>
                            </li>
                            <li class="nav-item">
                                <a class="dropdown-item"
                                   href="${pageContext.request.contextPath}/menu/review.us">리뷰</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/mapping.jsp">오시는 길</a>
                            </li>
                        </ul>
                    </div>
                    <c:choose>
                        <c:when test="${empty sessionScope.userid && empty param.kakaoUserId}">
                            <div class="menu_btn" id="signupBtn">
                                <a href="${pageContext.request.contextPath}/join/joinview.jsp"
                                   class="btn_1 d-none d-sm-block">회원가입</a>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="menu_btn" id="logoutBtn">
                                <a href="${pageContext.request.contextPath}/user/Logoutok.us"
                                   class="btn_1 d-none d-sm-block" onclick="return confirm('로그아웃하시겠습니까?');">로그아웃</a>
                            </div>
                            <div class="menu_btn" id="kakao_logoutBtn">
                                <a href="#" onclick="logoutFromKakao()" class="btn_1 d-none d-sm-block">sns 로그아웃</a>
                            </div>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${empty sessionScope.userid && empty param.kakaoUserId}">
                            <div class="menu_btn" id="loginBtn"
                                 test="${empty sessionScope.userid && empty param.kakaoUserId }">
                                <a href="${pageContext.request.contextPath}/login/loginview.jsp"
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
                        <c:when test="${empty sessionScope.userid &&empty param.kakaoUserId}">
                            <div class="menu_btn" id="orderBtn">
                                <a href="${pageContext.request.contextPath}/menu/order.jsp"
                                   class="btn_1 d-none d-sm-block">주문하기</a>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="menu_btn" id="orderCheckbtn">
                                <a href="${pageContext.request.contextPath}/menu/review.jsp"
                                   class="btn_1 d-none d-sm-block">주문내역</a>
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
                        <h2>주문 창</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

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
            <div class="col-lg-12">
                <div class="tab-content" id="myTabContent">
                    <h3>
                        <label style="display: block; text-align: center;">
                            <strong>메인 메뉴</strong>
                        </label>
                    </h3>
                    <br/>
                    <div class="tab-pane fade show active single-member" id="Main" role="tabpanel"
                         aria-labelledby="Main-tab">
                        <div class="row">
                            <div class="col-sm-6 col-lg-6">
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/bulgogi.png" class="mr-3"
                                         alt="...">
                                    <div class="media-body align-self-center">
                                        <h3 id="main_menu1_name">불고기</h3>
                                        <p>프리미엄 불고기 토핑이 듬뿍</p>
                                        <div class="size-control">
                                            <label class="genric-btn danger circle">
                                                <input type=radio name="main_menu1" data-size="l"
                                                       onclick="updatePrice('main_menu1', 'l')">
                                                L (￦<span id=main_menu1_price_l>22,500</span>)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type=radio name="main_menu1" data-size="xl"
                                                       onclick="updatePrice('main_menu1', 'xl')">
                                                XL (￦<span id=main_menu1_price_xl>25,500</span>)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu1_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu1', 'decrease')">-
                                                </button>
                                                <span id="main_menu1_quantity">0</span>
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu1', 'increase')">+
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/quatro.png" class="mr-3"
                                         alt="...">
                                    <div class="media-body align-self-center">
                                        <h3 id="main_menu2_name">콰트로</h3>
                                        <p>4가지 피자를 한 판에</p>
                                        <div class="size-control">
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu2" data-size="l"
                                                       onclick="updatePrice('main_menu2', 'l')">
                                                L (￦<span id=main_menu2_price_l>29,500</span>)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu2" data-size="xl"
                                                       onclick="updatePrice('main_menu2', 'xl')">
                                                XL (￦<span id=main_menu2_price_xl>32,500</span>)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu2_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu2', 'decrease')">-
                                                </button>
                                                <span id="main_menu2_quantity">0</span>
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu2', 'increase')">+
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/seafood.png" class="mr-3"
                                         alt="...">
                                    <div class="media-body align-self-center">
                                        <h3 id="main_menu3_name">씨푸드</h3>
                                        <p>바다와 육지의 대왕이 하나로</p>
                                        <div class="size-control">
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu3" data-size="l"
                                                       onclick="updatePrice('main_menu3', 'l')">
                                                L (￦<span id=main_menu3_price_l>30,000</span>)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu3" data-size="xl"
                                                       onclick="updatePrice('main_menu3', 'xl')">
                                                XL (￦<span id=main_menu3_price_xl>33,000</span>)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu3_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu3', 'decrease')">-
                                                </button>
                                                <span id="main_menu3_quantity">0</span>
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu3', 'increase')">+
                                                </button>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-6">
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/pepperoni.png"
                                         class="mr-3" alt="...">
                                    <div class="media-body align-self-center">
                                        <h3 id="main_menu4_name">페퍼로니</h3>
                                        <p>짭짤한 풍미의 페퍼로니, 파마산+로마노 치즈가 토핑</p>
                                        <div class="size-control">
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu4" data-size="l"
                                                       onclick="updatePrice('main_menu4', 'l')">
                                                L (￦<span id=main_menu4_price_l>18,500</span>)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu4" data-size="xl"
                                                       onclick="updatePrice('main_menu4', 'xl')">
                                                XL (￦<span id=main_menu4_price_xl>21,500</span>)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu4_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu4', 'decrease')">-
                                                </button>
                                                <span id="main_menu4_quantity">0</span>
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu4', 'increase')">+
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/potato.png" class="mr-3"
                                         alt="...">
                                    <div class="media-body align-self-center">
                                        <h3 id="main_menu5_name">포테이토</h3>
                                        <p>신선한 감자와 고소한 치즈의 환상 조합</p>
                                        <div class="size-control">
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu5" data-size="l"
                                                       onclick="updatePrice('main_menu5', 'l')">
                                                L (￦<span id=main_menu5_price_l>20,500</span>)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu5" data-size="xl"
                                                       onclick="updatePrice('main_menu5', 'xl')">
                                                XL (￦<span id=main_menu5_price_xl>23,500</span>)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu5_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu5', 'decrease')">-
                                                </button>
                                                <span id="main_menu5_quantity">0</span>
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu5', 'increase')">+
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/steak.png" class="mr-3"
                                         alt="...">
                                    <div class="media-body align-self-center">
                                        <h3 id="main_menu6_name">스테이크</h3>
                                        <p>카우보이들이 즐겨 먹던 정통 그릴드 비프 스테이크의 재현</p>
                                        <div class="size-control">
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu6" data-size="l"
                                                       onclick="updatePrice('main_menu6', 'l')">
                                                L (￦<span id=main_menu6_price_l>28,000</span>)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu6" data-size="xl"
                                                       onclick="updatePrice('main_menu6', 'xl')">
                                                XL (￦<span id=main_menu6_price_xl>31,000</span>)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu6_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu6', 'decrease')">-
                                                </button>
                                                <span id="main_menu6_quantity">0</span>
                                                <button class="quantity-button"
                                                        onclick="updateMenuItemQuantity('main_menu6', 'increase')">+
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr/>
                    <h3>
                        <label style="display: block; text-align: center;">
                            <strong>사이드 메뉴</strong>
                        </label>
                    </h3>
                    <br/>
                    <div class="row">
                        <div class="col-sm-6 col-lg-6">
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/cheese_ball.png" class="mr-3"
                                     alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu1_name">치즈볼</h3>
                                    <p>맥앤치즈 필링에 자꾸만 손이 가는 매력적인 맛</p>
                                    <h5>￦<span id="side_menu1_price">6,900</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu1', 'decrease')">-
                                            </button>
                                            <span id="side_menu1_quantity">0</span>
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu1', 'increase')">+
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/hot_wing.png" class="mr-3"
                                     alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu2_name">핫 윙</h3>
                                    <p>웨스턴 스타일로 매콤하게</p>
                                    <h5>￦<span id="side_menu2_price">9,800</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu2', 'decrease')">-
                                            </button>
                                            <span id="side_menu2_quantity">0</span>
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu2', 'increase')">+
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/carbonara.png" class="mr-3"
                                     alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu3_name">까르보나라</h3>
                                    <p>짭짤한 베이컨과 풍미 있는 까르보나라 소스가 어우러진 파스타</p>
                                    <h5>￦<span id="side_menu3_price">9,800</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu3', 'decrease')">-
                                            </button>
                                            <span id="side_menu3_quantity">0</span>
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu3', 'increase')">+
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-6">
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/bolognese.png" class="mr-3"
                                     alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu4_name">볼로네제 파스타</h3>
                                    <p>정통 이탈리안 볼로네즈 소스 베이스에 달달한 페타 크림 치즈를 덮어 풍미를 높이다</p>
                                    <h5>￦<span id="side_menu4_price">9,800</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu4', 'decrease')">-
                                            </button>
                                            <span id="side_menu4_quantity">0</span>
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu4', 'increase')">+
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/coleslaw.png" class="mr-3"
                                     alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu5_name">코울슬로</h3>
                                    <p>아삭한 양배추와 각종 야채를 소스와 버무려 새콤달콤한 맛이 가득</p>
                                    <h5>￦<span id="side_menu5_price">2,400</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu5', 'decrease')">-
                                            </button>
                                            <span id="side_menu5_quantity">0</span>
                                            <button class="quantity-button"
                                                    onclick="updateMenuItemQuantity('side_menu5', 'increase')">+
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr/>
                <h3>
                    <label style="display: block; text-align: center;">
                        <strong>음료</strong>
                    </label>
                </h3>
                <br/>
                <div class="row">
                    <div class="col-sm-6 col-lg-6">
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/coke.png" class="mr-3" alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu1_name">콜라 1.25L</h3>
                                <h5>￦<span id="drink_menu1_price">2,300</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu1', 'decrease')">-
                                        </button>
                                        <span id="drink_menu1_quantity">0</span>
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu1', 'increase')">+
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/zerocoke.png" class="mr-3"
                                 alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu2_name">제로 콜라 1.25L</h3>
                                <h5>￦<span id="drink_menu2_price">2,300</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu2', 'decrease')">-
                                        </button>
                                        <span id="drink_menu2_quantity">0</span>
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu2', 'increase')">+
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/sprite.png" class="mr-3"
                                 alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu3_name">스프라이트 1.5L</h3>
                                <h5>￦<span id="drink_menu3_price">2,400</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu3', 'decrease')">-
                                        </button>
                                        <span id="drink_menu3_quantity">0</span>
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu3', 'increase')">+
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-6">
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/coke.png" class="mr-3" alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu4_name">콜라 500ml</h3>
                                <h5>￦<span id="drink_menu4_price">1,700</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu4', 'decrease')">-
                                        </button>
                                        <span id="drink_menu4_quantity">0</span>
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu4', 'increase')">+
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/zerocoke.png" class="mr-3"
                                 alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu5_name">제로 콜라 500ml</h3>
                                <h5>￦<span id="drink_menu5_price">1,700</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu5', 'decrease')">-
                                        </button>
                                        <span id="drink_menu5_quantity">0</span>
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu5', 'increase')">+
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/sprite.png" class="mr-3"
                                 alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu6_name">스프라이트 500ml</h3>
                                <h5>￦<span id="drink_menu6_price">1,700</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu6', 'decrease')">-
                                        </button>
                                        <span id="drink_menu6_quantity">0</span>
                                        <button class="quantity-button"
                                                onclick="updateMenuItemQuantity('drink_menu6', 'increase')">+
                                        </button>
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

<div style="text-align: center;" class="gray_bg">
    <button class="button button-contactForm" id="popup_open_btn" onclick="openModal('my_modal')">주문</button>

</div>

<div id="my_modal" style="display: none;">

    <!-- 주문 확인 창 start -->
    <div class="container"
         style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; height: 400px; overflow-y: auto;">
        <div id="updateOrderConfirmation" style="width: 250px; height: 100%;">
            <!-- 메인 메뉴 -->
            메인 메뉴
            <div id="main_menu_confirmation">
                <!-- 메뉴 이름, 수량, 가격을 표시할 공간 -->
            </div>

            <!-- 사이드 메뉴 -->
            <hr/>
            사이드 메뉴
            <div id="side_menu_confirmation">
                <!-- 메뉴 이름, 수량, 가격을 표시할 공간 -->
            </div>

            <!-- 음료 메뉴 -->
            <hr/>
            음료
            <div id="drink_menu_confirmation">
                <!-- 메뉴 이름, 수량, 가격을 표시할 공간 -->
            </div>
            <hr/>
            총 가격
            <div id="total_price_confirmation" align="right">
                총 가격: ￦<span id="total_price">0</span>
            </div>
        </div>
    </div>
    <div style="display: flex; justify-content: space-between;">
<<<<<<< HEAD
<%--        <a class="modal_order_btn" style="text-align: left;" onclick="placeOrder()">주문하기</a>--%>
    <a class="modal_order_btn" style="text-align: left; cursor: pointer;" onclick="sendOrderToServer()">주문하기</a>
=======
        <%--        <a class="modal_order_btn" style="text-align: left;" onclick="placeOrder()">주문하기</a>--%>
        <a class="modal_order_btn" style="text-align: left; cursor: pointer;" onclick="sendOrderToServer()">주문하기</a>
>>>>>>> branch 'main' of https://github.com/Let-s-Git-it/main.git

        <a class="modal_close_btn" style="text-align: right;">닫기</a>
    </div>
</div>


<!-- jquery plugins here-->
<!-- jquery -->
<script src="${pageContext.request.contextPath}/js/jquery-1.12.1.min.js"></script>
<!-- popper js -->
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<!-- bootstrap js -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<!-- easing js -->
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js"></script>
<!-- swiper js -->
<script src="${pageContext.request.contextPath}/js/swiper.min.js"></script>
<!-- swiper js -->
<script src="${pageContext.request.contextPath}/js/masonry.pkgd.js"></script>
<!-- particles js -->
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<!-- swiper js -->
<script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/js/gijgo.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
<!-- custom js -->
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
<!-- order js -->
<script src="${pageContext.request.contextPath}/js/order.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.4.0/kakao.min.js"
<<<<<<< HEAD
            integrity="sha384-mXVrIX2T/Kszp6Z0aEWaA8Nm7J6/ZeWXbL8UpGRjKwWe56Srd/iyNmWMBhcItAjH"
            crossorigin="anonymous"></script>
         <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
         <script src="${pageContext.request.contextPath}/login/kakao.js"></script>
=======
        integrity="sha384-mXVrIX2T/Kszp6Z0aEWaA8Nm7J6/ZeWXbL8UpGRjKwWe56Srd/iyNmWMBhcItAjH"
        crossorigin="anonymous"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.4.0/kakao.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="${pageContext.request.contextPath}/login/kakao.js"></script>
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.4.0/kakao.min.js"></script>
>>>>>>> branch 'main' of https://github.com/Let-s-Git-it/main.git
</body>
</html>