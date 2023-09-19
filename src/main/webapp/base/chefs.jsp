<%@ page import="com.pizzaorder.web.user.dao.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!doctype html>
<html lang="en">
<!--우리 소개-->
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
                            src="${pageContext.request.contextPath}/img/logo.png"
                            alt="logo"> </a>
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
                                <a class="nav-link" href="chefs.jsp">소개</a>
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
                                <a href="${pageContext.request.contextPath}/login/loginview.jsp"
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
                        <h2>소개</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- breadcrumb start-->

<!--::chefs_part start::-->
<section class="chefs_part blog_item_section section_padding">
    <div class="container">
        <div class="row">
            <div class="col-xl-5">
                <div class="section_tittle">
                    <p>Team Member</p>
                    <h2>Our Code Chefs</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-lg-4">
                <div class="single_blog_item">
                    <div class="single_blog_img">
                        <img src="${pageContext.request.contextPath}/img/team/jiheon222.jpg" alt="">
                    </div>
                    <div class="single_blog_text text-center">
                        <h3>김지헌</h3>
                        <p>조장,BackEnd</p>
                        <p>회원가입, 로그인, SNS 로그인 API</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="single_blog_item">
                    <div class="single_blog_img">
                        <img src="${pageContext.request.contextPath}/img/team/yeonghwan.png" alt="">
                    </div>
                    <div class="single_blog_text text-center">
                        <h3>김영환</h3>
                        <p>BackEnd</p>
                        <p>회원가입, 로그인, 로그아웃, 지도 API</p>

                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="single_blog_item">
                    <div class="single_blog_img">
                        <img src="${pageContext.request.contextPath}/img/team/geonwoo.jpg" alt="">
                    </div>
                    <div class="single_blog_text text-center">
                        <h3>노건우</h3>
                        <p>BackEnd</p>
                        <p>회원가입, 로그인, 로그아웃</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="single_blog_item">
                    <div class="single_blog_img">
                        <img src="${pageContext.request.contextPath}/img/team/yongjin.png" alt="">
                    </div>
                    <div class="single_blog_text text-center">
                        <h3>김용진</h3>
                        <p>FrontEnd</p>
                        <p>장바구니, 리뷰페이지, 메뉴페이지, DB설계</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="single_blog_item">
                    <div class="single_blog_img">
                        <img src="${pageContext.request.contextPath}/img/team/jihyeon.jpg" alt="">
                    </div>
                    <div class="single_blog_text text-center">
                        <h3>박지현</h3>
                        <p>FrontEnd</p>
                        <p>FE 웹 디자인 , 메뉴</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="single_blog_item">
                    <div class="single_blog_img">
                        <img src="${pageContext.request.contextPath}/img/team/jiyeon.png" alt="">
                    </div>
                    <div class="single_blog_text text-center">
                        <h3>우지연</h3>
                        <p>FullStack(FrontEnd,BackEnd)</p>
                        <p>DB설계, 로그인/회원가입 기능 구현, SNS 로그인, 회원가입/로그인페이지 구현</p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>


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