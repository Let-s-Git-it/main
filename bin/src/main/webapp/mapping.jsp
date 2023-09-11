<%@ page import="com.pizzaorder.web.user.dao.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<!--주변 매장 찾기-->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Dingo</title>
    <link rel="icon" href="${pageContext.request.contextPath}img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/flaticon.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/magnific-popup.css">
    <!-- swiper CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/gijgo.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/nice-select.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/all.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/style.css">
</head>

<body>
    <!--::header part start::-->
    <header class="main_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="base/index.jsp"> <img src="${pageContext.request.contextPath}img/logo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-end"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="base/index.jsp">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.jsp">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="menu/food_menu.jsp">Menu</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="base/chefs.jsp">Chefs</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Blog
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="blog.jsp">Blog</a>
                                        <a class="dropdown-item" href="menu/review.jsp">Single blog</a>
                                        <a class="dropdown-item" href="elements.jsp">Elements</a>
                                    </div>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="mapping.jsp">Contact</a>
                                </li>
                            </ul>
                        </div>
                        <div class="menu_btn">
                            <a href="#" class="single_page_btn d-none d-sm-block">book a tabel</a>
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
              <h2>Contact Us</h2>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- breadcrumb start-->

  <!-- ================ contact section start ================= -->
  <section class="contact-section section_padding">
    <div class="container">
      <div class="d-none d-sm-block mb-5 pb-4">
        <div id="map" style="height: 480px;"></div>
        <script>
          function initMap() {
            var uluru = {
              lat: -25.363,
              lng: 131.044
            };
            var grayStyles = [{
                featureType: "all",
                stylers: [{
                    saturation: -90
                  },
                  {
                    lightness: 50
                  }
                ]
              },
              {
                elementType: 'labels.text.fill',
                stylers: [{
                  color: '#ccdee9'
                }]
              }
            ];
            var map = new google.maps.Map(document.getElementById('map'), {
              center: {
                lat: -31.197,
                lng: 150.744
              },
              zoom: 9,
              styles: grayStyles,
              scrollwheel: false
            });
          }
        </script>
        <script
          src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&callback=initMap">
        </script>

      </div>


      <div class="row">
        <div class="col-12">
          <h2 class="contact-title">Get in Touch</h2>
        </div>
        <div class="col-lg-8">
          <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm"
            novalidate="novalidate">
            <div class="row">
              <div class="col-12">
                <div class="form-group">

                  <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9"
                    onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'"
                    placeholder='Enter Message'></textarea>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter your name'" placeholder='Enter your name'>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <input class="form-control" name="email" id="email" type="email" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter email address'" placeholder='Enter email address'>
                </div>
              </div>
              <div class="col-12">
                <div class="form-group">
                  <input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter Subject'" placeholder='Enter Subject'>
                </div>
              </div>
            </div>
            <div class="form-group mt-3">
              <button type="submit" class="button button-contactForm btn_4">Send Message</button>
            </div>
          </form>
        </div>
        <div class="col-lg-4">
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-home"></i></span>
            <div class="media-body">
              <h3>Buttonwood, California.</h3>
              <p>Rosemead, CA 91770</p>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
            <div class="media-body">
              <h3>00 (440) 9865 562</h3>
              <p>Mon to Fri 9am to 6pm</p>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-email"></i></span>
            <div class="media-body">
              <h3>support@colorlib.com</h3>
              <p>Send us your query anytime!</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ================ contact section end ================= -->

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
                  <input type="text" class="form-control" placeholder='Email Address' onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Email Address'">
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
  <script src="${pageContext.request.contextPath}js/jquery-1.12.1.min.js"></script>
  <!-- popper js -->
  <script src="${pageContext.request.contextPath}js/popper.min.js"></script>
  <!-- bootstrap js -->
  <script src="${pageContext.request.contextPath}js/bootstrap.min.js"></script>
  <!-- easing js -->
  <script src="${pageContext.request.contextPath}js/jquery.magnific-popup.js"></script>
  <!-- swiper js -->
  <script src="${pageContext.request.contextPath}js/swiper.min.js"></script>
  <!-- swiper js -->
  <script src="${pageContext.request.contextPath}js/masonry.pkgd.js"></script>
  <!-- particles js -->
  <script src="${pageContext.request.contextPath}js/owl.carousel.min.js"></script>
  <!-- swiper js -->
  <script src="${pageContext.request.contextPath}js/slick.min.js"></script>
  <script src="${pageContext.request.contextPath}js/gijgo.min.js"></script>
  <script src="${pageContext.request.contextPath}js/jquery.nice-select.min.js"></script>
  <!-- particles js -->
  <script src="${pageContext.request.contextPath}js/contact.js"></script>
  <!-- ajaxchimp js -->
  <script src="${pageContext.request.contextPath}js/jquery.ajaxchimp.min.js"></script>
  <!-- validate js -->
  <script src="${pageContext.request.contextPath}js/jquery.validate.min.js"></script>
  <!-- form js -->
  <script src="${pageContext.request.contextPath}js/jquery.form.js"></script>
  <!-- custom js -->
  <script src="${pageContext.request.contextPath}js/custom.js"></script>
</body>

</html>