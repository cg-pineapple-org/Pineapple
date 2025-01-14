<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
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
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap"
        rel="stylesheet">
  <style>
    .header {
      display: flex;
      align-items: center; /* Căn giữa các phần tử theo chiều dọc */
      justify-content: space-between; /* Căn đều logo và các phần tử khác */
      padding: 10px;
      flex-wrap: wrap; /* Cho phép xuống dòng khi màn hình nhỏ */
    }

    .header-opt-1 .header-top {
      background-color: #ffffff;
    }

    .header-opt-1 .header-top a i {
      font-size: 15px;
      Font-weight: 550;
      margin-right: auto;
    }

    .flaticon-profile {
      color: black !important;
    }

    .form-search .form-control {
      box-shadow: 3px 4px #fcf2f2;
      border-left: 1.5px solid #e3e3e3;
    }

    .block-minicart .minicart {
      margin-left: 55px;
    }

    .block-minicart .counter-label {
      font-size: medium;
      min-width: 120px;
    }

    .block-minicart .counter-price {
      font-size: medium;
      padding: 15px;
    }

    .flaticon-shopping-cart {
      color: black !important;
    }

    ::marker {
      color: #f9f9fc;
    }


    /* Logo container */
    .logo-container {
      flex: 0 0 auto; /* Không cho logo co giãn */
      padding: 5px;
    }

    /* Logo responsive */
    .responsive-logo {
      max-width: 50px; /* Giới hạn kích thước tối đa */
      height: auto; /* Tự động điều chỉnh chiều cao */
    }

    /* Menu và các phần tử bên phải */
    .nav-top-left {
      flex: 1; /* Chiếm không gian còn lại */
      display: flex;
      justify-content: flex-end; /* Căn các phần tử sang phải */
      gap: 15px; /* Thêm khoảng cách giữa các phần tử */
    }

    /* Media Query: Màn hình nhỏ */
    @media (max-width: 768px) {
      .header {
        flex-direction: row; /* Các phần tử vẫn nằm ngang */
        flex-wrap: wrap; /* Xuống dòng khi cần thiết */
        justify-content: center; /* Căn giữa các phần tử */
      }

      .logo-container,
      .nav-top-left {
        flex: 0 1 100%; /* Mỗi phần tử chiếm toàn bộ chiều rộng */
        text-align: center; /* Căn giữa nội dung bên trong */
      }

      .nav-top-left {
        margin-top: 10px; /* Thêm khoảng cách giữa logo và menu */
      }
    }
  </style>
