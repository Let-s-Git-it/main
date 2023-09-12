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
                            <h2>ORDER</h2>
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
                                    <div class="single_food_item media" id="main_menu1">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/bulgogi.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>불고기</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <div class="size-control" >
									             <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu1" id="size_x" onchange="updatePrice('main_menu1', 'l')"> L (￦22,500)
									            </label>
									            <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu1" id="size_l" onchange="updatePrice('main_menu1', 'xl')"> XL (￦25,500)
									            </label>
									        </div>
									        <h5>￦<span id="main_menu1_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu1')">-</button>
                                                <span id="quantity_main1">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu1')">+</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="main_menu2">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/quatro.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>콰트로</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <div class="size-control" >
									             <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu2" id="size_x" onchange="updatePrice('main_menu2', 'l')"> L (￦29,500)
									            </label>
									            <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu2" id="size_l" onchange="updatePrice('main_menu2', 'xl')"> XL (￦32,500)
									            </label>
									        </div>
									        <h5>￦<span id="main_menu2_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                 <button class="quantity-button" onclick="decreaseQuantity('main_menu2')">-</button>
								                <span id="quantity_main2_x">0</span>
								                <button class="quantity-button" onclick="increaseQuantity('main_menu2')">+</button>
                                                </div> 
                                            </div>                 
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="main_menu3">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/seafood.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>씨푸드</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <div class="size-control" >
									             <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu3" id="size_x" onchange="updatePrice('main_menu3', 'l')"> L (￦30,000)
									            </label>
									            <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu3" id="size_l" onchange="updatePrice('main_menu3', 'xl')"> XL (￦33,000)
									            </label>
									        </div>
									        <h5>￦<span id="main_menu3_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu3')">-</button>
                                                <span id="quantity_main3">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu3')">+</button>
                                            </div>    
                                        </div>                 
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media" id="main_menu4">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/pepperoni.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>페퍼로니</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <div class="size-control" >
									             <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu4" id="size_x" onchange="updatePrice('main_menu4', 'l')"> L (￦18,500)
									            </label>
									            <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu4" id="size_l" onchange="updatePrice('main_menu4', 'xl')"> XL (￦21,500)
									            </label>
									        </div>
									        <h5>￦<span id="main_menu4_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu4')">-</button>
                                                <span id="quantity_main4">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu4')">+</button>
                                            </div>    
                                        </div>                 
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="main_menu5">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/potato.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>포테이토</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <div class="size-control" >
									             <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu5" id="size_x" onchange="updatePrice('main_menu5', 'l')"> L (￦20,500)
									            </label>
									            <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu5" id="size_l" onchange="updatePrice('main_menu5', 'xl')"> XL (￦23,500)
									            </label>
									        </div>
									        <h5>￦<span id="main_menu5_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu5')">-</button>
                                                <span id="quantity_main5">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('main_menu5')">+</button>
                                            </div>  
                                        </div>                 
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="main_menu6">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/steak.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>스테이크</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <div class="size-control" >
									             <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu6" id="size_x" onchange="updatePrice('main_menu6', 'l')"> L (￦28,000)
									            </label>
									            <label class="genric-btn danger circle">
									                <input type="radio" name="size_main_menu6" id="size_l" onchange="updatePrice('main_menu6', 'xl')"> XL (￦31,000)
									            </label>
									        </div>
									        <h5>￦<span id="main_menu6_price">0</span></h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('main_menu6')">-</button>
                                                <span id="quantity_main6">0</span>
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
                                    <div class="single_food_item media" id="side_menu1">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/cheese_ball.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>치즈볼</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>￦6,900</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('side_menu1')">-</button>
                                                <span id="quantity_side1">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('side_menu1')">+</button>
                                            </div> 
                                        </div>
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="side_menu2">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/hot_wing.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>핫 윙</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>￦9,800</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('side_menu2')">-</button>
                                                <span id="quantity_side2">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('side_menu2')">+</button>
                                            </div> 
                                        </div>
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="side_menu3">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/carbonara.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>까르보나라</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>￦9,800</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('side_menu3')">-</button>
                                                <span id="quantity_side3">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('side_menu3')">+</button>
                                            </div> 
                                        </div>
                                    </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media" id="side_menu4">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/bolognese.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>볼로네제 파스타</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>￦9,800</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('side_menu4')">-</button>
                                                <span id="quantity_side4">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('side_menu4')">+</button>
                                            </div> 
                                        </div>
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="side_menu5">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/coleslaw.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>코울슬로</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>￦2,400</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('side_menu5')">-</button>
                                                <span id="quantity_side5">0</span>
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
                                    <div class="single_food_item media" id="drink_menu1">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/coke.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>콜라</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>1.25L ￦2300</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('drink_menu1')">-</button>
                                                <span id="quantity_drink1">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('drink_menu1')">+</button>
                                            </div> 
                                        </div>
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="drink_menu2">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/zerocoke.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>제로 콜라</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>1.25L ￦2300</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity(this)">-</button>
                                                <span id="quantity_drink2">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity(this)">+</button>
                                            </div> 
                                        </div>
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="drink_menu3">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/sprite.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>스프라이트</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>1.5L ￦2400</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('drink_menu3')">-</button>
                                                <span id="quantity_drink3">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('drink_menu3')">+</button>
                                            </div> 
                                        </div>
                                        </div>
                                    </div>
                                </div>
                                 <div class="col-sm-6 col-lg-6">
                                    <div class="single_food_item media" id="drink_menu4">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/coke.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>콜라</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>500ml ￦1700</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('drink_menu4')">-</button>
                                                <span id="quantity_drink4">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('drink_menu4')">+</button>
                                            </div> 
                                        </div>
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="drink_menu5">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/zerocoke.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>제로 콜라</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>500ml ￦1700</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('drink_menu5')">-</button>
                                                <span id="quantity_drink5">0</span>
                                                <button class="quantity-button" onclick="increaseQuantity('drink_menu5')">+</button>
                                            </div> 
                                        </div>
                                        </div>
                                    </div>
                                    <div class="single_food_item media" id="drink_menu6">
                                        <img src="${pageContext.request.contextPath}/img/food_menu/sprite.png" class="mr-3" alt="...">
                                        <div class="media-body align-self-center">
                                            <h3>스프라이트</h3>
                                            <p>They're wherein heaven seed hath nothing</p>
                                            <h5>500ml ￦1700</h5>
                                        <div class="product">
                                            <div class="quantity-control">
                                                <button class="quantity-button" onclick="decreaseQuantity('drink_menu6')">-</button>
                                                <span id="quantity_drink6">0</span>
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
	<div id="orderConfirmation">
	
	</div>
	<div>
		<button type="button" class="btn_quick_order" id="orderButton" data-spoid="2892" 
		data-productid="-1" data-salesprice="0" onclick="redirectToPage()">주문</button>
	</div>
	<!--  주문 확인 창 end -->
	
    <!-- footer part start-->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-sm-6 col-md-4">
                    <div class="single-footer-widget footer_1">
                        <h4>About Us</h4>
                        <p>Heaven fruitful doesn't over for these theheaven fruitful doe over days
                            appear creeping seasons sad behold beari ath of it fly signs bearing
                            be one blessed after.</p>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-md-4">
                    <div class="single-footer-widget footer_2">
                        <h4>Important Link</h4>
                        <div class="contact_info">
                            <ul>
                                <li><a href="#">WHMCS-bridge</a></li>
                                <li><a href="#"> Search Domain</a></li>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Shopping Cart</a></li>
                                <li><a href="#"> Our Shop</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6 col-md-4">
                    <div class="single-footer-widget footer_2">
                        <h4>Contact us</h4>
                        <div class="contact_info">
                            <p><span> Address :</span>Hath of it fly signs bear be one blessed after </p>
                            <p><span> Phone :</span> +2 36 265 (8060)</p>
                            <p><span> Email : </span>info@colorlib.com </p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-8 col-md-6">
                    <div class="single-footer-widget footer_3">
                        <h4>Newsletter</h4>
                        <p>Heaven fruitful doesn't over lesser in days. Appear creeping seas</p>
                        <form action="#">
                            <div class="form-group">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder='Email Address'
                                        onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'">
                                    <div class="input-group-append">
                                        <button class="btn" type="button"><i class="fas fa-paper-plane"></i></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="copyright_part_text">
                <div class="row">
                    <div class="col-lg-8">
                        <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                    <div class="col-lg-4">
                        <div class="copyright_social_icon text-right">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="ti-dribbble"></i></a>
                            <a href="#"><i class="fab fa-behance"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer part end-->

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
    // 초기 수량 값을 0로 설정
    var quantities = {
    	'main_menu1_l': 0, 
        'main_menu1_xl': 0, 
        'main_menu2_l': 0, 
        'main_menu2_xl': 0,
        'main_menu3_l': 0,
        'main_menu3_xl': 0,
        'main_menu4_l': 0,
        'main_menu4_xl': 0,
        'main_menu5_l': 0,
        'main_menu5_xl': 0,
        'main_menu6_l': 0,
        'main_menu6_xl': 0,
        'side_menu1': 0,
        'side_menu2': 0,
        'side_menu3': 0,
        'side_menu4': 0,
        'side_menu5': 0,
        'drink_menu1': 0,
        'drink_menu2': 0,
        'drink_menu3': 0,
        'drink_menu4': 0,
        'drink_menu5': 0,
        'drink_menu6': 0
        // 나머지 메뉴 항목들도 동일한 방식으로 추가
    };
    
    //menu id 설정
    var menuNames = {
    		  'main_menu1': '불고기',
    		  'main_menu2': '콰트로',
    		  'main_menu3': '씨푸드',
    		  'main_menu4': '페퍼로니',
    		  'main_menu5': '포테이토',
    		  'main_menu6': '스테이크',
    		  'side_menu1': '치즈볼',
    		  'side_menu2': '핫윙',
    		  'side_menu3': '까르보나라',
    		  'side_menu4': '볼로네제 파스타',
    		  'side_menu5': '코울슬로',
    		  'drink_menu1': '콜라 1.25L',
    		  'drink_menu2': '제로콜라 1.25L',
    		  'drink_menu3': '스프라이트 1.25L',
    		  'drink_menu4': '콜라 500ml',
    		  'drink_menu4': '제로콜라 500ml',
    		  'drink_menu4': '스프라이트 500ml',
    		};

    var prices = {
    		'main_menu1_l': 22500,
            'main_menu1_xl': 25500,
    		'main_menu2_l': 29500,
            'main_menu2_xl': 32500,
            'main_menu3_l': 30000,
            'main_menu3_xl': 33000,
            'main_menu4_l': 18500,
            'main_menu4_xl': 21500,
            'main_menu5_l': 20500,
            'main_menu5_xl': 23500,
            'main_menu6_l': 28000,
            'main_menu6_xl': 31000,
        };
    
 	// 가격 업데이트 함수
    function updatePrice(menuId, size) {
        var priceId = menuId + '_' + size; // 가격 정보를 가져올 때 사이즈를 구분하기 위해 menuId와 size를 합친 고유 ID를 생성
        var priceElement = document.getElementById(menuId + '_price'); // 해당 메뉴 항목의 가격 표시하는 요소
        var price = prices[priceId].toLocaleString(); // 가격을 화폐 형식으로 변환
        priceElement.textContent = price; // 가격 업데이트
    }
    
 // 수량을 증가시키는 함수
    function increaseQuantity(menuId) {
      quantities[menuId]++; // 해당 메뉴 항목의 수량 증가
      updateQuantity(menuId); // 해당 메뉴 항목의 수량 업데이트
      updateOrderConfirmation(); // 주문 확인 창 업데이트
    }

    // 수량을 감소시키는 함수
    function decreaseQuantity(menuId) {
      if (quantities[menuId] > 0) {
        quantities[menuId]--; // 해당 메뉴 항목의 수량 감소 (0보다 작을 경우 음수로 가지 않도록 체크)
        updateQuantity(menuId); // 해당 메뉴 항목의 수량 업데이트
        updateOrderConfirmation(); // 주문 확인 창 업데이트
      }
    }

 // 화면에 수량 업데이트
    function updateQuantity(menuId) {
    if (menuId.startsWith('main_')) {
        document.getElementById('quantity_main' + menuId.slice(-1)).textContent = quantities[menuId];
    } else if (menuId.startsWith('side_')) {
        document.getElementById('quantity_side' + menuId.slice(-1)).textContent = quantities[menuId];
    } else{
    	document.getElementById('quantity_drink' + menuId.slice(-1)).textContent = quantities[menuId];
    }
    }
 
 
    function updateOrderConfirmation() {
    	  var orderConfirmationElement = document.getElementById('orderConfirmation');
    	  orderConfirmationElement.innerHTML = ''; // 이전 내용을 지웁니다.

    	  // quantities 객체에서 수량이 0이 아닌 항목을 찾아서 주문 확인 창에 추가합니다.
    	  for (var menuId in quantities) {
    	    if (quantities.hasOwnProperty(menuId) && quantities[menuId] !== 0) {
    	      var menuName = menuNames[menuId]; // 메뉴 이름 가져오기
    	      var quantity = quantities[menuId]; // 수량 가져오기

    	      // 주문 확인 창에 메뉴 이름과 수량을 추가합니다.
    	      var menuItem = document.createElement('p');
    	      menuItem.textContent = menuName + ': ' + quantity;
    	      orderConfirmationElement.appendChild(menuItem);
    	    }
    	  }
    	}

    	// 페이지 로드 시 주문 확인 창을 업데이트합니다.
    	window.addEventListener('load', updateOrderConfirmation);
    </script>
    
</body>
</html>