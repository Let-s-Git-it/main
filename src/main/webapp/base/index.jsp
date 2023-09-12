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
    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.jsp"> <img src="${pageContext.request.contextPath}/img/logo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-end"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.jsp">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/menu/food_menu.jsp">메뉴</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="chefs.jsp">Chefs</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/blog.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Blog
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/menu/food_menu.jsp">메뉴</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/menu/review.jsp">Single blog</a>
                                        <a class="dropdown-item" href="${pageContext.request.contextPath}/elements.jsp">Elements</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="${pageContext.request.contextPath}/mapping.jsp">Contact</a>
                                </li>
                            </ul>
                        </div>
                        <div class="menu_btn" id="loginBtn">
                            <a href="${pageContext.request.contextPath}/join/joinview.jsp" class="btn_1 d-none d-sm-block">회원가입</a>
                        </div>   
                        <div class="menu_btn" id="signupBtn">
                            <a href="${pageContext.request.contextPath}/login/loginview.jsp" class="btn_1 d-none d-sm-block">로그인</a>
                        </div>
                        <div class="menu_btn" id="logoutBtn" style="display: none;">
    						<a href="#" class="btn_1 d-none d-sm-block">로그아웃</a>
						</div>
                        <script>
                    		 // 로그인 상태를 확인하는 변수 (가정)
                        	 var isLoggedIn = true; // 또는 false

                        	// 페이지 로드 시 실행되는 함수
                        	window.onload = function () {
                            // 로그인 상태에 따라 버튼 표시/숨김 처리
                            if (isLoggedIn) {
                                document.getElementById("loginBtn").style.display = "none";
                                document.getElementById("signupBtn").style.display = "none";
                                document.getElementById("logoutBtn").style.display = "block";
                            } else {
                                document.getElementById("loginBtn").style.display = "block";
                                document.getElementById("signupBtn").style.display = "block";
                                document.getElementById("logoutBtn").style.display = "none";
                            }
                        };
                        </script>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h5>Expensive but the best</h5>
                            <h1>Deliciousness jumping into the mouth</h1>
                            <p>Together creeping heaven upon third dominion be upon won't darkness rule land
                                behold it created good saw after she'd Our set living. Signs midst dominion
                                creepeth morning</p>
                            <div class="banner_btn">
                                <div class="banner_btn_iner">
                                    <a href="${pageContext.request.contextPath}/menu/order.jsp" class="btn_2">주문하기 <img src="${pageContext.request.contextPath}/img/icon/left_1.svg" alt=""></a>
                                </div>
                                <a href="https://www.youtube.com/watch?v=pBFQdxA-apI" class="popup-youtube video_popup">
                                    <span><img src="${pageContext.request.contextPath}/img/icon/play.svg" alt=""></span> Watch our story</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

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
</body>

</html>