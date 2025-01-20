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

                </div>
            </div>
        </div>
    </div>
    <!-- HEADER -->
    <%@ include file="/WEB-INF/view/header.jsp" %>
    <!-- end HEADER -->
    <!-- MAIN -->
    <main class="site-main shopping-cart">
        <div class="container">
            <ol class="breadcrumb-page">
                <li><a href="<c:url value="/"/>">Home </a></li>
                <li class="active"><a href="<c:url value="/cart"/>">Shopping Cart</a></li>
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
                                                    <div class="quantity">
                                                        <div class="buttons-added">
                                                            <c:choose>
                                                                <c:when test="${item.quantity > 0}">
                                                                    <input type="text"
                                                                           id="amount-${item.productDetailId}"
                                                                           style="pointer-events: none" name="amount"
                                                                           value="${item.quantity}"
                                                                           max="${item.productDetail.amount}"
                                                                           title="Qty"
                                                                           class="input-text qty text" size="1">
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <input type="text"
                                                                           id="amount-${item.productDetailId}"
                                                                           style="pointer-events: none" name="amount"
                                                                           value="0"
                                                                           max="${item.productDetail.amount}"
                                                                           title="Qty"
                                                                           class="input-text text" size="1">
                                                                </c:otherwise>
                                                            </c:choose>

                                                            <a href="#" class="sign plus"><i class="fa fa-plus"></i></a>
                                                            <a href="#" class="sign minus"><i
                                                                    class="fa fa-minus"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="tb-total">

                                            <span class="sub-price">
                                                        <c:set
                                                                var="formattedSubTotal"> <fmt:formatNumber
                                                                value="${item.subTotal}" type="number"
                                                                minFractionDigits="0" maxFractionDigits="0"/>
                                                        </c:set>
                                    <c:choose>
                                        <c:when test="${item.quantity > 0}">
                                            <ins style="text-decoration: none"
                                                 id="sub-price-${item.productDetailId}">$<c:out
                                                    value="${formattedSubTotal}"/></ins>
                                            <input type="hidden" name="sub-price" value="${item.productDetail.price}">
                                        </c:when>
                                    </c:choose>

                                </span>
                                        </td>
                                        <td class="tb-remove">
                                            <a style="cursor: pointer" class="action-remove"
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
                            <button class="btn-update" onclick="postClear();">
                                <a href="#" style="color: white">Clear Shopping Cart</a>
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
                            <span class="order-left">Total:
                                <span class="total-price">
                                <c:set
                                        var="formattedTotalPrice"> <fmt:formatNumber value="${cart.totalPrice}"
                                                                                     type="number" minFractionDigits="0"
                                                                                     maxFractionDigits="0"/>
                                </c:set>
                                <ins style="text-decoration: none" id="total-price-${item.cartId}">$<c:out
                                        value="${formattedTotalPrice}"/></ins>
                                            <input type="hidden" name="total-price" value="${cart.totalPrice}">
                            </span></span>
                            <span class="order-left">Shipping:<span>Free Shipping</span></span>
                            <span class="order-left">Total:
                                <span class="total-price">
                                <c:set
                                        var="formattedTotalPrice"> <fmt:formatNumber value="${cart.totalPrice}"
                                                                                     type="number" minFractionDigits="0"
                                                                                     maxFractionDigits="0"/>
                                </c:set>
                                <ins style="text-decoration: none" id="total-price-${item.cartId}">$<c:out
                                        value="${formattedTotalPrice}"/></ins>
                                            <input type="hidden" name="total-price" value="${cart.totalPrice}">
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
                    <c:forEach items="${related_products}" var="related_product">
                        <div class="product-item style1">
                            <div class="product-inner equal-elem">
                                <div class="product-thumb">
                                    <div class="thumb-inner">
                                            <%--                                        <a href="#"><img src="assets/images/home1/r1.jpg" alt="r1"></a>--%>
                                    </div>
                                </div>
                                <div class="product-innfo">
                                    <div class="product-name"><a
                                            href="<c:url value="/products/detail?id=${related_product.id}"/>">${related_product.name}</a>
                                    </div>
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
    function updateTotalPrice() {
        let totalPrice = 0;
        $('.sub-price ins').each(function () {
            totalPrice += parseFloat($(this).text().replace('$', '').replace(/,/g, '')) || 0;
        });
        $('.total-price ins').each(function () {
            $(this).text('$' + totalPrice.toLocaleString(undefined, {
                minimumFractionDigits: 0,
                maximumFractionDigits: 0
            }));
        });
    }

    <c:forEach items="${sessionScope.cart.cartItems}" var="item">
    $('#amount-${item.productDetailId}').change(function () {
        let price = ${item.productDetail.price};
        let amount = $('#amount-${item.productDetailId}').val()
        let subPrice = parseFloat(price * amount).toLocaleString(undefined, {
            minimumFractionDigits: 0,
            maximumFractionDigits: 0
        });
        $('#sub-price-${item.productDetailId}').text('$' + subPrice);
        updateTotalPrice();

        console.log("Sending AJAX request with data:", { productDetailId: ${item.productDetailId}, quantity: amount });

        $.ajax({
            url: '/cart/update',
            type: 'POST',
            data: {
                productDetailId: ${item.productDetailId},
                quantity: amount
            },
            success: function (response) {
                console.log("Cart item updated successfully: " + response);
                updateTotalPrice();
            },
            error: function (xhr, status, error) {
                console.error("Error updating cart item: " + error);
            }
        });
    });
    </c:forEach>
</script>
</body>
</html>