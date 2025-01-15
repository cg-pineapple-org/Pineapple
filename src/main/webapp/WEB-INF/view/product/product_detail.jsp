<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>Products detail</title>
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
        <c:forEach items="${product_details}" var="product_detail" >
        .color-${product_detail.id} .pineapple-custom:not(.color-${product_detail.id}),
        </c:forEach> .default .default {
            display: none;
        }
    </style>

</head>
<body class="page-product detail-product">
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
    <%@ include file="/WEB-INF/view/header.jsp" %>
    <!-- MAIN -->
    <main class="site-main color-${product_details[0].id}" id="site-main">
        <div class="container">
            <ol class="breadcrumb-page">
                <li><a href="<c:url value="/"/>">Home </a></li>
                <li class="active"><a href="#">Detail</a></li>
            </ol>
        </div>
        <c:forEach items="${product_details}" var="product_detail">
            <div class="container pineapple-custom color-${product_detail.id}">
                <div class="product-content-single">
                    <div class="row">
                        <div class="col-md-6 col-sm-12 padding-right">
                            <div class="product-media">
                                <div class="image-preview-container image-thick-box image_preview_container">
                                    <img id="img_zoom" data-zoom-image="assets/images/detail/thick-box-1.jpg"
                                         src="assets/images/detail/thick-box.jpg" alt="">
                                    <a href="#" class="btn-zoom open_qv"><i class="flaticon-magnifying-glass"
                                                                            aria-hidden="true"></i></a>
                                </div>
                                <div class="product-preview image-small product_preview">
                                    <div id="thumbnails" class="thumbnails_carousel owl-carousel nav-style4"
                                         data-nav="true"
                                         data-autoplay="false" data-dots="false" data-loop="true" data-margin="10"
                                         data-responsive='{"0":{"items":3},"480":{"items":5},"600":{"items":5},"1000":{"items":5}}'>
                                        <a href="#" data-image="assets/images/detail/thick-box-1.jpg"
                                           data-zoom-image="assets/images/detail/thick-box-1.jpg">
                                            <img src="assets/images/detail/i1.jpg"
                                                 data-large-image="assets/images/detail/thick-box-1.jpg" alt="i1">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <div class="product-info-main">
                                <div class="product-name"><a href="#"><c:out value="${product.name}"/> </a></div>
                                <div class="product-info-stock-sku">
                                    <div class="stock available">
                                        <span class="label-stock">Availability: </span>
                                        <c:choose>
                                            <c:when test="${product_detail.amount > 0}">
                                                In Stock
                                            </c:when>
                                            <c:otherwise>
                                                Out of stock
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                                <div class="product-infomation">
                                    <c:forEach items="${product_details}" var="product_detail_color">
                                        <button type="button" class="block btn color-${product_detail_color.id}-btn"
                                                style="background-color: ${product_detail_color.color}; color: ${product_detail_color.color}">
                                            a
                                        </button>
                                    </c:forEach>

                                </div>
                                <div class="product-info-price">
                                <span class="price">

                                    <ins>$<c:out value="${product_detail.price}"/></ins>

                                </span>
                                    <div class="quantity">
                                        <h6 class="quantity-title">Quantity:</h6>
                                        <div class="buttons-added">
                                            <input type="text" value="1" max="${product_detail.amount}" title="Qty"
                                                   class="input-text qty text" size="1">
                                            <a href="#" class="sign plus"><i class="fa fa-plus"></i></a>
                                            <a href="#" class="sign minus"><i class="fa fa-minus"></i></a>
                                        </div>
                                    </div>
                                    <div class="single-add-to-cart">
                                        <a href="#" class="btn-add-to-cart">Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-details-product">
                    <ul class="box-tab nav-tab">
                        <li class="active"><a data-toggle="tab" href="#tab-1">Description</a></li>
                    </ul>
                    <div class="tab-container">
                        <div id="tab-1" class="tab-panel active">
                            <div class="box-content">
                                <p>
                                    <c:out value="${product_detail.description}"/>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
        <div class="block-recent-view single">
            <div class="container">
                <div class="title-of-section">You may be also interested</div>
                <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true"
                     data-autoplay="false" data-dots="false" data-loop="true" data-margin="30"
                     data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":4}}'>
                    <c:forEach items="${related_products}" var="related_product">
                        <div class="product-item style1">
                            <div class="product-inner equal-elem">
                                <div class="product-thumb">
                                    <div class="thumb-inner">
<%--                                        <a href="#"><img src="assets/images/home1/r1.jpg" alt="r1"></a>--%>
                                    </div>
                                </div>
                                <div class="product-innfo">
                                    <div class="product-name"><a href="<c:url value="/products/detail?id=${related_product.id}"/>">${related_product.name}</a></div>
<%--                                    <div class="group-btn-hover style2">--%>
<%--                                        <a href="#" class="add-to-cart"><i class="flaticon-shopping-cart"--%>
<%--                                                                           aria-hidden="true"></i></a>--%>
<%--                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </main><!-- end MAIN -->
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

<script>
    $('#test-press').click(function (){
        console.log("test");
    });
    <c:forEach items="${product_details}" var="product_detail">
    $('.color-${product_detail.id}-btn').click(function () {
        $('#site-main').removeAttr('class').addClass('site-main color-${product_detail.id}');
    });
    </c:forEach>
</script>
</body>
</html>