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
<header class="main_menu home_menu">
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
                                <a class="nav-link" href="${pageContext.request.contextPath}/menu/food_menu.jsp">메뉴</a>
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
<!-- Header part end-->

<!-- banner part start-->
<section class="banner_part">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="banner_text">
                    <div class="banner_text_iner">
                        <h5>Lets Git-it</h5>
                        <h2>Pizza Order</h2>
                        <p>맛있는 피자~♪ 게살 피자 배달 공짜♪<br>
                            게살 피자 ㅂ풔풔풔풔풔풮풮 피자 맛있는 피자 게살 피자 둥궁딱 둥궁둥궁둥국딱 피자<br>
                            둥궁둥궁둥궁딱 피자 맛있는 ㅇ예예옝예예 피자~~ 게살~~ 피자~~~♪</p>
                        <div class="banner_btn">
                            <c:choose>
                                <c:when test="${empty sessionScope.userid &&empty param.kakaoUserId}">
                                    <div class="banner_btn_iner">
                                        <a href="${pageContext.request.contextPath}/login/loginview.jsp"
                                           class="btn_2">주문하기 <img
                                                src="${pageContext.request.contextPath}/img/icon/left_1.svg" alt=""></a>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <a href="${pageContext.request.contextPath}/menu/order.jsp" class="btn_2">주문하기 <img
                                            src="${pageContext.request.contextPath}/img/icon/left_1.svg" alt=""></a>
                                </c:otherwise>
                            </c:choose>

                            <a href="https://www.youtube.com/watch?v=EvPMHHjYzj0" class="popup-youtube video_popup">
                                <span><img src="${pageContext.request.contextPath}/img/icon/play.svg" alt=""></span>
                                Watch our identity</a>
                        </div>
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