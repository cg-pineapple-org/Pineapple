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
  <%@ include file="/WEB-INF/view/header.jsp" %>
  <!-- end HEADER -->
  <!-- MAIN -->
  <main class="site-main">
    <div class="block-section-99">
      <div class="container">
      <div class="title-of-section main-title"><c:out value="Buy ${category.name}"/> </div>
      <div class="tab-product tab-product-fade-effect">
        <ul class="box-tabs nav-tab">
          <li class="active">
            <a data-animated="" data-toggle="tab" href="#tab-1"
            >All Products</a
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

                <c:forEach items="${product_list}" var="product">
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
                          <a href="<c:url value="/products/detail?id=${product.id}"/> "><c:out value="${product.name}"/> </a>
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
                </c:forEach>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    <div class="block-daily-deals style1">
      <div class="container">
        <div class="title-of-section main-title">Explore New Tech</div>
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
                <a href="<c:url value = "/products?id=2"/>"
                ><img src="<c:url value = "/assets/images/store-card-50-cny-iphone-pro-202501_GEO_VN.jpg"/>" alt="d1"
                /></a>
              </div>
            </div>
            <div class="product-innfo">
              <div class="product-name">
                <a href="<c:url value = "/products?id=2"/>">iPhone 16 Pro</a>
              </div>
              <span class="price">
                    <ins>$299</ins>
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
                <a href="<c:url value = "/products?id=1"/>"
                ><img src="<c:url value = "/assets/images/store-card-50-cny-macbook-pro-202501_GEO_VN.jpg"/>" alt="d2"
                /></a>
              </div>
            </div>
            <div class="product-innfo">
              <div class="product-name">
                <a href="<c:url value = "/products?id=1"/>">Macbook Pro</a>
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
                <a href="<c:url value = "/products?id=3"/>"
                ><img src="<c:url value = "/assets/images/store-card-50-cny-ipad-pro-202501_GEO_VN.jpg"/>" alt="d1"
                /></a>
              </div>
            </div>
            <div class="product-innfo">
              <div class="product-name">
                <a href="<c:url value = "/products?id=3"/>">iPad Pro</a>
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

              <a href="#" class="btn-add-to-cart">Add to cart</a>
            </div>
          </div>
          <div class="deal-of-day equal-elem">
            <div class="product-thumb style1">
              <div class="thumb-inner">
                <a href="<c:url value = "/products?id=4"/>"
                ><img src="<c:url value = "/assets/images/store-card-50-cny-watch-ultra-2-202501_GEO_VN.jpg"/>" alt="d2"
                /></a>
              </div>
            </div>
            <div class="product-innfo">
              <div class="product-name">
                <a href="<c:url value = "/products?id=4"/>">Pineapple Watch Ultra</a>
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
              <a href="<c:url value = "/products?id=2"/>" class="banner-img">
                <img
                        src="<c:url value = "/assets/images/470x250.png"/>"
                        alt="banner-1"
                />
              </a>
              <div class="promotion-banner-inner">
                <h4>iPhone</h4>
                <h3>Sale <strong>1%</strong> Off</h3>
                <a class="banner-link" href="<c:url value = "/products?id=2"/>">Shop now</a>
              </div>
            </div>
          </div>
          <div class="col-md-7 col-sm-7">
            <div class="promotion-banner style-1">
              <a href="<c:url value = "/products?id=8"/>" class="banner-img"
              ><img src="<c:url value = "/assets/images/669x250.png"/>" alt="banner-2"
              /></a>
              <div class="promotion-banner-inner">
                <h4>Accessories</h4>
                <h3>Get <strong>25%</strong> Flat Off</h3>
                <a class="banner-link" href="<c:url value = "/products?id=8"/>">Shop now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <!-- end MAIN -->
  <!-- FOOTER -->
  <%@ include file="/WEB-INF/view/footer.jsp" %>
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