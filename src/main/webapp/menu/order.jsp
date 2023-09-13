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
                                <a class="nav-link" href="${pageContext.request.contextPath}/menu/food_menu.jsp">메뉴</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/base/chefs.jsp">Chefs</a>
                            </li>
                            <li class="nav-item">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/menu/review.jsp">리뷰</a>
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
                                        <p>프리미엄 불고기 토핑이 듬뿍</p>
                                        <div class="size-control" >
                                            <label class="genric-btn danger circle">
                                                <input type=radio name="main_menu1" data-size="l" onclick="updatePrice('main_menu1', 'l')">
                                                L (￦<span id=main_menu1_price_l>22,500</span>)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type=radio name="main_menu1" data-size="xl" onclick="updatePrice('main_menu1', 'xl')">
                                                XL (￦<span id=main_menu1_price_xl>25,500</span>)
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
                                        <p>4가지 피자를 한 판에</p>
                                        <div class="size-control" >
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu2" data-size="l" onclick="updatePrice('main_menu2', 'l')"> 
                                                L (￦<span id=main_menu2_price_l>29,500</span>)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu2" data-size="xl" onclick="updatePrice('main_menu2', 'xl')">
                                                 XL (￦<span id=main_menu2_price_xl>32,500</span>)
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
                                        <h3 id="main_menu3_name">씨푸드</h3>
                                        <p>바다와 육지의 대왕이 하나로</p>
                                        <div class="size-control" >
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu3" onclick="updatePrice('main_menu3', 'l')"> 
                                                L (￦<span id=main_menu3_price_l>30,000</span>)
                                            </label>
                                            <label class="genric-btn danger circle">
                                                <input type="radio" name="main_menu3" onclick="updatePrice('main_menu3', 'xl')"> 
                                                XL (￦<span id=main_menu3_price_xl>33,000</span>)
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
                                        <h3 id="main_menu4_name">페퍼로니</h3>
                                        <p>짭짤한 풍미의 페퍼로니, 파마산+로마노 치즈가 토핑</p>
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
                                        <h3 id="main_menu5_name">포테이토</h3>
                                        <p>신선한 감자와 고소한 치즈의 환상 조합</p>
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
                                        <h3 id="main_menu6_name">스테이크</h3>
                                        <p>카우보이들이 즐겨 먹던 정통 그릴드 비프 스테이크의 재현</p>
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
                                    <p>맥앤치즈 필링에 자꾸만 손이 가는 매력적인 맛</p>
                                    <h5>￦<span id="side_menu1_price">6,900</span></h5>
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
                                    <p>웨스턴 스타일로 매콤하게</p>
                                    <h5>￦<span id="side_menu2_price">9,800</span></h5>
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
                                    <p>짭짤한 베이컨과 풍미 있는 까르보나라 소스가 어우러진 파스타</p>
                                    <h5>￦<span id="side_menu3_price">9,800</span></h5>
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
                                    <p>정통 이탈리안 볼로네즈 소스 베이스에 달달한 페타 크림 치즈를 덮어 풍미를 높이다</p>
                                    <h5>￦<span id="side_menu4_price">9,800</span></h5>
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
                                    <p>아삭한 양배추와 각종 야채를 소스와 버무려 새콤달콤한 맛이 가득</p>
                                    <h5>￦<span id="side_menu5_price">2,400</span></h5>
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
                                <h5>￦<span id="drink_menu1_price">2,300</span></h5>
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
                                <h5>￦<span id="drink_menu2_price">2,300</span></h5>
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
                                <h5>￦<span id="drink_menu3_price">2,400</span></h5>
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
                                <h5>￦<span id="drink_menu4_price">1,700</span></h5>
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
                                <h5>￦<span id="drink_menu5_price">1,700</span></h5>
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
                                <h5>￦<span id="drink_menu6_price">1,700</span></h5>
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
                 
                 
             <!--     주문 확인 창 start
    <div class="container" style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; height: 400px; overflow-y: auto;">
        <div id="updateOrderConfirmation" style="width: 100%; height: 400px;">
            메인 메뉴
            메인 메뉴
            <div id="main_menu_confirmation">
                메뉴 이름, 수량, 가격을 표시할 공간
            </div>

            사이드 메뉴
            <hr/>
            사이드 메뉴
            <div id="side_menu_confirmation">
                메뉴 이름, 수량, 가격을 표시할 공간
            </div>

            음료 메뉴
            <hr/>
            음료
            <div id="drink_menu_confirmation">
                메뉴 이름, 수량, 가격을 표시할 공간
            </div>
			<hr/>
            총 가격
            <div id="total_price_confirmation" align = "right">
                총 가격: ￦<span id="total_price">0</span>
            </div>
        </div>
        </div> -->
                 



