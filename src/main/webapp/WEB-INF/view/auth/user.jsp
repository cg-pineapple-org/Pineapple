<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="UTF-8">
  <title>Pineapple</title>
  <link rel="shortcut icon" type="image/x-icon" href=" <c:url value = "/assets/images/favicon.png"/>">
  <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/fonts/flaticon/flaticon.css"/>">
  <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/animate.css"/>">
  <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/bootstrap.min.css"/>">
  <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/font-awesome.css" />">
  <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/pe-icon-7-stroke.css"/>">
  <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/owl.carousel.css"/>">
  <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/chosen.css"/>">
  <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/jquery.bxslider.css"/>">
  <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/style.css"/>">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">
</head>
<body class="page-inner">
<div class="wrapper">
  <form id="block-search-mobile" method="get" class="block-search-mobile">
    <div class="form-content">
      <div class="control">
        <a href="#" class="close-block-serach"><span class="icon flaticon-close"></span></a>
        <input type="text" name="search" placeholder="Search" class="input-subscribe">
        <button type="submit" class="btn search">
          <span><i class="flaticon-magnifying-glass" aria-hidden="true"></i></span>
        </button>
      </div>
    </div>
  </form>
  <div id="block-quick-view-popup" class="block-quick-view-popup">
    <div class="quick-view-content">
      <a href="#" class="popup-btn-close"><span class="flaticon-close"></span></a>
      <div class="product-items">
        <div class="product-image">
          <a href="#"><img src="assets/images/popup-pro.jpg" alt="p1"></a>
        </div>
        <div class="product-info">
          <div class="product-name"><a href="#">Photo Camera</a></div>
          <span class="star-rating">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <span class="review">5 Review(s)</span>
                        </span>
          <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i>Add to Wishlist</a>
          <div class="product-infomation">
            Description Our new HPB12 / A12 battery is rated at 2000mAh and designed to power up Black and
            Decker FireStorm line of 12V tools allowing...
          </div>
        </div>
        <div class="product-info-price">
                        <span class="price">
                            <ins>$229.00</ins>
                            <del>$259.00</del>
                        </span>
          <div class="quantity">
            <h6 class="quantity-title">Quantity:</h6>
            <div class="buttons-added">
              <input type="text" value="1" title="Qty" class="input-text qty text" size="1">
              <a href="#" class="sign plus"><i class="fa fa-plus"></i></a>
              <a href="#" class="sign minus"><i class="fa fa-minus"></i></a>
            </div>
          </div>
          <a href="#" class="btn-add-to-cart">Add to cart</a>
        </div>
      </div>
    </div>
  </div>
  <!-- HEADER -->
  <%@ include file="/WEB-INF/view/user/header.jsp" %>
  <!-- end HEADER -->
  <!-- MAIN -->
  <div class="main">
    <div class="container mt-4">
      <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3">
          <div class="text-center mb-4">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYqc1LSBqacwVLQyzGK1MZWRJoBVI6t8sE2g&s" alt="Avatar" class="rounded-circle img-fluid w-25"/>
          </div>
          <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action">Hồ Sơ</a>
            <a href="#" class="list-group-item list-group-item-action">Ngân Hàng</a>
            <a href="#" class="list-group-item list-group-item-action">Địa Chỉ</a>
            <a href="#" class="list-group-item list-group-item-action">Đổi Mật Khẩu</a>
            <a href="#" class="list-group-item list-group-item-action">Cài Đặt Thông Báo</a>
            <a href="#" class="list-group-item list-group-item-action">Những Thiết Lập Riêng Tư</a>
          </div>
        </div>
        <div class="col-md-9">
          <h1 class="mb-4">Hồ Sơ Của Tôi</h1>
          <form action="updateProfile" method="post" enctype="multipart/form-data">
            <div class="mb-3">
              <label for="username" class="form-label">Tên đăng nhập</label>
              <input type="text" id="username" name="username" class="form-control" value="hoangngoctuan143" readonly>
            </div>
            <div class="mb-3">
              <label for="name" class="form-label">Tên</label>
              <div class="mb-3 d-flex align-items-center">
                <input type="text" id="name" name="name" class="form-control me-1" value="Hoàng Ngọc Tuấn" readonly>
                <button type="button" class="btn btn-warning ms-2" id="editNameBtn">Sửa</button>
              </div>
            </div>
            <div class="mb-3 d-flex align-items-center">
              <label for="email" class="form-label ">Email</label>
              <div class="mb-3 d-flex align-items-center">
                <input type="email" id="email" name="email" class="form-control me-2" value="ng**********@gmail.com" readonly>
                <button type="button" class="btn btn-warning ms-2" id="editEmailBtn">Sửa</button>
              </div>
            </div>
            <div class="mb-3 d-flex align-items-center">
              <label for="phone" class="form-label me-2">Số điện thoại</label>
              <div class="mb-3 d-flex align-items-center">
                <input type="text" id="phone" name="phone" class="form-control" value="********63" readonly>
                <button type="button" class="btn btn-warning ms-2" id="editPhoneBtn">Sửa</button>
              </div>
            </div>
            <div class="mb-3">
              <label for="address" class="form-label">Địa chỉ</label>
              <textarea id="address" name="address" class="form-control" rows="3" readonly>Địa chỉ cũ</textarea>
              <button type="button" class="btn btn-warning mt-2" id="editAddressBtn">Sửa đổi</button>
            </div>
            <div class="mb-3">
              <label for="dob" class="form-label">Ngày sinh</label>
              <div class="row">
                <div class="col">
                  <select name="dob_day" id="dob_day" class="form-select" required>
                    <option value="">Ngày</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <!-- Các giá trị còn lại -->
                  </select>
                </div>
                <div class="col">
                  <select name="dob_month" id="dob_month" class="form-select" required>
                    <option value="">Tháng</option>
                    <option value="1">Tháng 1</option>
                    <option value="2">Tháng 2</option>
                  </select>
                </div>
                <div class="col">
                  <select name="dob_year" id="dob_year" class="form-select" required>
                    <option value="">Năm</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000">2000</option>
                    <option value="2001">2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                    <option value="2008">2008</option>
                    <option value="2009">2009</option>
                    <option value="2010">2010</option>
                    <option value="2011">2011</option>
                    <option value="2012">2012</option>
                    <option value="2013">2013</option>
                    <option value="2014">2014</option>
                    <option value="2015">2015</option>
                  </select>
                </div>
              </div>
            </div>

            <div class="mb-3">
              <label for="avatar" class="form-label">Ảnh đại diện</label>
              <input type="file" id="avatar" name="avatar" class="form-control" accept="image/jpeg, image/png">
            </div>

            <div class="text-end">
              <button type="submit" class="btn btn-primary">Lưu</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>


  <!-- FOOTER -->
  <footer class="site-footer footer-opt-2">
    <div class="footer-top full-width">
      <div class="owl-carousel instagram" data-nav="false"
           data-autoplay="false" data-dots="false" data-loop="true" data-margin="0"
           data-responsive='{"0":{"items":2},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":5}}'>
        <div class="item-instagram">
          <a href="#">
            <img src="assets/images/item-instagram-1.jpg" alt="img">
          </a>
          <span class="text">
                        <i class="icon fa fa-instagram" aria-hidden="true"></i>
			        </span>
        </div>
        <div class="item-instagram">
          <a href="#">
            <img src="assets/images/item-instagram-2.jpg" alt="img">
          </a>
          <span class="text">
                        <i class="icon fa fa-instagram" aria-hidden="true"></i>
			        </span>
        </div>
        <div class="item-instagram">
          <a href="#">
            <img src="assets/images/item-instagram-3.jpg" alt="img">
          </a>
          <span class="text">
                        <i class="icon fa fa-instagram" aria-hidden="true"></i>
			        </span>
        </div>
        <div class="item-instagram">
          <a href="#">
            <img src="assets/images/item-instagram-4.jpg" alt="img">
          </a>
          <span class="text">
                        <i class="icon fa fa-instagram" aria-hidden="true"></i>
			        </span>
        </div>
        <div class="item-instagram">
          <a href="#">
            <img src="assets/images/item-instagram-5.jpg" alt="img">
          </a>
          <span class="text">
                        <i class="icon fa fa-instagram" aria-hidden="true"></i>
			        </span>
        </div>
      </div>
    </div>
    <div class="footer-column equal-container">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-6 equal-elem">
            <div class="logo-footer"><img src="assets/images/logo-light.png" alt="logo"></div>
            <div class="contacts">
              <p class="contacts-info">Nullam tristique tortor nibh, in viverra libero sollicitudin ac.
                Suspendisse quis lacinia ipsum. Etiam scelerisque sit amet lectus quis lacinia. Sed.</p>
              <span class="contacts-info info-address ">218 Fifth Avenue, HeavenTower NewYork City</span>
              <span class="contacts-info info-phone">(+68) 123 456 7890</span>
              <span class="contacts-info info-support">Hot-Support@Dagon.com</span>
            </div>
          </div>
          <div class="col-md-2 col-sm-6 equal-elem">
            <div class="links">
              <h3 class="title-of-section">My account</h3>
              <ul>
                <li><a href="#">Sign In</a></li>
                <li><a href="#">View Cart</a></li>
                <li><a href="#">My Wishlist</a></li>
                <li><a href="#">Terms & Conditions</a></li>
                <li><a href="#">Contact us</a></li>
                <li><a href="#">Track My Order</a></li>
                <li><a href="#">Help</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-2 col-sm-6 equal-elem">
            <div class="links">
              <h3 class="title-of-section">Information</h3>
              <ul>
                <li><a href="#">Specials</a></li>
                <li><a href="#">New products</a></li>
                <li><a href="#">Best sellers</a></li>
                <li><a href="#">Our stores</a></li>
                <li><a href="#">Contact us</a></li>
                <li><a href="#">Sitemap</a></li>
                <li><a href="#">Blog</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 equal-elem">
            <div class="links">
              <h3 class="title-of-section">Newsletter</h3>
              <span class="span-newsletter">Get notified of new products, limited releases, and more.</span>
              <div class="newsletter-form">
                <form id="newsletter-validate-detail" class="form subscribe">
                  <div class="control">
                    <input type="email" placeholder="Enter your email" id="newsletter" name="email"
                           class="input-subscribe">
                    <button type="submit" title="Subscribe" class="btn subscribe">
                      <span>Sign Up</span>
                    </button>
                  </div>
                </form>
              </div>
              <div class="socials">
                <a href="#" class="social"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                <a href="#" class="social"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#" class="social"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#" class="social"><i class="fa fa-instagram" aria-hidden="true"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="copyright full-width">
      <div class="container">
        <div class="copyright-right">
          © Copyright 2020<span> Dagon</span>. All Rights Reserved.
        </div>
        <div class="pay-men">
          <a href="#"><img src="assets/images/general/pay1.jpg" alt="pay1"></a>
          <a href="#"><img src="assets/images/general/pay2.jpg" alt="pay2"></a>
          <a href="#"><img src="assets/images/general/pay3.jpg" alt="pay3"></a>
          <a href="#"><img src="assets/images/general/pay4.jpg" alt="pay4"></a>
        </div>
      </div>
    </div>
  </footer>
  <!-- end FOOTER -->
</div>
<a href="#" id="scrollup" title="Scroll to Top">Scroll</a>
<!-- jQuery -->
<script type="text/javascript" src=" <c:url value="/assets/js/jquery-2.1.4.min.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/owl.carousel.min.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/wow.min.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/jquery.actual.min.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/chosen.jquery.min.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/jquery.bxslider.min.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/jquery.sticky.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/jquery.elevateZoom.min.js"/>"></script>
<script src=" <c:url value="/assets/js/fancybox/source/jquery.fancybox.pack.js"/>"></script>
<script src=" <c:url value="/assets/js/fancybox/source/helpers/jquery.fancybox-media.js"/>"></script>
<script src=" <c:url value="/assets/js/fancybox/source/helpers/jquery.fancybox-thumbs.js"/>"></script>
<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
<script type="text/javascript" src=" <c:url value="/assets/js/function.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/Modernizr.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/jquery.plugin.js"/>"></script>
<script type="text/javascript" src=" <c:url value="/assets/js/jquery.countdown.js"/>"></script>
<script src="<c:url value= "https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"/>"></script></script>
</body>
</html>