</head>
<body class="index-opt-1">
<div class="wrapper">
  <form id="block-search-mobile" method="get" class="block-search-mobile">
    <div class="form-content">
      <div class="control">
        <a href="#" class="close-block-serach"
        ><span class="icon flaticon-close"></span
        ></a>
        <input
                type="text"
                name="search"
                placeholder="Search"
                class="input-subscribe"
        />
        <button type="submit" class="btn search">
              <span
              ><i class="flaticon-magnifying-glass" aria-hidden="true"></i
              ></span>
        </button>
      </div>
    </div>
  </form>
  <div id="block-quick-view-popup" class="block-quick-view-popup">
    <div class="quick-view-content">
      <a href="#" class="popup-btn-close"
      ><span class="flaticon-close"></span
      ></a>
      <div class="product-items">
        <div class="product-image">
          <a href="#"><img src="assets/images/popup-pro.jpg" alt="p1"/></a>
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
          <a href="wishlist.html" class="wishlist"
          ><i class="fa fa-heart-o" aria-hidden="true"></i>Add to
            Wishlist</a
          >
          <div class="product-infomation">
            Description Our new HPB12 / A12 battery is rated at 2000mAh and
            designed to power up Black and Decker FireStorm line of 12V
            tools allowing...
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
              <input
                      type="text"
                      value="1"
                      title="Qty"
                      class="input-text qty text"
                      size="1"
              />
              <a href="#" class="sign plus"><i class="fa fa-plus"></i></a>
              <a href="#" class="sign minus"><i class="fa fa-minus"></i></a>
            </div>
          </div>
          <a href="#" class="btn-add-to-cart">Add to cart</a>
        </div>
      </div>
    </div>
  </div>
  <header class="site-header header-opt-1">
    <!-- header-top -->
    <div class="header-top">
      <div class="container">
        <!-- hotline -->
        <ul class="nav-top-left">
          <li>
            <div class="logo-container">
              <a href="index.html">
                <img
                        class="logo responsive-logo"
                        src="<c:url value = "/assets/images/den-trang.svg"/>"
                        alt="logo"
                />
              </a>
            </div>
          </li>
          <div class="form-search">
            <form>
              <div class="box-group">
                <input
                        type="text"
                        class="form-control"
                        placeholder="Search keyword here..."
                />
                <button class="btn btn-search" type="button">
                  <span class="flaticon-magnifying-glass"></span>
                </button>
                <span
                        data-action="toggle-nav"
                        class="menu-on-mobile hidden-md style2"
                >
                      <span class="btn-open-mobile home-page">
                        <span></span>
                        <span></span>
                        <span></span>
                      </span>
                      <span class="title-menu-mobile">Main menu</span>
                    </span>
                <div class="block-minicart dropdown style2">
                  <a class="minicart" href="#">
                        <span class="counter qty">
                          <span class="cart-icon"
                          ><i
                                  class="flaticon-shopping-cart"
                                  aria-hidden="true"
                          ></i
                          ></span>
                          <span class="counter-number">2</span>
                        </span>
                    <span class="counter-your-cart">
                          <span class="counter-label">Your Cart:</span>
                          <span class="counter-price">$00.00</span>
                        </span>
                  </a>
                  <div class="parent-megamenu">
                    <form>
                      <div class="minicart-content-wrapper">
                        <div class="subtitle">
                          You have <span>2</span> item(s) in your cart
                        </div>
                        <div class="minicart-items-wrapper">
                          <ol class="minicart-items">
                            <li class="product-inner">
                              <div class="product-thumb style1">
                                <div class="thumb-inner">
                                  <a href="#"
                                  ><img
                                          src="assets/images/home2/c1.jpg"
                                          alt="c1"
                                  /></a>
                                </div>
                              </div>
                              <div class="product-innfo">
                                <div class="product-name">
                                  <a href="#">Notebook Pro</a>
                                </div>
                                <a href="#" class="remove"
                                ><i
                                        class="flaticon-close"
                                        aria-hidden="true"
                                ></i
                                ></a>
                                <span class="price price-dark">
                                      <ins>$229.00</ins>
                                    </span>
                              </div>
                            </li>
                            <li class="product-inner">
                              <div class="product-thumb style1">
                                <div class="thumb-inner">
                                  <a href="#"
                                  ><img
                                          src="assets/images/home2/c2.jpg"
                                          alt="c2"
                                  /></a>
                                </div>
                              </div>
                              <div class="product-innfo">
                                <div class="product-name">
                                  <a href="#">Bluetooth Speaker</a>
                                </div>
                                <a href="#" class="remove"
                                ><i
                                        class="flaticon-close"
                                        aria-hidden="true"
                                ></i
                                ></a>
                                <span class="price">
                                      <ins>$229.00</ins>
                                      <del>$259.00</del>
                                    </span>
                              </div>
                            </li>
                          </ol>
                        </div>
                        <div class="subtotal">
                          <span class="label">Total :</span>
                          <span class="price">$480.00</span>
                        </div>
                        <div class="actions">
                          <a
                                  class="btn btn-viewcart"
                                  href="shopping-cart.html"
                          >View cart</a
                          >
                          <a class="btn btn-checkout" href="checkout.html"
                          >Checkout</a
                          >
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </ul>
        <ul class="nav-top-right">
          <li><a href="#"><i class="flaticon-profile" aria-hidden="true"> Register / Sign in</i></a></li>
        </ul>
      </div>
    </div>
  </header>
  <div class="header-menu-bar header-sticky">
    <div class="header-menu-nav menu-style-1">
      <div class="container">
        <div class="header-menu-nav-inner">
          <div class="header-menu header-menu-resize">
            <ul class="header-nav dagon-nav">
              <li class="btn-close hidden-md">
                <i class="flaticon-close" aria-hidden="true"></i>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="index.html">Store</a>
                <span class="toggle-submenu hidden-md"></span>
                <ul class="submenu parent-megamenu">
                  <li class="menu-item">
                    <a href="index.html">Home 1</a>
                  </li>
                  <li class="menu-item">
                    <a href="index2.html">Home 2</a>
                  </li>
                  <li class="menu-item">
                    <a href="index3.html">Home 3</a>
                  </li>
                </ul>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="grid-product.html">Mac</a>
                <span class="toggle-submenu hidden-md"></span>
                <ul class="submenu parent-megamenu">
                  <li class="menu-item">
                    <a href="grid-product.html">Grid Product</a>
                  </li>
                  <li class="menu-item">
                    <a href="list-product.html">List Product</a>
                  </li>
                  <li class="menu-item">
                    <a href="list-product-right.html"
                    >List Product Right</a
                    >
                  </li>
                  <li class="menu-item">
                    <a href="grid-product-right.html"
                    >Grid Product Right</a
                    >
                  </li>
                  <li class="menu-item">
                    <a href="detail.html">Detail Product</a>
                  </li>
                </ul>
              </li>
              <li class="menu-item-has-children arrow item-megamenu">
                <a href="#">iPad</a>
                <span class="toggle-submenu hidden-md"></span>
                <div class="submenu parent-megamenu megamenu">
                  <div class="row">
                    <div class="submenu-banner submenu-banner-menu-1">
                      <div class="col-md-4">
                        <div class="dropdown-menu-info">
                          <h6 class="dropdown-menu-title">iPad</h6>
                          <div class="dropdown-menu-content">
                            <ul class="menu">
                              <li class="menu-item">
                                <a href="#">Laptop</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Speakers</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Tablet Computer</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Monitors</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Projector</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Office</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Networking</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="dropdown-menu-info">
                          <h6 class="dropdown-menu-title">Computer</h6>
                          <div class="dropdown-menu-content">
                            <ul class="menu">
                              <li class="menu-item">
                                <a href="#">Computer</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Smartphone </a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Printers</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Game & Consoles</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">New Arrivals</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Monitors</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="menu-item-has-children arrow item-megamenu">
                <a href="#">iPhone</a>
                <span class="toggle-submenu hidden-md"></span>
                <div class="submenu parent-megamenu megamenu">
                  <div class="row">
                    <div class="submenu-banner submenu-banner-menu-2">
                      <div class="col-md-3">
                        <div class="dropdown-menu-info">
                          <h6 class="dropdown-menu-title">iPhone</h6>
                          <div class="dropdown-menu-content">
                            <ul class="menu">
                              <li class="menu-item">
                                <a href="#">Laptop</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Speakers</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Tablet Computer</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Monitors</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Projector</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Office</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Networking</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="dropdown-menu-info">
                          <h6 class="dropdown-menu-title">iPhone</h6>
                          <div class="dropdown-menu-content">
                            <ul class="menu">
                              <li class="menu-item">
                                <a href="#">Computer</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Smartphone </a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Printers</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Game & Consoles</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">New Arrivals</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Monitors</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="dropdown-menu-info">
                          <h6 class="dropdown-menu-title">iPhone</h6>
                          <div class="dropdown-menu-content">
                            <ul class="menu">
                              <li class="menu-item">
                                <a href="#">Computer</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Smartphone </a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Printers</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Game & Consoles</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">New Arrivals</a>
                              </li>
                              <li class="menu-item">
                                <a href="#">Monitors</a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-3"></div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="#">Watch</a>
                <span class="toggle-submenu hidden-md"></span>
                <ul class="submenu parent-megamenu">
                  <li class="menu-item">
                    <a href="checkout.html">Checkout</a>
                  </li>
                  <li class="menu-item">
                    <a href="shopping-cart.html">Shopping Cart</a>
                  </li>
                  <li class="menu-item">
                    <a href="wishlist.html">Wishlist</a>
                  </li>
                  <li class="menu-item">
                    <a href="compare.html">Compare</a>
                  </li>
                </ul>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="#">Airpods</a>
                <span class="toggle-submenu hidden-md"></span>
                <ul class="submenu parent-megamenu">
                  <li class="menu-item">
                    <a href="blog-grid.html">Blog Grid</a>
                  </li>
                  <li class="menu-item">
                    <a href="blog-list.html">Blog List</a>
                  </li>
                  <li class="menu-item">
                    <a href="blog-single.html">Blog Single</a>
                  </li>
                </ul>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="#">Airtag</a>
                <span class="toggle-submenu hidden-md"></span>
                <ul class="submenu parent-megamenu">
                  <li class="menu-item">
                    <a href="about-us.html">About Us</a>
                  </li>
                  <li class="menu-item">
                    <a href="contact-us.html">Contact Us</a>
                  </li>
                  <li class="menu-item">
                    <a href="login.html">Login</a>
                  </li>
                </ul>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="#">Apple TV</a>
                <span class="toggle-submenu hidden-md"></span>
                <ul class="submenu parent-megamenu">
                  <li class="menu-item">
                    <a href="about-us.html">About Us</a>
                  </li>
                  <li class="menu-item">
                    <a href="contact-us.html">Contact Us</a>
                  </li>
                  <li class="menu-item">
                    <a href="login.html">Login</a>
                  </li>
                </ul>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="#">Accessories</a>
                <span class="toggle-submenu hidden-md"></span>
                <ul class="submenu parent-megamenu">
                  <li class="menu-item">
                    <a href="about-us.html">About Us</a>
                  </li>
                  <li class="menu-item">
                    <a href="contact-us.html">Contact Us</a>
                  </li>
                  <li class="menu-item">
                    <a href="login.html">Login</a>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  </header>
  </div>


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
</body>
</html>