<!--             <a type="button" class="btn_quick_order" id="orderButton" data-spoid="2892"  -->
<!--                  href="#pop_info_1" class="btn_open"   data-productid="-1" data-salesprice="0">주문</a> -->
<!--  주문 확인 창 end -->


        <button  class="btn_quick_order" id="popup_open_btn" data-spoid="2892" class="btn_open"   data-productid="-1" data-salesprice="0">주문</button>


		<div id="my_modal">
            
                <!-- 주문 확인 창 start -->
    <div class="container" style="display: flex; flex-direction: column; justify-content: flex-start; align-items: flex-start; height: 400px; overflow-y: auto;">
        <div id="updateOrderConfirmation" style="width: 100%; height: 400px;">
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
            <div id="total_price_confirmation" align = "right">
                총 가격: ￦<span id="total_price">0</span>
            </div>
        </div>
        </div>
           
           
            <a class="modal_close_btn">닫기</a>
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
<script>

	//메인 메뉴 가격 반영
	function updatePrice(menuId, size) {
    // 해당 메뉴 아이템의 가격을 가져옵니다.
    var priceElement = document.getElementById(menuId + "_price_" + size);
    var price = priceElement.innerText;
    
    // 해당 메뉴 사이즈 선택
    var sizeElement = document.querySelector('input[name="' + menuId + '"]:checked');
    var selectedSize = sizeElement ? sizeElement.getAttribute('data-size') : null;

    // 사이즈 선택 여부 판단 이후 업데이트 실행 여부 판단
    if (selectedSize === null) {
  		alert("사이즈를 선택해 주세요.");
	} else {
  	// 선택된 사이즈가 있을 때 주문 처리 코드를 작성합니다.
    // 가격을 main_menu1_price에 업데이트합니다.
    document.getElementById(menuId + "_price").innerText = price;
	}

    // 주문 확인 창을 업데이트합니다.
    updateOrderConfirmation();
	}


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
        var menuPrice = document.getElementById(menuId + "_price").innerText;
        menuPrice = menuPrice.replace(",", "");
        menuPrice = parseInt(menuPrice);
        var totalPrice = quantity * menuPrice;
        var menusize = document.getElementById(menuId + "_name").innerText;

        // 해당 메뉴의 정보를 주문 확인 창에 업데이트
        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + " x " + quantity + " 가격: ￦" + totalPrice;


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
        var menuPrice = document.getElementById(menuId + "_price").innerText;
        menuPrice = menuPrice.replace(",", "");
        menuPrice = parseInt(menuPrice);
        var totalPrice = quantity * menuPrice;
        // 해당 메뉴의 정보를 주문 확인 창에 업데이트
        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + " x " + quantity + " 가격: ￦" + totalPrice;
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
        var menuPrice = document.getElementById(menuId + "_price").innerText;
        menuPrice = menuPrice.replace(",", "");
        menuPrice = parseInt(menuPrice);
        var totalPrice = quantity * menuPrice;
        // 해당 메뉴의 정보를 주문 확인 창에 업데이트
        var confirmationDiv = document.createElement('div');
        confirmationDiv.innerHTML = menuName + " x " + quantity + " 가격: ￦" + totalPrice;

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
//   window.addEventListener('load', updateOrderConfirmation);
  
  
  
  
  function modal(id) {
      var zIndex = 9999;
      var modal = document.getElementById(id);

      // 모달 div 뒤에 희끄무레한 레이어
      var bg = document.createElement('div');
      bg.setStyle({
          position: 'fixed',
          zIndex: zIndex,
          left: '0px',
          top: '0px',
          width: '100%',
          height: '100%',
          overflow: 'auto',
          // 레이어 색갈은 여기서 바꾸면 됨
          backgroundColor: 'rgba(0,0,0,0.4)'
      });
      document.body.append(bg);

      // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
      modal.querySelector('.modal_close_btn').addEventListener('click', function() {
          bg.remove();
          modal.style.display = 'none';
      });

      modal.setStyle({
          position: 'fixed',
          display: 'block',
          boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

          // 시꺼먼 레이어 보다 한칸 위에 보이기
          zIndex: zIndex + 1,

          // div center 정렬
          top: '50%',
          left: '50%',
          transform: 'translate(-50%, -50%)',
          msTransform: 'translate(-50%, -50%)',
          webkitTransform: 'translate(-50%, -50%)',
          backgroundColor: '#ffffff'
      });
  }

  // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
  Element.prototype.setStyle = function(styles) {
      for (var k in styles) this.style[k] = styles[k];
      return this;
  };

  document.getElementById('popup_open_btn').addEventListener('click', function() {
      // 모달창 띄우기
      modal('my_modal');
  });
</script>

</body>
</html>