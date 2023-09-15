<%@ page import="com.pizzaorder.web.user.dao.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html lang="en">
<!--review페이지로 사용-->
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
                                <a class="nav-link" href="${pageContext.request.contextPath}/base/chefs.jsp">소개</a>
                            </li>
                            <li class="nav-item">
                                <a class="dropdown-item"
                                   href="${pageContext.request.contextPath}/menu/review.jsp">리뷰</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/mapping.jsp">오시는 길</a>
                            </li>
                        </ul>
                    </div>
                    <c:choose>
                    	<c:when test="${empty sessionScope.userid} ||${empty sessionScope.kakaoid }">
                    		<div class="menu_btn" id="loginBtn" >
                        		<a href="${pageContext.request.contextPath}/join/joinview.jsp" class="btn_1 d-none d-sm-block">회원가입</a>
                    		</div>
                    	</c:when>
                    	<c:otherwise>
                    		<div class="menu_btn" id="logoutBtn">
                        		<a href="${pageContext.request.contextPath}/user/Logoutok.us" class="btn_1 d-none d-sm-block">로그아웃</a>
                    		</div>
                   	 	</c:otherwise>
                    </c:choose>
                    <c:choose>
                    	<c:when test="${empty sessionScope.userid} ||${empty sessionScope.kakaoid }">
                    		<div class="menu_btn" id="signupBtn" test="${session.user }">
                        		<a href="${pageContext.request.contextPath}/login/loginview.jsp"
                           		class="btn_1 d-none d-sm-block">로그인</a>
                    		</div>
                    		<div class="menu_btn" id="orderBtn" test="${session.user }">
                        		<a href="${pageContext.request.contextPath}/login/loginview.jsp" class="btn_1 d-none d-sm-block">주문하기</a>
                    		</div>	
                    	</c:when>
                    	<c:otherwise>
                    		<div class="menu_btn" id="orderCheckbtn">
                        		<a href="${pageContext.request.contextPath}/menu/review.jsp" class="btn_1 d-none d-sm-block">주문내역</a>
                    		</div>
                    		<div class="menu_btn" id="orderBtn">
                        		<a href="${pageContext.request.contextPath}/menu/order.jsp" class="btn_1 d-none d-sm-block">주문하기</a>
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
                        <h2>메뉴 리뷰</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- breadcrumb start-->
