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
    <!-- HEADER -->
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
                                        src="assets/images/den-trang.svg"
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

    <!-- header-top -->

    <!-- header-menu-bar -->
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
    <!-- end header-menu-bar -->
    </header>
    <!-- END HEADER -->
    <!-- MAIN -->
    <main class="site-main">
        <div class="block-section-1">
            <div class="main-slide slide-opt-1 full-width">
                <div
                        class="owl-carousel nav-style1"
                        data-nav="false"
                        data-autoplay="false"
                        data-dots="true"
                        data-loop="true"
                        data-margin="0"
                        data-responsive='{"0":{"items":1},"600":{"items":1},"1000":{"items":1}}'
                >
                    <div class="item-slide item-slide-1">
                        <div class="slide-desc slide-desc-1">
                            <div class="container">
                                <div class="container-inner">
                                    <div class="p-primary">Discovery And Explore Digital</div>
                                    <p>
                                        Vehicula curae mi senectus sodales proin, ultricies
                                        gravida.
                                    </p>
                                    <a href="grid-product.html" class="btn-shop-now"
                                    >Shop Now</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item-slide item-slide-2">
                        <div class="slide-desc slide-desc-2">
                            <div class="container">
                                <div class="container-inner">
                                    <div class="p-primary">Smart Watches New Collection</div>
                                    <p>
                                        Inceptos aptent eleifend metus. Porta montes nibh mollis
                                    </p>
                                    <a href="grid-product.html" class="btn-shop-now"
                                    >Shop Now</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item-slide item-slide-3">
                        <div class="slide-desc slide-desc-3">
                            <div class="container">
                                <div class="container-inner">
                                    <div class="p-primary">
                                        Follow Keeping through Control
                                    </div>
                                    <p>
                                        Lorem ipsum dolor sit amet consectetur, adipiscing
                                        turpis
                                    </p>
                                    <a href="grid-product.html" class="btn-shop-now"
                                    >Shop Now</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="block-section-99">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="dagon-iconbox style-02">
                            <div class="iconbox-inner">
                                <div class="icon">
                                    <span class="flaticon-delivery-truck"></span>
                                </div>
                                <div class="content">
                                    <h4 class="title">FAST SHIPPING</h4>
                                    <p class="text">Dispatch on most items</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="dagon-iconbox style-02">
                            <div class="iconbox-inner">
                                <div class="icon">
                                    <span class="flaticon-refresh"></span>
                                </div>
                                <div class="content">
                                    <h4 class="title">30 DAY RETURns</h4>
                                    <p class="text">For peace of mind</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="dagon-iconbox style-02">
                            <div class="iconbox-inner">
                                <div class="icon">
                                    <span class="flaticon-quality-badge"></span>
                                </div>
                                <div class="content">
                                    <h4 class="title">BEST FURNITURE</h4>
                                    <p class="text">Online retailer for home</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="block-daily-deals style1">
            <div class="container">
                <div class="title-of-section main-title">Daily deals</div>
                <div
                        class="owl-carousel nav-style2 border-background equal-container"
                        data-nav="true"
                        data-autoplay="false"
                        data-dots="false"
                        data-loop="true"
                        data-margin="30"
                        data-responsive='{"0":{"items":1},"530":{"items":2},"768":{"items":3},"992":{"items":2}}'
                >
                    <div class="deal-of-day equal-elem">
                        <div class="product-thumb style1">
                            <div class="thumb-inner">
                                <a href="#"
                                ><img src="assets/images/home2/d1.jpg" alt="d1"
                                /></a>
                            </div>
                        </div>
                        <div class="product-innfo">
                            <div class="product-name">
                                <a href="#">Ultra HD Roku Smart</a>
                            </div>
                            <span class="price">
                    <ins>$229.00</ins>
                    <del>$259.00</del>
                    <span class="onsale">-50%</span>
                  </span>
                            <span class="star-rating">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <span class="review">5 Review(s)</span>
                  </span>
                            <div class="product-count-down">
                                <div
                                        class="kt-countdown"
                                        data-y="2020"
                                        data-m="6"
                                        data-d="1"
                                        data-h="10"
                                        data-i="0"
                                        data-s="0"
                                ></div>
                            </div>
                            <a href="#" class="btn-add-to-cart">Add to cart</a>
                        </div>
                    </div>
                    <div class="deal-of-day equal-elem">
                        <div class="product-thumb style1">
                            <div class="thumb-inner">
                                <a href="#"
                                ><img src="assets/images/home2/d2.jpg" alt="d2"
                                /></a>
                            </div>
                        </div>
                        <div class="product-innfo">
                            <div class="product-name">
                                <a href="#">Cellphone Factory</a>
                            </div>
                            <span class="price">
                    <ins>$229.00</ins>
                    <del>$259.00</del>
                    <span class="onsale">-50%</span>
                  </span>
                            <span class="star-rating">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <span class="review">5 Review(s)</span>
                  </span>
                            <div class="product-count-down">
                                <div
                                        class="kt-countdown"
                                        data-y="2020"
                                        data-m="7"
                                        data-d="1"
                                        data-h="20"
                                        data-i="0"
                                        data-s="0"
                                ></div>
                            </div>
                            <a href="#" class="btn-add-to-cart">Add to cart</a>
                        </div>
                    </div>
                    <div class="deal-of-day equal-elem">
                        <div class="product-thumb style1">
                            <div class="thumb-inner">
                                <a href="#"
                                ><img src="assets/images/home2/d1.jpg" alt="d1"
                                /></a>
                            </div>
                        </div>
                        <div class="product-innfo">
                            <div class="product-name">
                                <a href="#">Ultra HD Roku Smart</a>
                            </div>
                            <span class="price">
                    <ins>$229.00</ins>
                    <del>$259.00</del>
                    <span class="onsale">-50%</span>
                  </span>
                            <span class="star-rating">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <span class="review">5 Review(s)</span>
                  </span>
                            <div class="product-count-down">
                                <div
                                        class="kt-countdown"
                                        data-y="2020"
                                        data-m="6"
                                        data-d="1"
                                        data-h="10"
                                        data-i="0"
                                        data-s="0"
                                ></div>
                            </div>
                            <a href="#" class="btn-add-to-cart">Add to cart</a>
                        </div>
                    </div>
                    <div class="deal-of-day equal-elem">
                        <div class="product-thumb style1">
                            <div class="thumb-inner">
                                <a href="#"
                                ><img src="assets/images/home2/d2.jpg" alt="d2"
                                /></a>
                            </div>
                        </div>
                        <div class="product-innfo">
                            <div class="product-name">
                                <a href="#">Cellphone Factory</a>
                            </div>
                            <span class="price">
                    <ins>$229.00</ins>
                    <del>$259.00</del>
                    <span class="onsale">-50%</span>
                  </span>
                            <span class="star-rating">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <span class="review">5 Review(s)</span>
                  </span>
                            <div class="product-count-down">
                                <div
                                        class="kt-countdown"
                                        data-y="2020"
                                        data-m="7"
                                        data-d="1"
                                        data-h="20"
                                        data-i="0"
                                        data-s="0"
                                ></div>
                            </div>
                            <a href="#" class="btn-add-to-cart">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="block-section-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-5">
                        <div class="promotion-banner style-1">
                            <a href="#" class="banner-img">
                                <img
                                        src="assets/images/home2/banner-1.jpg"
                                        alt="banner-1"
                                />
                            </a>
                            <div class="promotion-banner-inner">
                                <h4>Headphone</h4>
                                <h3>Sale <strong>40%</strong> Off</h3>
                                <a class="banner-link" href="grid-product.html">Shop now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-7">
                        <div class="promotion-banner style-1">
                            <a href="#" class="banner-img"
                            ><img src="assets/images/home2/banner-2.jpg" alt="banner-2"
                            /></a>
                            <div class="promotion-banner-inner">
                                <h4>New Arrivals</h4>
                                <h3>Get <strong>25%</strong> Flat Off</h3>
                                <a class="banner-link" href="grid-product.html">Shop now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="block-section-4">
            <div class="container">
                <div class="title-of-section main-title">Featured Products</div>
                <div class="tab-product tab-product-fade-effect">
                    <ul class="box-tabs nav-tab">
                        <li class="active">
                            <a data-animated="" data-toggle="tab" href="#tab-1"
                            >All Products</a
                            >
                        </li>
                        <li>
                            <a data-animated="" data-toggle="tab" href="#tab-2">Camera</a>
                        </li>
                        <li>
                            <a data-animated="" data-toggle="tab" href="#tab-3">Laptop</a>
                        </li>
                        <li>
                            <a data-animated="" data-toggle="tab" href="#tab-4"
                            >Consoles</a
                            >
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-container">
                            <div id="tab-1" class="tab-panel active">
                                <div
                                        class="owl-carousel nav-style2 border-background equal-container"
                                        data-nav="false"
                                        data-autoplay="false"
                                        data-dots="false"
                                        data-loop="true"
                                        data-margin="30"
                                        data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'
                                >
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p1.jpg"
                                                                alt="p1"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Game Controller </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p6.jpg"
                                                                alt="p6"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Retina Laptop </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p2.jpg"
                                                                alt="p2"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Photo Camera </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p7.jpg"
                                                                alt="p7"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Ring Video Doorbell </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p3.jpg"
                                                                alt="p3"
                                                        /></a>
                                                    </div>
                                                    <span class="onnew">new</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone 4 GB </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p8.jpg"
                                                                alt="p8"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Retina Laptop </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p4.jpg"
                                                                alt="p4"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone New </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p9.jpg"
                                                                alt="p9"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone New </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p5.jpg"
                                                                alt="p5"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Notebook Pro </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p10.jpg"
                                                                alt="p10"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Notebook Pro </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab-2" class="tab-panel">
                                <div
                                        class="owl-carousel nav-style2 border-background equal-container"
                                        data-nav="false"
                                        data-autoplay="false"
                                        data-dots="false"
                                        data-loop="true"
                                        data-margin="30"
                                        data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'
                                >
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p6.jpg"
                                                                alt="p6"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Retina Laptop </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p2.jpg"
                                                                alt="p2"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Photo Camera </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p7.jpg"
                                                                alt="p7"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Ring Video Doorbell </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p1.jpg"
                                                                alt="p1"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Game Controller </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p8.jpg"
                                                                alt="p8"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Retina Laptop </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p4.jpg"
                                                                alt="p4"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone New </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p3.jpg"
                                                                alt="p3"
                                                        /></a>
                                                    </div>
                                                    <span class="onnew">new</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone 4 GB </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p9.jpg"
                                                                alt="p9"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone New </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p5.jpg"
                                                                alt="p5"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Notebook Pro </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p10.jpg"
                                                                alt="p10"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Notebook Pro </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab-3" class="tab-panel">
                                <div
                                        class="owl-carousel nav-style2 border-background equal-container"
                                        data-nav="false"
                                        data-autoplay="false"
                                        data-dots="false"
                                        data-loop="true"
                                        data-margin="30"
                                        data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'
                                >
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p3.jpg"
                                                                alt="p3"
                                                        /></a>
                                                    </div>
                                                    <span class="onnew">new</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone 4 GB </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p2.jpg"
                                                                alt="p2"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Photo Camera </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p10.jpg"
                                                                alt="p10"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Notebook Pro </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p1.jpg"
                                                                alt="p1"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Game Controller </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p8.jpg"
                                                                alt="p8"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Retina Laptop </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p4.jpg"
                                                                alt="p4"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone New </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p6.jpg"
                                                                alt="p6"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Retina Laptop </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p9.jpg"
                                                                alt="p9"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone New </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p5.jpg"
                                                                alt="p5"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Notebook Pro </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p7.jpg"
                                                                alt="p7"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Ring Video Doorbell </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="tab-4" class="tab-panel">
                                <div
                                        class="owl-carousel nav-style2 border-background equal-container"
                                        data-nav="false"
                                        data-autoplay="false"
                                        data-dots="false"
                                        data-loop="true"
                                        data-margin="30"
                                        data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'
                                >
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p2.jpg"
                                                                alt="p2"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Photo Camera </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p6.jpg"
                                                                alt="p6"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Retina Laptop </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p1.jpg"
                                                                alt="p1"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Game Controller </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p7.jpg"
                                                                alt="p7"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Ring Video Doorbell </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p4.jpg"
                                                                alt="p4"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone New </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p3.jpg"
                                                                alt="p3"
                                                        /></a>
                                                    </div>
                                                    <span class="onnew">new</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone 4 GB </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p8.jpg"
                                                                alt="p8"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Retina Laptop </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p9.jpg"
                                                                alt="p9"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Smartphone New </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="owl-one-row">
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p5.jpg"
                                                                alt="p5"
                                                        /></a>
                                                    </div>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Notebook Pro </a>
                                                    </div>
                                                    <span class="price price-dark">
                                <ins>$229.00</ins>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-item style1">
                                            <div class="product-inner equal-elem">
                                                <div class="product-thumb">
                                                    <div class="thumb-inner">
                                                        <a href="#"
                                                        ><img
                                                                src="assets/images/home2/p10.jpg"
                                                                alt="p10"
                                                        /></a>
                                                    </div>
                                                    <span class="onsale">-50%</span>
                                                    <a href="#" class="quick-view">Quick View</a>
                                                </div>
                                                <div class="product-innfo">
                                                    <div class="product-name">
                                                        <a href="#">Notebook Pro </a>
                                                    </div>
                                                    <span class="price">
                                <ins>$229.00</ins>
                                <del>$259.00</del>
                              </span>
                                                    <span class="star-rating">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <span class="review">5 Review(s)</span>
                              </span>
                                                    <div class="group-btn-hover">
                                                        <div class="inner">
                                                            <a href="compare.html" class="compare"
                                                            ><i class="fa fa-exchange"></i
                                                            ></a>
                                                            <a href="#" class="add-to-cart"
                                                            >Add to cart</a
                                                            >
                                                            <a href="wishlist.html" class="wishlist"
                                                            ><i
                                                                    class="fa fa-heart-o"
                                                                    aria-hidden="true"
                                                            ></i
                                                            ></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="block-section-6 page-product">
            <div class="container">
                <div class="promotion-banner style-3">
                    <a href="#" class="banner-img"
                    ><img src="assets/images/home2/banner-3.jpg" alt="banner-3"
                    /></a>
                    <div class="promotion-banner-inner">
                        <h4>Top Collection</h4>
                        <h3>All New Smart Watches</h3>
                        <a class="banner-link" href="grid-product.html">Shop now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="block-the-blog">
            <div class="container">
                <div class="title-of-section"><span>From The Blog</span></div>
                <div
                        class="owl-carousel nav-style2"
                        data-nav="true"
                        data-autoplay="false"
                        data-dots="true"
                        data-loop="true"
                        data-margin="30"
                        data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":2},"992":{"items":3}}'
                >
                    <div class="blog-item">
                        <div class="post-thumb">
                            <a href="#"
                            ><img src="assets/images/home1/blog1.jpg" alt="blog1"
                            /></a>
                        </div>
                        <div class="post-item-info">
                            <h3 class="post-name">
                                <a href="#">It’s all about the bread: whole grain home</a>
                            </h3>
                            <div class="post-metas">
                                <span class="author">Post by: <span>Admin</span></span>
                                <span class="comment"
                                ><i class="fa fa-comment" aria-hidden="true"></i>36
                      Comments</span
                                >
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipiscing, elit
                                integer urna placerat donec, cum viverra egestas ac
                                luctus...
                            </div>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="post-thumb">
                            <a href="#"
                            ><img src="assets/images/home1/blog2.jpg" alt="blog2"
                            /></a>
                        </div>
                        <div class="post-item-info">
                            <h3 class="post-name">
                                <a href="#">Ridiculus nascetur, malesuada non in netus.</a>
                            </h3>
                            <div class="post-metas">
                                <span class="author">Post by: <span>Admin</span></span>
                                <span class="comment"
                                ><i class="fa fa-comment" aria-hidden="true"></i>36
                      Comments</span
                                >
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipiscing, elit
                                integer urna placerat donec, cum viverra egestas ac
                                luctus...
                            </div>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="post-thumb">
                            <a href="#"
                            ><img src="assets/images/home1/blog3.jpg" alt="blog3"
                            /></a>
                        </div>
                        <div class="post-item-info">
                            <h3 class="post-name">
                                <a href="#">Using Lorem Ipsum allows designers to put</a>
                            </h3>
                            <div class="post-metas">
                                <span class="author">Post by: <span>Admin</span></span>
                                <span class="comment"
                                ><i class="fa fa-comment" aria-hidden="true"></i>36
                      Comments</span
                                >
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipiscing, elit
                                integer urna placerat donec, cum viverra egestas ac
                                luctus...
                            </div>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="post-thumb">
                            <a href="#"
                            ><img src="assets/images/home1/blog1.jpg" alt="blog1"
                            /></a>
                        </div>
                        <div class="post-item-info">
                            <h3 class="post-name">
                                <a href="#">It’s all about the bread: whole grain home</a>
                            </h3>
                            <div class="post-metas">
                                <span class="author">Post by: <span>Admin</span></span>
                                <span class="comment"
                                ><i class="fa fa-comment" aria-hidden="true"></i>36
                      Comments</span
                                >
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipiscing, elit
                                integer urna placerat donec, cum viverra egestas ac
                                luctus...
                            </div>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="post-thumb">
                            <a href="#"
                            ><img src="assets/images/home1/blog2.jpg" alt="blog2"
                            /></a>
                        </div>
                        <div class="post-item-info">
                            <h3 class="post-name">
                                <a href="#">Ridiculus nascetur, malesuada non in netus.</a>
                            </h3>
                            <div class="post-metas">
                                <span class="author">Post by: <span>Admin</span></span>
                                <span class="comment"
                                ><i class="fa fa-comment" aria-hidden="true"></i>36
                      Comments</span
                                >
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipiscing, elit
                                integer urna placerat donec, cum viverra egestas ac
                                luctus...
                            </div>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="post-thumb">
                            <a href="#"
                            ><img src="assets/images/home1/blog3.jpg" alt="blog3"
                            /></a>
                        </div>
                        <div class="post-item-info">
                            <h3 class="post-name">
                                <a href="#">Using Lorem Ipsum allows designers to put</a>
                            </h3>
                            <div class="post-metas">
                                <span class="author">Post by: <span>Admin</span></span>
                                <span class="comment"
                                ><i class="fa fa-comment" aria-hidden="true"></i>36
                      Comments</span
                                >
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipiscing, elit
                                integer urna placerat donec, cum viverra egestas ac
                                luctus...
                            </div>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="post-thumb">
                            <a href="#"
                            ><img src="assets/images/home1/blog1.jpg" alt="blog1"
                            /></a>
                        </div>
                        <div class="post-item-info">
                            <h3 class="post-name">
                                <a href="#">It’s all about the bread: whole grain home</a>
                            </h3>
                            <div class="post-metas">
                                <span class="author">Post by: <span>Admin</span></span>
                                <span class="comment"
                                ><i class="fa fa-comment" aria-hidden="true"></i>36
                      Comments</span
                                >
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipiscing, elit
                                integer urna placerat donec, cum viverra egestas ac
                                luctus...
                            </div>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="post-thumb">
                            <a href="#"
                            ><img src="assets/images/home1/blog2.jpg" alt="blog2"
                            /></a>
                        </div>
                        <div class="post-item-info">
                            <h3 class="post-name">
                                <a href="#">Ridiculus nascetur, malesuada non in netus.</a>
                            </h3>
                            <div class="post-metas">
                                <span class="author">Post by: <span>Admin</span></span>
                                <span class="comment"
                                ><i class="fa fa-comment" aria-hidden="true"></i>36
                      Comments</span
                                >
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipiscing, elit
                                integer urna placerat donec, cum viverra egestas ac
                                luctus...
                            </div>
                        </div>
                    </div>
                    <div class="blog-item">
                        <div class="post-thumb">
                            <a href="#"
                            ><img src="assets/images/home1/blog3.jpg" alt="blog3"
                            /></a>
                        </div>
                        <div class="post-item-info">
                            <h3 class="post-name">
                                <a href="#">Using Lorem Ipsum allows designers to put</a>
                            </h3>
                            <div class="post-metas">
                                <span class="author">Post by: <span>Admin</span></span>
                                <span class="comment"
                                ><i class="fa fa-comment" aria-hidden="true"></i>36
                      Comments</span
                                >
                            </div>
                            <div>
                                Lorem ipsum dolor sit amet consectetur adipiscing, elit
                                integer urna placerat donec, cum viverra egestas ac
                                luctus...
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- end MAIN -->
    <!-- FOOTER -->
    <footer class="site-footer footer-opt-2">
        <div class="footer-top full-width">
            <div
                    class="owl-carousel instagram"
                    data-nav="false"
                    data-autoplay="false"
                    data-dots="false"
                    data-loop="true"
                    data-margin="0"
                    data-responsive='{"0":{"items":2},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":5}}'
            >
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-1.jpg" alt="img"/>
                    </a>
                    <span class="text">
                <i class="icon fa fa-instagram" aria-hidden="true"></i>
              </span>
                </div>
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-2.jpg" alt="img"/>
                    </a>
                    <span class="text">
                <i class="icon fa fa-instagram" aria-hidden="true"></i>
              </span>
                </div>
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-3.jpg" alt="img"/>
                    </a>
                    <span class="text">
                <i class="icon fa fa-instagram" aria-hidden="true"></i>
              </span>
                </div>
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-4.jpg" alt="img"/>
                    </a>
                    <span class="text">
                <i class="icon fa fa-instagram" aria-hidden="true"></i>
              </span>
                </div>
                <div class="item-instagram">
                    <a href="#">
                        <img src="assets/images/item-instagram-5.jpg" alt="img"/>
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
                        <div class="logo-footer">
                            <img src="assets/images/logo-light.png" alt="logo"/>
                        </div>
                        <div class="contacts">
                            <p class="contacts-info">
                                Nullam tristique tortor nibh, in viverra libero sollicitudin
                                ac. Suspendisse quis lacinia ipsum. Etiam scelerisque sit
                                amet lectus quis lacinia. Sed.
                            </p>
                            <span class="contacts-info info-address"
                            >218 Fifth Avenue, HeavenTower NewYork City</span
                            >
                            <span class="contacts-info info-phone"
                            >(+68) 123 456 7890</span
                            >
                            <span class="contacts-info info-support"
                            >Hot-Support@Dagon.com</span
                            >
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
                            <span class="span-newsletter"
                            >Get notified of new products, limited releases, and
                    more.</span
                            >
                            <div class="newsletter-form">
                                <form
                                        id="newsletter-validate-detail"
                                        class="form subscribe"
                                >
                                    <div class="control">
                                        <input
                                                type="email"
                                                placeholder="Enter your email"
                                                id="newsletter"
                                                name="email"
                                                class="input-subscribe"
                                        />
                                        <button
                                                type="submit"
                                                title="Subscribe"
                                                class="btn subscribe"
                                        >
                                            <span>Sign Up</span>
                                        </button>
                                    </div>
                                </form>
                            </div>
                            <div class="socials">
                                <a href="#" class="social"
                                ><i class="fa fa-twitter" aria-hidden="true"></i
                                ></a>
                                <a href="#" class="social"
                                ><i class="fa fa-facebook" aria-hidden="true"></i
                                ></a>
                                <a href="#" class="social"
                                ><i class="fa fa-pinterest" aria-hidden="true"></i
                                ></a>
                                <a href="#" class="social"
                                ><i class="fa fa-instagram" aria-hidden="true"></i
                                ></a>
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
                    <a href="#"
                    ><img src="assets/images/general/pay1.jpg" alt="pay1"
                    /></a>
                    <a href="#"
                    ><img src="assets/images/general/pay2.jpg" alt="pay2"
                    /></a>
                    <a href="#"
                    ><img src="assets/images/general/pay3.jpg" alt="pay3"
                    /></a>
                    <a href="#"
                    ><img src="assets/images/general/pay4.jpg" alt="pay4"
                    /></a>
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
</body>
</html>