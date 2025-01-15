<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>Products list</title>
    <link rel="shortcut icon" type="image/x-icon" href=" <c:url value = "/assets/images/favicon.png"/>">
    <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/fonts/flaticon/flaticon.css"/>">
    <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/animate.css"/>">
    <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/font-awesome.css" />">
    <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/pe-icon-7-stroke.css"/>">
    <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/owl.carousel.css"/>">
    <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/chosen.css"/>">
    <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/jquery.bxslider.css"/>">
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href=" <c:url value = "/assets/css/style.css"/>">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap"
          rel="stylesheet">

    <style>
        <c:forEach items="${product_list}" var="product">
        .pineapple-table:not(.section-${product['product_detail'].id}) .confirm-${product['product_detail'].id}-btn,
        </c:forEach> .default .default {
            display: none;
        }

        <c:forEach items="${product_list}" var="product">
        .pineapple-table:not(.section-${product['product_detail'].id}) .input-${product['product_detail'].id},
        </c:forEach> .default .default {
            pointer-events: none;
        }

        <c:forEach items="${product_list}" var="product">
        .section-${product['product_detail'].id} .input-${product['product_detail'].id},
        </c:forEach> .not-default .not-default {
            backdrop-filter: contrast(0%);
        }

        <c:forEach items="${product_list}" var="product">
        .section-${product['product_detail'].id} .edit-${product['product_detail'].id}-btn,
        </c:forEach> .not-default .not-default {
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
    <!-- end HEADER -->
    <!-- MAIN -->
    <main class="site-main" id="site-main">
        <div class="container-fluid px-5">
            <h1 class="mt-4">Product management</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="<c:url value="/"/>">Home</a>
                </li>
                <li class="breadcrumb-item active"><a href="#">Product table</a></li>
            </ol>
            <div class="card mb-4">
                <div class="card-header">
                    <i class="fas fa-table me-1"></i>
                    Product table
                </div>
                <div class="card-body">
                    <table id="datatablesSimple" class="pineapple-table table table-bordered">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>Category</th>
                            <th>Product</th>
                            <th>Color</th>
                            <th>Stock</th>
                            <th>Price</th>
                            <th>Description</th>
                            <th>
                                <a class="btn btn-success" style="color: white !important;"
                                   href="<c:url value="/products/add"/>">Add product</a>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${product_list}" var="product">
                            <tr>
                                <td class="pineapple-id" id="id-${product['product_detail'].id}">${product['product_detail'].id}</td>
                                <td>${product['category'].name}</td>
                                <td>${product['product'].name}</td>
                                <td class="pineapple-color"><input type="text" id="color-${product['product_detail'].id}" class="input-text input-${product['product_detail'].id}" value="${product['product_detail'].color}"></td>
                                <td class="pineapple-amount"><input type="text" id="amount-${product['product_detail'].id}" class="input-text input-${product['product_detail'].id}" value="${product['product_detail'].amount}"></td>
                                <td class="pineapple-price"><input type="text" id="price-${product['product_detail'].id}" class="input-text input-${product['product_detail'].id}" value="${product['product_detail'].price}"></td>
                                <td class="pineapple-description"><input type="text" class="input-text input-${product['product_detail'].id}" value="${product['product_detail'].description}"></td>
                                <td>
                                    <a class="btn btn-primary"
                                       href="<c:url value="/products/detail?id=${product['product_detail'].productId}"/>">Detail</a>
                                    <button type="button"
                                            class="btn btn-warning edit-${product['product_detail'].id}-btn">Edit
                                    </button>
                                    <button type="button"
                                            class="btn btn-warning confirm-${product['product_detail'].id}-btn">Confirm
                                    </button>
                                    <button type="button" class="btn btn-danger">Delete</button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <form action="<c:url value="/products/list"/>" method="get" class="form-group">
                        <button type="button" class="btn" id="prev-btn">Previous</button>
                        <input id="pageSize" type="number" value="${page_size}" min="5" max="15" name="page_size"
                               placeholder="Page size" class="input-number form-text">
                        <input id="pageNumber" type="number" value="${page}" name="page" placeholder="Page"
                               class="input-number form-text">
                        <button type="button" class="btn" id="next-btn">Next</button>
                    </form>
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
    <c:forEach items="${product_list}" var="product">
    $('.edit-${product['product_detail'].id}-btn').click(function () {
        $('.pineapple-table').addClass('section-${product['product_detail'].id}');
    });

    $('.confirm-${product['product_detail'].id}-btn').click(function () {
        $('.pineapple-table').removeClass('section-${product['product_detail'].id}');
        let id = $('#id-${product['product_detail'].id}').text();
        let color = $('#color-${product['product_detail'].id}').val();
        color = color.substring(1);
        let amount = $('#amount-${product['product_detail'].id}').val();
        let price = $('#price-${product['product_detail'].id}').val();
        let pageSize = document.getElementById("pageSize").value;
        let page = document.getElementById("pageNumber").value;
        window.location.href = '/products/edit?page_size=' + pageSize + '&page=' + page + '&id='+ id + '&color=' + color + '&amount=' + amount + '&price=' + price;
    });
    </c:forEach>
</script>

<script>
    document.getElementById("prev-btn").onclick = function () {
        let pageSize = document.getElementById("pageSize").value;
        let page = document.getElementById("pageNumber").value;
        window.location.href = '/products/list?page_size=' + pageSize + '&page=' + (parseInt(page) - 1);
    }

    document.getElementById("next-btn").onclick = function () {
        let pageSize = document.getElementById("pageSize").value;
        let page = document.getElementById("pageNumber").value;
        window.location.href = '/products/list?page_size=' + pageSize + '&page=' + (parseInt(page) + 1);
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
        crossorigin="anonymous"></script>

</body>
</html>