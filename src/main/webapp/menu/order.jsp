<%@ page import="com.pizzaorder.web.user.dao.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Dingo</title>
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
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/base/index.jsp"> <img src="${pageContext.request.contextPath}/img/logo.png" alt="logo"> </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse main-menu-item justify-content-end"
                         id="navbarSupportedContent">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/base/index.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="food_menu.jsp">메뉴</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/base/chefs.jsp">Chefs</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/blog.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Blog
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/blog.jsp">Blog</a>
                                    <a class="dropdown-item" href="review.jsp">Single blog</a>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/elements.jsp">Elements</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/mapping.jsp">Contact</a>
                            </li>
                        </ul>
                    </div>
                    <div class="menu_btn">
                        <a href="${pageContext.request.contextPath}/join/joinview.jsp" class="btn_1 d-none d-sm-block">회원가입</a>
                    </div>   <div class="menu_btn">
                    <a href="${pageContext.request.contextPath}/login/loginview.jsp" class="btn_1 d-none d-sm-block">로그인</a>
                </div>   <div class="menu_btn">
                    <a href="${pageContext.request.contextPath}/menu/order.jsp" class="btn_1 d-none d-sm-block">주문하기</a>
                </div>
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
                        <label style="display: block; text-align: center;" >
                            <strong>메인 메뉴</strong>
                        </label>
                    </h3>
                    <br/>
                    <div class="tab-pane fade show active single-member" id="Main" role="tabpanel"
                         aria-labelledby="Main-tab">
                        <div class="row">
                            <div class="col-sm-6 col-lg-6">
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/bulgogi.png" class="mr-3" alt="...">
                                    <div class="media-body align-self-center">
                                        <h3 id="main_menu1_name">불고기</h3>
                                        <p>They're wherein heaven seed hath nothing</p>
                                        <div class="size-control" >
                                            <label class="genric-btn danger circle">
                                                <input type=radio name="main_menu1" id="size_l"onchange="updatePrice(this.name, 'l')">
                                                L (￦22,500)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type=radio name="main_menu1" id="size_xl" onchange="updatePrice(this.name, 'xl')">
                                                XL (￦25,500)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu1_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu1')">-</button>
                                                <span id="main_menu1_quantity">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu1')">+</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/quatro.png" class="mr-3" alt="...">
                                    <div class="media-body align-self-center">
                                        <h3 id="main_menu2_name">콰트로</h3>
                                        <p>They're wherein heaven seed hath nothing</p>
                                        <div class="size-control" >
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu2" id="size_l" onchange="updatePrice(this.name, 'l')"> L (￦29,500)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu2" id="size_xl" onchange="updatePrice(this.name, 'xl')"> XL (￦32,500)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu2_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu2')">-</button>
                                                <span id="main_menu2_quantity">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu2')">+</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/seafood.png" class="mr-3" alt="...">
                                    <div class="media-body align-self-center">
                                        <h3>씨푸드</h3>
                                        <p>They're wherein heaven seed hath nothing</p>
                                        <div class="size-control" >
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu3" id="size_l" onchange="updatePrice(this.name, 'l')"> L (￦30,000)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu3" id="size_xl" onchange="updatePrice(this.name, 'xl')"> XL (￦33,000)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu3_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu3')">-</button>
                                                <span id="main_menu3_quantity">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu3')">+</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-6">
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/pepperoni.png" class="mr-3" alt="...">
                                    <div class="media-body align-self-center">
                                        <h3>페퍼로니</h3>
                                        <p>They're wherein heaven seed hath nothing</p>
                                        <div class="size-control" >
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu4" id="size_l" onchange="updatePrice(this.name, 'l')"> L (￦18,500)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu4" id="size_xl" onchange="updatePrice(this.name, 'xl')"> XL (￦21,500)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu4_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu4')">-</button>
                                                <span id="main_menu4_quantity">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu4')">+</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/potato.png" class="mr-3" alt="...">
                                    <div class="media-body align-self-center">
                                        <h3>포테이토</h3>
                                        <p>They're wherein heaven seed hath nothing</p>
                                        <div class="size-control" >
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu5" id="size_l" onchange="updatePrice(this.name, 'l')"> L (￦20,500)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu5" id="size_xl" onchange="updatePrice(this.name, 'xl')"> XL (￦23,500)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu5_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu5')">-</button>
                                                <span id="main_menu5_quantity">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu5')">+</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single_food_item media">
                                    <img src="${pageContext.request.contextPath}/img/food_menu/steak.png" class="mr-3" alt="...">
                                    <div class="media-body align-self-center">
                                        <h3>스테이크</h3>
                                        <p>They're wherein heaven seed hath nothing</p>
                                        <div class="size-control" >
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu6" id="size_l" onchange="updatePrice(this.name, 'l')"> L (￦28,000)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu6" id="size_xl" onchange="updatePrice(this.name, 'xl')"> XL (￦31,000)
                                            </label>
                                        </div>
                                        <h5>￦<span id="main_menu6_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu6')">-</button>
                                                <span id="main_menu6_quantity">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu6')">+</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <hr/>
                    <h3>
                        <label style="display: block; text-align: center;" >
                            <strong>사이드 메뉴</strong>
                        </label>
                    </h3>
                    <br/>
                    <div class="row">
                        <div class="col-sm-6 col-lg-6">
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/cheese_ball.png" class="mr-3" alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu1_name">치즈볼</h3>
                                    <p>They're wherein heaven seed hath nothing</p>
                                    <h5>￦<span id="side_menu1_price">6900</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button" onclick="decreaseQuantity('side_menu1')">-</button>
                                            <span id="side_menu1_quantity">0</span>
                                            <button class="quantity-button" onclick="increaseQuantity('side_menu1')">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/hot_wing.png" class="mr-3" alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu2_name">핫 윙</h3>
                                    <p>They're wherein heaven seed hath nothing</p>
                                    <h5>￦<span id="side_menu2_price">9800</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button" onclick="decreaseQuantity('side_menu2')">-</button>
                                            <span id="side_menu2_quantity">0</span>
                                            <button class="quantity-button" onclick="increaseQuantity('side_menu2')">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/carbonara.png" class="mr-3" alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu3_name">까르보나라</h3>
                                    <p>They're wherein heaven seed hath nothing</p>
                                    <h5>￦<span id="side_menu3_price">9800</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button" onclick="decreaseQuantity('side_menu3')">-</button>
                                            <span id="side_menu3_quantity">0</span>
                                            <button class="quantity-button" onclick="increaseQuantity('side_menu3')">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-6">
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/bolognese.png" class="mr-3" alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu4_name">볼로네제 파스타</h3>
                                    <p>They're wherein heaven seed hath nothing</p>
                                    <h5>￦<span id="side_menu4_price">9800</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button" onclick="decreaseQuantity('side_menu4')">-</button>
                                            <span id="side_menu4_quantity">0</span>
                                            <button class="quantity-button" onclick="increaseQuantity('side_menu4')">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single_food_item media">
                                <img src="${pageContext.request.contextPath}/img/food_menu/coleslaw.png" class="mr-3" alt="...">
                                <div class="media-body align-self-center">
                                    <h3 id="side_menu5_name">코울슬로</h3>
                                    <p>They're wherein heaven seed hath nothing</p>
                                    <h5>￦<span id="side_menu5_price">2400</span></h5>
                                    <div class="product">
                                        <div class="quantity-control">
                                            <button class="quantity-button" onclick="decreaseQuantity('side_menu5')">-</button>
                                            <span id="side_menu5_quantity">0</span>
                                            <button class="quantity-button" onclick="increaseQuantity('side_menu5')">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr/>
                <h3>
                    <label style="display: block; text-align: center;" >
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
                                <h5>￦<span id="drink_menu1_price">2300</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button" onclick="decreaseQuantity('drink_menu1')">-</button>
                                        <span id="drink_menu1_quantity">0</span>
                                        <button class="quantity-button" onclick="increaseQuantity('drink_menu1')">+</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/zerocoke.png" class="mr-3" alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu2_name">제로 콜라 1.25L</h3>
                                <h5>￦<span id="drink_menu2_price">2300</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button" onclick="decreaseQuantity('drink_menu2')">-</button>
                                        <span id="drink_menu2_quantity">0</span>
                                        <button class="quantity-button" onclick="increaseQuantity('drink_menu2')">+</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/sprite.png" class="mr-3" alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu3_name">스프라이트 1.5L</h3>
                                <h5>￦<span id="drink_menu3_price">2400</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button" onclick="decreaseQuantity('drink_menu3')">-</button>
                                        <span id="drink_menu3_quantity">0</span>
                                        <button class="quantity-button" onclick="increaseQuantity('drink_menu3')">+</button>
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
                                <h5>￦<span id="drink_menu4_price">1700</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button" onclick="decreaseQuantity('drink_menu4')">-</button>
                                        <span id="drink_menu4_quantity">0</span>
                                        <button class="quantity-button" onclick="increaseQuantity('drink_menu4')">+</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/zerocoke.png" class="mr-3" alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu5_name">제로 콜라 500ml</h3>
                                <h5>￦<span id="drink_menu5_price">1700</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button" onclick="decreaseQuantity('drink_menu5')">-</button>
                                        <span id="drink_menu5_quantity">0</span>
                                        <button class="quantity-button" onclick="increaseQuantity('drink_menu5')">+</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_food_item media">
                            <img src="${pageContext.request.contextPath}/img/food_menu/sprite.png" class="mr-3" alt="...">
                            <div class="media-body align-self-center">
                                <h3 id="drink_menu6_name">스프라이트 500ml</h3>
                                <h5>￦<span id="drink_menu6_price">1700</span></h5>
                                <div class="product">
                                    <div class="quantity-control">
                                        <button class="quantity-button" onclick="decreaseQuantity('drink_menu6')">-</button>
                                        <span id="drink_menu6_quantity">0</span>
                                        <button class="quantity-button" onclick="increaseQuantity('drink_menu6')">+</button>
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



