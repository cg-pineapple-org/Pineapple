<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="UTF-8">
  <title>Pineapple</title>
  <style>
    .header {
      display: flex;
      align-items: center; /* Căn giữa các phần tử theo chiều dọc */
      justify-content: space-between; /* Căn đều logo và các phần tử khác */
      padding: 10px;
      flex-wrap: wrap; /* Cho phép xuống dòng khi màn hình nhỏ */
    }

    .header-opt-1 .header-top a{
      color: #000000 !important;
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

    .box-group .btn-search {
      /* height: 51px; */
      background-color: #e03737;
      color: #fff;
      vertical-align: inherit;
      margin-right: -1px;
      font-size: 20px;
      text-transform: uppercase;
      width: 52px;
      border-radius: 90px;
      border-bottom-left-radius: 0;
      border-top-left-radius: 0;
      font-weight: 1000;
      letter-spacing: 0.1em;
    }

    .block-minicart .minicart {
      margin-left: 55px;
    }

    .block-minicart .counter-label {
      font-size: medium;
      min-width: 120px;
    }

    .block-minicart .counter-number {
      position: absolute;
      top: -8px;
      left: 8px;
    }

    .block-minicart .counter-price {
      font-size: medium;
      padding: 15px;
    }

    .flaticon-shopping-cart {
      color: black !important;
    }

    .btn-viewcart, .btn-checkout {
      font-size: 13px;
      text-transform: uppercase;
      color: #fff;
      font-family: 'sofia_promedium';
      background-color: #222;
      padding: 10px 90px;
      margin: 1px;
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
  <header class="site-header header-opt-1">
    <!-- header-top -->
    <div class="header-top">
      <div class="container">
        <ul class="nav-top-left">
          <li>
            <div class="logo-container">
              <a href="<c:url value = "/home"/>">
                <img
                        class="logo responsive-logo"
                        src="<c:url value = "/assets/images/den-trang.svg"/>"
                        alt="logo"
                />
              </a>
            </div>
          </li>
          <div class="form-search">
            <form action="/search" method="get">
              <div class="box-group">
                <input
                        type="text"
                        class="form-control"
                        placeholder="Search keyword here..."
                        name="searchKeyword"
                />
                <button class="btn btn-search" type="submit">
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
                  <a class="minicart" href="<c:url value = "/cart"/>">
                        <span class="counter qty">
                          <span class="cart-icon"
                          ><i
                                  class="flaticon-shopping-cart"
                                  aria-hidden="true"
                          ></i
                          ></span>
                          <span class="counter-number">${cart.numberOfItem}</span>
                        </span>
                    <span class="counter-your-cart">
                          <span class="counter-label">Your Cart:</span>
                        </span>
                  </a>
                  <div class="parent-megamenu">
                    <form>
                      <div class="minicart-content-wrapper">
                        <div class="subtitle">
                          You have <span>${cart.numberOfItem}</span> item(s) in your cart
                        </div>
                        <div class="minicart-items-wrapper">
                          <ol class="minicart-items">
                            <li class="product-inner">
                              <div class="product-thumb style1">
                                <div class="thumb-inner">
                                </div>
                              </div>
                              <div class="product-innfo">
                                <div class="product-name">
                                  <a href="#"></a>
                                </div>
                                <a href="#" class="remove"
                                ><i
                                        class="flaticon-close"
                                        aria-hidden="true"
                                ></i
                                ></a>
                                <span class="price price-dark">
                                      <ins></ins>
                                    </span>
                              </div>
                            </li>
                          </ol>
                        </div>
                        <div class="actions">
                          <a
                                  class="btn btn-viewcart"
                                  href="<c:url value = "/cart"/>"
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
          <c:if test="${not empty user}">
            <li class="dropdown">
              <a href="javascript:void(0);" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="flaticon-profile" ></i> ${user.firstName} ${user.lastName}
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<c:url value='/auth'/>">Profile</a></li>
                <li><a class="dropdown-item" href="<c:url value='/auth/register'/>">Register</a></li>
                <li><a class="dropdown-item" href="<c:url value='/auth/logout'/>">Log Out</a></li>

              </ul>
            </li>
          </c:if>

          <c:if test="${empty user}">
            <li class="dropdown">
              <a href="javascript:void(0);" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="flaticon-profile" ></i> Sign In
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<c:url value='/auth/login'/>">Login</a></li>
                <li><a class="dropdown-item" href="<c:url value='/auth/register'/>">Register</a></li>
              </ul>
            </li>
          </c:if>
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
              </li>
              <li class="menu-item-has-children arrow">
                <a href="<c:url value = "/products?id=1"/>">Mac</a>
                <span class="toggle-submenu hidden-md"></span>
              </li>
              <li class="menu-item-has-children arrow item-megamenu">
                <a href="<c:url value = "/products?id=3"/>">iPad</a>
                <span class="toggle-submenu hidden-md"></span>
              </li>
              <li class="menu-item-has-children arrow item-megamenu">
                <a href="<c:url value = "/products?id=2"/>">iPhone</a>
                <span class="toggle-submenu hidden-md"></span>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="<c:url value = "/products?id=4"/>">Watch</a>
                <span class="toggle-submenu hidden-md"></span>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="<c:url value = "/products?id=5"/>">Airpods</a>
                <span class="toggle-submenu hidden-md"></span>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="<c:url value = "/products?id=6"/>">Airtag</a>
                <span class="toggle-submenu hidden-md"></span>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="<c:url value = "/products?id=7"/>">Apple TV</a>
                <span class="toggle-submenu hidden-md"></span>
              </li>
              <li class="menu-item-has-children arrow">
                <a href="<c:url value = "/products?id=8"/>">Accessories</a>
                <span class="toggle-submenu hidden-md"></span>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  </header>
  </div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
</body>
</html>