<!--================Blog Area =================-->
<section class="blog_area single-post-area section_padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 posts-list">
                <div class="single-post">
                    <div class="feature-img">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/img/blog/single_blog_1.png"
                             alt="">
                    </div>
                    <div class="blog_details">
                        <h2>Second divided from form fish beast made every of seas
                            all gathered us saying he our
                        </h2>
                        <ul class="blog-info-link mt-3 mb-4">
                            <li><a href="#"><i class="far fa-user"></i> Travel, Lifestyle</a></li>
                            <li><a href="#"><i class="far fa-comments"></i> 03 Comments</a></li>
                        </ul>
                        <p class="excert">
                            MCSE boot camps have its supporters and its detractors. Some people do not understand why
                            you
                            should have to spend money on boot camp when you can get the MCSE study materials yourself
                            at a
                            fraction of the camp price. However, who has the willpower
                        </p>
                        <p>
                            MCSE boot camps have its supporters and its detractors. Some people do not understand why
                            you
                            should have to spend money on boot camp when you can get the MCSE study materials yourself
                            at a
                            fraction of the camp price. However, who has the willpower to actually sit through a
                            self-imposed MCSE training. who has the willpower to actually
                        </p>
                        <div class="quote-wrapper">
                            <div class="quotes">
                                MCSE boot camps have its supporters and its detractors. Some people do not understand
                                why you
                                should have to spend money on boot camp when you can get the MCSE study materials
                                yourself at
                                a fraction of the camp price. However, who has the willpower to actually sit through a
                                self-imposed MCSE training.
                            </div>
                        </div>
                        <p>
                            MCSE boot camps have its supporters and its detractors. Some people do not understand why
                            you
                            should have to spend money on boot camp when you can get the MCSE study materials yourself
                            at a
                            fraction of the camp price. However, who has the willpower
                        </p>
                        <p>
                            MCSE boot camps have its supporters and its detractors. Some people do not understand why
                            you
                            should have to spend money on boot camp when you can get the MCSE study materials yourself
                            at a
                            fraction of the camp price. However, who has the willpower to actually sit through a
                            self-imposed MCSE training. who has the willpower to actually
                        </p>
                    </div>
                </div>
                <div class="navigation-top">
                    <div class="d-sm-flex justify-content-between text-center">
                        <p class="like-info"><span class="align-middle"><i class="far fa-heart"></i></span> Lily and 4
                            people like this</p>
                        <div class="col-sm-4 text-center my-2 my-sm-0">
                            <!-- <p class="comment-count"><span class="align-middle"><i class="far fa-comment"></i></span> 06 Comments</p> -->
                        </div>
                        <ul class="social-icons">
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                            <li><a href="#"><i class="fab fa-behance"></i></a></li>
                        </ul>
                    </div>
                    <div class="navigation-area">
                        <div class="row">
                            <div
                                    class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                                <div class="thumb">
                                    <a href="#">
                                        <img class="img-fluid"
                                             src="${pageContext.request.contextPath}/img/post/preview.png" alt="">
                                    </a>
                                </div>
                                <div class="arrow">
                                    <a href="#">
                                        <span class="lnr text-white ti-arrow-left"></span>
                                    </a>
                                </div>
                                <div class="detials">
                                    <p>Prev Post</p>
                                    <a href="#">
                                        <h4>Space The Final Frontier</h4>
                                    </a>
                                </div>
                            </div>
                            <div
                                    class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                                <div class="detials">
                                    <p>Next Post</p>
                                    <a href="#">
                                        <h4>Telescopes 101</h4>
                                    </a>
                                </div>
                                <div class="arrow">
                                    <a href="#">
                                        <span class="lnr text-white ti-arrow-right"></span>
                                    </a>
                                </div>
                                <div class="thumb">
                                    <a href="#">
                                        <img class="img-fluid"
                                             src="${pageContext.request.contextPath}/img/post/next.png" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="blog-author">
                    <div class="media align-items-center">
                        <img src="${pageContext.request.contextPath}/img/blog/author.png" alt="">
                        <div class="media-body">
                            <h4>
                            <a href="#">
                                Harvard milan
                            </a></h4>
                            <p>Second divided from form fish beast made. Every of seas all gathered use saying you're,
                                he
                                our dominion twon Second divided from</p>
                        </div>
                    </div>
                </div>
                <div class="comments-area">
                    <h4>05 Comments</h4>
                    <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                            <div class="user justify-content-between d-flex">
                                <div class="thumb">
                                    <img src="${pageContext.request.contextPath}/img/comment/comment_1.png" alt="">
                                </div>
                                <div class="desc">
                                    <p class="comment">
                                        Multiply sea night grass fourth day sea lesser rule open subdue female fill
                                        which them
                                        Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
                                    </p>
                                    <div class="d-flex justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <h5>
                                                <a href="#">Emilly Blunt</a>
                                            </h5>
                                            <p class="date">December 4, 2017 at 3:12 pm </p>
                                        </div>
                                        <div class="reply-btn">
                                            <a href="#" class="btn-reply text-uppercase">reply</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                            <div class="user justify-content-between d-flex">
                                <div class="thumb">
                                    <img src="${pageContext.request.contextPath}/img/comment/comment_2.png" alt="">
                                </div>
                                <div class="desc">
                                    <p class="comment">
                                        Multiply sea night grass fourth day sea lesser rule open subdue female fill
                                        which them
                                        Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
                                    </p>
                                    <div class="d-flex justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <h5>
                                                <a href="#">Emilly Blunt</a>
                                            </h5>
                                            <p class="date">December 4, 2017 at 3:12 pm </p>
                                        </div>
                                        <div class="reply-btn">
                                            <a href="#" class="btn-reply text-uppercase">reply</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                            <div class="user justify-content-between d-flex">
                                <div class="thumb">
                                    <img src="${pageContext.request.contextPath}/img/comment/comment_3.png" alt="">
                                </div>
                                <div class="desc">
                                    <p class="comment">
                                        Multiply sea night grass fourth day sea lesser rule open subdue female fill
                                        which them
                                        Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
                                    </p>
                                    <div class="d-flex justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <h5>
                                                <a href="#">Emilly Blunt</a>
                                            </h5>
                                            <p class="date">December 4, 2017 at 3:12 pm </p>
                                        </div>
                                        <div class="reply-btn">
                                            <a href="#" class="btn-reply text-uppercase">reply</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="comment-form">
                    <h4>Leave a Reply</h4>
                    <form class="form-contact comment_form" action="#" id="commentForm">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                              <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
                                        placeholder="Write Comment"></textarea>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input class="form-control" name="name" id="name" type="text" placeholder="Name">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input class="form-control" name="email" id="email" type="email"
                                           placeholder="Email">
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" name="website" id="website" type="text"
                                           placeholder="Website">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="button button-contactForm">Send Message</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="blog_right_sidebar">
                    <aside class="single_sidebar_widget post_category_widget">
                        <h4 class="widget_title">Category</h4>
                        <ul class="list cat-list">
                            <li>
                                <a href="#" class="d-flex">
                                    <p>Resaurant food</p>
                                    <p>(37)</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>Travel news</p>
                                    <p>(10)</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>Modern technology</p>
                                    <p>(03)</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>Product</p>
                                    <p>(11)</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>Inspiration</p>
                                    <p>(21)</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="d-flex">
                                    <p>Health Care</p>
                                    <p>(21)</p>
                                </a>
                            </li>
                        </ul>
                    </aside>
                    <aside class="single_sidebar_widget popular_post_widget">
                        <h3 class="widget_title">Recent Post</h3>
                        <div class="media post_item">
                            <img src="${pageContext.request.contextPath}/img/post/post_1.png" alt="post">
                            <div class="media-body">
                                <a href="review.jsp">
                                    <h3>From life was you fish...</h3>
                                </a>
                                <p>January 12, 2019</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="${pageContext.request.contextPath}/img/post/post_2.png" alt="post">
                            <div class="media-body">
                                <a href="review.jsp">
                                    <h3>The Amazing Hubble</h3>
                                </a>
                                <p>02 Hours ago</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="${pageContext.request.contextPath}/img/post/post_3.png" alt="post">
                            <div class="media-body">
                                <a href="review.jsp">
                                    <h3>Astronomy Or Astrology</h3>
                                </a>
                                <p>03 Hours ago</p>
                            </div>
                        </div>
                        <div class="media post_item">
                            <img src="${pageContext.request.contextPath}/img/post/post_4.png" alt="post">
                            <div class="media-body">
                                <a href="review.jsp">
                                    <h3>Asteroids telescope</h3>
                                </a>
                                <p>01 Hours ago</p>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================Blog Area end =================-->

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
                    <p class="footer-text m-0">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by
                        <a href="https://colorlib.com" target="_blank">Colorlib</a>
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
</body>

</html>