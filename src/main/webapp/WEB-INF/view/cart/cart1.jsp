<%@ page import="com.codegym.pineapple.model.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>Dagon</title>
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
</head>
<body class="page-product">
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
                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i>Add to
                        Wishlist</a>
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
    <header class="site-header header-opt-1">
        <!-- header-top -->
        <div class="header-top">
            <div class="container">
                <!-- hotline -->
                <ul class="nav-top-left">
                    <li><a href="#">Welcome to Dagon Shop</a></li>
                </ul><!-- hotline -->
                <!-- heder links -->
                <ul class="nav-top-right dagon-nav">
                    <li class="menu-item-has-children">
                        <a href="#" class="dropdown-toggle">
                            <img src="assets/images/general/l1.jpg" alt="flag">English<i class="fa fa-angle-down"
                                                                                         aria-hidden="true"></i>
                        </a>
                        <ul class="submenu parent-megamenu">
                            <li class="switcher-option">
                                <a href="#" class="flag"><img src="assets/images/general/l1.jpg" alt="flag">English</a>
                            </li>
                            <li class="switcher-option">
                                <a href="#" class="flag"><img src="assets/images/general/l2.jpg" alt="flag">Hungary</a>
                            </li>
                            <li class="switcher-option">
                                <a href="#" class="flag"><img src="assets/images/general/l3.jpg" alt="flag">German</a>
                            </li>
                            <li class="switcher-option">
                                <a href="#" class="flag"><img src="assets/images/general/l4.jpg" alt="flag">French</a>
                            </li>
                            <li class="switcher-option">
                                <a href="#" class="flag"><img src="assets/images/general/l5.jpg" alt="flag">Canada</a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children">
                        <a href="#" class="dropdown-toggle">
                            <span>Dollar (US)</span><i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="submenu parent-megamenu">
                            <li class="switcher-option">
                                <a href="#" class="switcher-flag icon">Pound (GBP)</a>
                            </li>
                            <li class="switcher-option">
                                <a href="#" class="switcher-flag icon">Euro (EUR)</a>
                            </li>
                            <li class="switcher-option">
                                <a href="#" class="switcher-flag icon">Dollar (USD)</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="flaticon-profile" aria-hidden="true"></i>Register / Sign in</a></li>
                </ul><!-- heder links -->
            </div>
        </div> <!-- header-top -->
        <!-- header-content -->
        <div class="header-content">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 nav-left">
                        <!-- logo -->
                        <strong class="logo">
                            <a href="index.html"><img src="assets/images/logo.png" alt="logo"></a>
                        </strong><!-- logo -->
                    </div>
                    <div class="col-md-8 nav-mind">
                        <!-- block search -->
                        <div class="block-search">
                            <div class="block-content">
                                <div class="categori-search  ">
                                    <select title="categories" data-placeholder="All Categories"
                                            class="chosen-select categori-search-option">
                                        <option value="">All Categories</option>
                                        <optgroup label="LifeStyle">
                                            <option>Cell Phones</option>
                                            <option>Game & Consoles</option>
                                            <option>Smart Watchs</option>
                                        </optgroup>
                                        <optgroup label="Smartphone">
                                            <option>Cell Phones</option>
                                            <option>Game & Consoles</option>
                                            <option>Smart Watchs</option>
                                        </optgroup>
                                        <optgroup label="LifeStyle">
                                            <option>Cell Phones</option>
                                            <option>Game & Consoles</option>
                                            <option>Smart Watchs</option>
                                        </optgroup>
                                        <optgroup label="Smartphone">
                                            <option>Cell Phones</option>
                                            <option>Game & Consoles</option>
                                            <option>Smart Watchs</option>
                                        </optgroup>
                                    </select>
                                </div>
                                <div class="form-search">
                                    <form>
                                        <div class="box-group">
                                            <input type="text" class="form-control"
                                                   placeholder="Search keyword here...">
                                            <button class="btn btn-search" type="button"><span
                                                    class="flaticon-magnifying-glass"></span></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div><!-- block search -->
                    </div>
                    <!-- block mini cart -->
                    <div class="block-minicart dropdown">
                        <a class="minicart" href="#">

                                    <span class="counter qty">

                                        <span class="cart-icon"><i class="flaticon-shopping-cart"
                                                                   aria-hidden="true"></i></span>

                                        <span class="counter-number">${cart.numberOfItem}</span>

                                    </span>
                            <span class="counter-your-cart">

                                        <span class="counter-label">Your Cart:</span>

                                        <span class="counter-price">
                                            <fmt:formatNumber value="${cart.totalPrice}"
                                                              type="number" minFractionDigits="0"
                                                              maxFractionDigits="2"/>
                                        </span>

                                    </span>
                        </a>
                        <div class="parent-megamenu">
                            <form>
                                <div class="minicart-content-wrapper">
                                    <div class="subtitle">
                                        You have <span>${cart.numberOfItem}</span> item(s) in your cart
                                    </div>

                                    <div class="subtotal">
                                        <span class="label">Total :</span>
                                        <span class="price">
                                                <fmt:formatNumber value="${cart.totalPrice}"
                                                                  type="number" minFractionDigits="0"
                                                                  maxFractionDigits="2"/>
                                            </span>
                                    </div>
                                    <div class="actions">
                                        <a class="btn btn-viewcart" href="shopping-cart.html">View cart</a>
                                        <a class="btn btn-checkout" href="checkout.html">Checkout</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div><!-- block mini cart -->
                    <a href="#" class="hidden-md search-hidden"><span class="flaticon-magnifying-glass"></span></a>
                    <a class="wishlist-minicart" href="wishlist.html"><i class="fa fa-heart-o"
                                                                         aria-hidden="true"></i></a>
                </div>
            </div>
        </div>
        <!-- header-content -->
        <!-- header-menu-bar -->
        <div class="header-menu-bar header-sticky">
            <div class="header-menu-nav menu-style-2">
                <div class="container">
                    <div class="header-menu-nav-inner">
                        <div id="box-vertical-megamenus" class="box-vertical-megamenus nav-toggle-cat">
                            <h4 class="title active">

                                    <span class="btn-open-mobile home-page">

                                        <span></span>

                                        <span></span>

                                        <span></span>

                                    </span>
                                <span class="title-menu">All Departments</span>
                            </h4>
                            <div class="vertical-menu-content">
                                <span class="btn-close hidden-md"><i class="flaticon-close"
                                                                     aria-hidden="true"></i></span>
                                <ul class="vertical-menu-list">
                                    <li><a href="#">New Arrivals</a></li>
                                    <li class="menu-item-has-children arrow item-megamenu">
                                        <a href="#" class="dropdown-toggle">Tv & Audio</a>
                                        <span class="toggle-submenu hidden-md"></span>
                                        <div class="submenu parent-megamenu megamenu">
                                            <div class="row">
                                                <div class="submenu-banner submenu-banner-menu-1">
                                                    <div class="col-md-4">
                                                        <div class="dropdown-menu-info">
                                                            <h6 class="dropdown-menu-title">Smartphone</h6>
                                                            <div class="dropdown-menu-content">
                                                                <ul class="menu">
                                                                    <li class="menu-item"><a href="#">Monitors
                                                                    </a></li>
                                                                    <li class="menu-item"><a href="#">Tablet</a></li>
                                                                    <li class="menu-item"><a href="#">Computer
                                                                    </a></li>
                                                                    <li class="menu-item"><a href="#">Bestseller</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Top Rated</a></li>
                                                                    <li class="menu-item"><a href="#">Office</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Networking</a>
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
                                                                    <li class="menu-item"><a href="#">Smart
                                                                        Computer</a></li>
                                                                    <li class="menu-item"><a href="#">Bluetooth
                                                                    </a></li>
                                                                    <li class="menu-item"><a href="#">Soundbars</a></li>
                                                                    <li class="menu-item"><a href="#">
                                                                        Computer</a></li>
                                                                    <li class="menu-item"><a href="#">New Arrivals</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Monitors</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="menu-item-has-children arrow item-megamenu">
                                        <a href="#" class="dropdown-toggle">Laptop</a>
                                        <span class="toggle-submenu hidden-md"></span>
                                        <div class="submenu parent-megamenu megamenu">
                                            <div class="row">
                                                <div class="submenu-banner submenu-banner-menu-1">
                                                    <div class="col-md-4">
                                                        <div class="dropdown-menu-info">
                                                            <h6 class="dropdown-menu-title">Smartphone</h6>
                                                            <div class="dropdown-menu-content">
                                                                <ul class="menu">
                                                                    <li class="menu-item"><a href="#">Monitors
                                                                    </a></li>
                                                                    <li class="menu-item"><a href="#">Tablet</a></li>
                                                                    <li class="menu-item"><a href="#">Computer
                                                                    </a></li>
                                                                    <li class="menu-item"><a href="#">Bestseller</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Top Rated</a></li>
                                                                    <li class="menu-item"><a href="#">Office</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Networking</a>
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
                                                                    <li class="menu-item"><a href="#">Smart
                                                                        Computer</a></li>
                                                                    <li class="menu-item"><a href="#">Bluetooth
                                                                    </a></li>
                                                                    <li class="menu-item"><a href="#">Soundbars</a></li>
                                                                    <li class="menu-item"><a href="#">
                                                                        Computer</a></li>
                                                                    <li class="menu-item"><a href="#">New Arrivals</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Monitors</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="#">Computer</a>
                                    </li>
                                    <li><a href="#">Smartphone </a></li>
                                    <li class="menu-item-has-children arrow item-megamenu">
                                        <a href="#" class="dropdown-toggle">Printers</a>
                                        <span class="toggle-submenu hidden-md"></span>
                                        <div class="submenu parent-megamenu megamenu">
                                            <div class="row">
                                                <div class="submenu-banner submenu-banner-menu-1">
                                                    <div class="col-md-4">
                                                        <div class="dropdown-menu-info">
                                                            <h6 class="dropdown-menu-title">Camera</h6>
                                                            <div class="dropdown-menu-content">
                                                                <ul class="menu">
                                                                    <li class="menu-item"><a href="#">Monitor
                                                                    </a></li>
                                                                    <li class="menu-item"><a href="#">Speakers</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Tablet
                                                                        Computer</a></li>
                                                                    <li class="menu-item"><a href="#">Monitors</a></li>
                                                                    <li class="menu-item"><a href="#">Projector</a></li>
                                                                    <li class="menu-item"><a href="#">Office</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Networking</a>
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
                                                                    <li class="menu-item"><a href="#">Computer</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Phone
                                                                    </a></li>
                                                                    <li class="menu-item"><a href="#">Printers</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Game &
                                                                        Consoles</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">New Arrivals</a>
                                                                    </li>
                                                                    <li class="menu-item"><a href="#">Monitors</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="#">Camera</a></li>
                                    <li><a href="#">Game & Consoles</a></li>
                                    <li><a href="#">Tablet</a></li>
                                    <li><a href="#">Monitors</a></li>
                                    <li><a href="#">Drivers</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="header-menu header-menu-resize">
                            <ul class="header-nav dagon-nav">
                                <li class="btn-close hidden-md"><i class="flaticon-close" aria-hidden="true"></i></li>
                                <li class="menu-item-has-children arrow">
                                    <a href="index2.html" class="dropdown-toggle">Home</a>
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
                                    <a href="#" class="dropdown-toggle">Shop</a>
                                    <span class="toggle-submenu hidden-md"></span>
                                    <ul class="submenu parent-megamenu">
                                        <li class="menu-item">
                                            <a href="grid-product.html">Grid Product</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="list-product.html">List Product</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="list-product-right.html">List Product Right</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="grid-product-right.html">Grid Product Right</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="detail.html">Detail Product</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item-has-children arrow">
                                    <a href="#" class="dropdown-toggle">Sub Menu</a>
                                    <span class="toggle-submenu hidden-md"></span>
                                    <ul class="submenu parent-megamenu">
                                        <li class="menu-item">
                                            <a href="checkout.html">Checkout</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="shopping-cart.html">Shopping Cart</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="contact-us.html">Contact Us</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="login.html">Login</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="wishlist.html">Wishlist</a>
                                        </li>
                                        <li class="menu-item">
                                            <a href="compare.html">Compare</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="contact-us.html" class="dropdown-toggle">Contact Us</a>
                                    <span class="toggle-submenu hidden-md"></span>
                                </li>
                                <li class="menu-item-has-children arrow">
                                    <a href="#" class="dropdown-toggle">Blog</a>
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
                            </ul>
                        </div>
                        <span data-action="toggle-nav" class="menu-on-mobile hidden-md">

                                <span class="btn-open-mobile home-page">

                                    <span></span>

                                    <span></span>

                                    <span></span>

                                </span>

                                <span class="title-menu-mobile">Main menu</span>

                            </span>
                    </div>
                </div>
            </div>
        </div>
    </header><!-- end HEADER -->
    <!-- MAIN -->
    <main class="site-main shopping-cart">
        <div class="container">
            <ol class="breadcrumb-page">
                <li><a href="index.html">Home </a></li>
                <li class="active"><a href="#">Shopping Cart</a></li>
            </ol>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <form class="form-cart">
                        <div class="table-cart">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="tb-image"></th>
                                    <th class="tb-product">Product Name</th>
                                    <th class="tb-price">Unit Price</th>
                                    <th class="tb-color">Color</th>
                                    <th class="tb-qty">Quantity</th>
                                    <th class="tb-total">SubTotal</th>
                                    <th class="tb-remove"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${sessionScope.cart.cartItems}">
                                    <tr>
                                        <td class="tb-image"><a href="#" class="item-photo"><img
                                                src="assets/images/cart1.jpg"
                                                alt="cart"></a></td>
                                        <td class="tb-product">
                                            <div class="product-name"><a href="#">${item.productName}</a></div>
                                        </td>
                                        <td class="tb-price">
                                            <span class="price">
                                                <fmt:formatNumber value="${item.productDetail.price}"
                                                                  type="number" minFractionDigits="0"
                                                                  maxFractionDigits="2"/>
                                            </span>
                                        </td>
                                        <td class="tb-color">
                                            <div class="color"><a href="#">${item.productDetail.color}</a></div>
                                        </td>
                                        <td class="tb-qty">
                                            <div class="quantity">
                                                <div class="buttons-added">
                                                    <input type="text" value="${item.quantity}" title="Qty"
                                                           class="input-text qty text"
                                                           size="1">
                                                    <a href="#" class="sign plus" onclick=""><i
                                                            class="fa fa-plus"></i></a>
                                                    <a href="#" class="sign minus" onclick=""><i
                                                            class="fa fa-minus"></i></a>
                                                </div>
                                            </div>
                                            <script>
                                                function increase(number) {

                                                }
                                            </script>
                                        </td>
                                        <td class="tb-total">
                                            <span class="sub-price">
                                                <fmt:formatNumber value="${item.subTotal}"
                                                                  type="number" minFractionDigits="0"
                                                                  maxFractionDigits="2"/>
                                            </span>
                                        </td>
                                        <td class="tb-remove">
                                                <%--                                            <a href="<c:url value= "/cart/remove?id=${item.productDetailId}"/>" class="action-remove">--%>
                                                <%--                                                <span><i class="flaticon-close" aria-hidden="true"></i></span>--%>
                                                <%--                                            </a>--%>

                                            <a href="#" class="action-remove"
                                               onclick="postRemoveItem(${item.productDetailId});">
                                                <span><i class="flaticon-close" aria-hidden="true"></i></span>
                                            </a>
                                            <script>
                                                function postRemoveItem(productId) {
                                                    var form = document.createElement('form');
                                                    form.method = 'POST';
                                                    form.action = '/cart/remove?id=' + productId;
                                                    document.body.appendChild(form);
                                                    form.submit();
                                                }
                                            </script>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="cart-actions">
                            <button type="submit" class="btn-continue">
                                <a href="/" style="color: white">Continue Shopping</a>
                            </button>
                            <button type="submit" class="btn-update" onclick="postClear();">
                                <span>Clear Shopping Cart</span>
                            </button>
                            <script>
                                function postClear() {
                                    var form = document.createElement('form');
                                    form.method = 'POST';
                                    form.action = '/cart/clear';
                                    document.body.appendChild(form);
                                    form.submit();
                                }
                            </script>
                        </div>
                    </form>
                </div>
                <div class="col-md-3">
                    <div class="order-summary">
                        <h4 class="title-shopping-cart">Order Summary</h4>
                        <div class="checkout-element-content">
                            <span class="order-left">Total:<span class="total-price">
                                <fmt:formatNumber value="${cart.totalPrice}"
                                                  type="number" minFractionDigits="0"
                                                  maxFractionDigits="2"/>
                            </span></span>
                            <span class="order-left">Shipping:<span>Free Shipping</span></span>
                            <span class="order-left">Total:<span>
                                <fmt:formatNumber value="${cart.totalPrice}"
                                                  type="number" minFractionDigits="0"
                                                  maxFractionDigits="2"/>
                            </span></span>
                            <ul>
                                <li><label class="inline"><input type="checkbox"><span class="input"></span>I have promo
                                    code</label></li>
                            </ul>
                            <button type="submit" class="btn-checkout">
                                <span>Check Out</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="block-recent-view single">
            <div class="container">
                <div class="title-of-section">You may be also interested</div>
                <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true"
                     data-autoplay="false" data-dots="false" data-loop="true" data-margin="30"
                     data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r1.jpg" alt="r1"></a>
                                </div>
                                <span class="onsale">-50%</span>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Modern Watches</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o"
                                                                                aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r2.jpg" alt="r2"></a>
                                </div>
                                <span class="onnew">new</span>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Cellphone Factory</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o"
                                                                                aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r3.jpg" alt="r3"></a>
                                </div>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Smartphone 4 GB</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o"
                                                                                aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r4.jpg" alt="r4"></a>
                                </div>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Extra Bass On</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o"
                                                                                aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r5.jpg" alt="r5"></a>
                                </div>
                                <span class="onsale">-50%</span>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Smartwatch</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o"
                                                                                aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style1">
                        <div class="product-inner equal-elem">
                            <div class="product-thumb">
                                <div class="thumb-inner">
                                    <a href="#"><img src="assets/images/home1/r6.jpg" alt="r6"></a>
                                </div>
                                <a href="#" class="quick-view">Quick View</a>
                            </div>
                            <div class="product-innfo">
                                <div class="product-name"><a href="#">Modern Watches</a></div>
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
                                <div class="group-btn-hover style2">
                                    <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"
                                                                       aria-hidden="true"></i></a>
                                    <a href="compare.html" class="compare"><i class="fa fa-exchange"></i></a>
                                    <a href="wishlist.html" class="wishlist"><i class="fa fa-heart-o"
                                                                                aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main><!-- end MAIN -->
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
</body>
</html>