<!-- 주문 확인 창 start -->
<form action="">
    <div class="container" style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; height: 400px; overflow-y: auto;">
        <div id="updateOrderConfirmation" style="width: 100%; height: 400px;">
            <!-- 메인 메뉴 -->
            메인 메뉴
            <hr/>
            <div id="main_menu_confirmation">
                <!-- 메뉴 이름, 수량, 가격을 표시할 공간 -->
            </div>

            <!-- 사이드 메뉴 -->
            사이드 메뉴
            <hr/>
            <div id="side_menu_confirmation">
                <!-- 메뉴 이름, 수량, 가격을 표시할 공간 -->
            </div>

            <!-- 음료 메뉴 -->
            음료
            <hr/>
            <div id="drink_menu_confirmation">
                <!-- 메뉴 이름, 수량, 가격을 표시할 공간 -->
            </div>

            <!-- 총 가격 -->
            <div id="total_price_confirmation">
                총 가격: ￦<span id="total_price">0</span>
            </div>
        </div>
        <div>
            <button type="button" class="btn_quick_order" id="orderButton" data-spoid="2892"
                    data-productid="-1" data-salesprice="0" onclick="redirectToPage()">주문</button>
        </div>
    </div>
</form>

<!--  주문 확인 창 end -->



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
<script>


  //     // 아직 미구현, 좀 더 손봐야함니다.
  //     function updatePrice(menuId, size) {
  //         var priceElement = document.getElementById(menuId + "_price");
  //         var quantityElement = document.getElementById(menuId + "_quantity");
  //         var labelElement = document.querySelector(`input[name="${menuId}"]:checked + label`);

  //         // 현재 선택한 사이즈에 따른 가격 설정
  //         var priceText = labelElement.textContent.trim();
  //         var price = parseFloat(priceText.match(/(\d+)/)[0]); // 정규식을 사용하여 숫자 추출
  //         priceElement.innerText = price;

  //         // 수량 초기화
  //         var initialQuantity = 0;
  //         quantityElement.innerText = initialQuantity;
  //         updateOrderConfirmation(); // 주문 확인 창 업데이트
  //     }





  // 증가 함수
  function increaseQuantity(menuId) {
    var quantityElement = document.getElementById(menuId + "_quantity");
    var currentQuantity = parseInt(quantityElement.innerText);
    quantityElement.innerText = currentQuantity + 1;

    updateOrderConfirmation();
  }
  // 감소 함수
  function decreaseQuantity(menuId) {
    var quantityElement = document.getElementById(menuId + "_quantity");
    var currentQuantity = parseInt(quantityElement.innerText);

    if (currentQuantity > 0) {
      quantityElement.innerText = currentQuantity - 1;

      updateOrderConfirmation();
    }
  }





  // 주문 확인 창 업데이트 함수
  function updateOrderConfirmation() {
    var total = 0;

    // 주문 확인 창을 초기화합니다.
    var mainMenuConfirmationDiv = document.getElementById('main_menu_confirmation');
    mainMenuConfirmationDiv.innerHTML = '';

    var sideMenuConfirmationDiv = document.getElementById('side_menu_confirmation');
    sideMenuConfirmationDiv.innerHTML = '';

    var drinkMenuConfirmationDiv = document.getElementById('drink_menu_confirmation');
    drinkMenuConfirmationDiv.innerHTML = '';

    // 메인 메뉴 업데이트
    var mainMenuIds = ['main_menu1', 'main_menu2', 'main_menu3', 'main_menu4', 'main_menu5', 'main_menu6'];
    for (var i = 0; i < mainMenuIds.length; i++) {
      var menuId = mainMenuIds[i];
      var quantityElement = document.getElementById(menuId + "_quantity");
      var quantity = parseInt(quantityElement.innerText);

      // 수량이 0이 아닌 경우에만 주문 확인 창에 출력
      if (quantity > 0) {
        var menuName = document.getElementById(menuId + "_name").innerText;
        var menuPrice = parseInt(document.getElementById(menuId + "_price").innerText);
        var totalPrice = quantity * menuPrice;

        // 해당 메뉴의 정보를 주문 확인 창에 업데이트
        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + "x" + quantity + " 가격: ￦" + totalPrice;


        // 업데이트한 내용을 주문 확인 창에 추가
        mainMenuConfirmationDiv.appendChild(confirmationDiv);

        // 총 가격 업데이트
        total += totalPrice;
      }
    }

    // 사이드 메뉴 업데이트 (사이드 메뉴 아이디들을 추가하십시오)
    var sideMenuIds = ['side_menu1', 'side_menu2', 'side_menu3', 'side_menu4', 'side_menu5'];
    for (var i = 0; i < sideMenuIds.length; i++) {
      var menuId = sideMenuIds[i];
      var quantityElement = document.getElementById(menuId + "_quantity");
      var quantity = parseInt(quantityElement.innerText);
      // 수량이 0이 아닌 경우에만 주문 확인 창에 출력
      if (quantity > 0) {
        var menuName = document.getElementById(menuId + "_name").innerText;
        var menuPrice = parseInt(document.getElementById(menuId + "_price").innerText);
        var totalPrice = quantity * menuPrice;
        // 해당 메뉴의 정보를 주문 확인 창에 업데이트
        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + "x" + quantity + " 가격: ￦" + totalPrice;
        // 업데이트한 내용을 주문 확인 창에 추가
        sideMenuConfirmationDiv.appendChild(confirmationDiv);

        // 총 가격 업데이트
        total += totalPrice;
      }
    }

    // 음료 메뉴 업데이트 (음료 메뉴 아이디들을 추가하십시오)
    var drinkMenuIds = ['drink_menu1', 'drink_menu2', 'drink_menu3', 'drink_menu4', 'drink_menu5', 'drink_menu6'];
    for (var i = 0; i < drinkMenuIds.length; i++) {
      var menuId = drinkMenuIds[i];
      var quantityElement = document.getElementById(menuId + "_quantity");
      var quantity = parseInt(quantityElement.innerText);

      // 수량이 0이 아닌 경우에만 주문 확인 창에 출력
      if (quantity > 0) {
        var menuName = document.getElementById(menuId + "_name").innerText;
        var menuPrice = parseInt(document.getElementById(menuId + "_price").innerText);
        var totalPrice = quantity * menuPrice;
        // 해당 메뉴의 정보를 주문 확인 창에 업데이트
        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + "x" + quantity + " 가격: ￦" + totalPrice;

        // 업데이트한 내용을 주문 확인 창에 추가
        drinkMenuConfirmationDiv.appendChild(confirmationDiv);
        // 총 가격 업데이트
        total += totalPrice;
      }
    }

    // 총 가격 업데이트
    var totalPriceElement = document.getElementById("total_price");
    totalPriceElement.innerText = total;
  }



  // 페이지 로드 시 주문 확인 창을 업데이트합니다.
  window.addEventListener('load', updateOrderConfirmation);
</script>

</body>
</html>