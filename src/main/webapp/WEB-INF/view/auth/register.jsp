<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">
    <title>Pineapple</title>
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value = "/assets/images/favicon.png"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/fonts/flaticon/flaticon.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/animate.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/font-awesome.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/pe-icon-7-stroke.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/owl.carousel.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/chosen.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/jquery.bxslider.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/style.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/dropDown.css"/>">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&display=swap" rel="stylesheet">

</head>
<body class="page-inne"
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
    <%@ include file="/WEB-INF/view/header.jsp" %>
    <!-- end HEADER -->
    <!-- MAIN -->
    <main class="site-main site-login">
        <div class="container">
            <ol class="breadcrumb-page">
                <li><a href="/">Home </a></li>
                <li class="active"><a href="/auth/register">Register</a></li>
            </ol>
        </div>
        <div class="customer-login">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 border-after">
                        <h5 class="title-login">Create an account</h5>
                        <c:if test="${not empty successMessage}">
                            <div class="alert alert-danger">${successMessage}</div>
                        </c:if>
                        <c:if test="${not empty errorMessage}">
                            <div class="alert alert-danger">${errorMessage}</div>
                        </c:if>
                        <form class="register" method="post" action="<c:url value="/auth/register" />">
                            <p class="form-row form-row-wide col-md-6 padding-left">
                                <label>First name<span class="required">*</span></label>
                                <input type="text" value="" name="first_name" placeholder="First name" class="input-text">
                            </p>
                            <p class="form-row form-row-wide col-md-6 padding-right">
                                <label>Last Name<span class="required"></span></label>
                                <input title="lastname" type="text" value="" name="last_name" class="input-text">
                            </p>

                            <p class="form-row form-row-wide">
                                <label>Country<span class="required">*</span></label>
                                <select name="country" class="form-select" required>
                                    <option value="">Select Country</option>
                                    <option value="Vietnam">Vietnam</option>
                                    <option value="USA">USA</option>
                                    <option value="Canada">Canada</option>
                                    <option value="Australia">Australia</option>
                                    <option value="Germany">Germany</option>
                                    <option value="France">France</option>
                                    <option value="Italy">Italy</option>
                                    <option value="Spain">Spain</option>
                                    <option value="Brazil">Brazil</option>
                                    <option value="Argentina">Argentina</option>
                                    <option value="Mexico">Mexico</option>
                                    <option value="Colombia">Colombia</option>
                                    <option value="Peru">Peru</option>
                                    <option value="Chile">Chile</option>
                                    <option value="Ecuador">Ecuador</option>
                                </select>
                            </p>

                            <p class="form-row form-row-wide">
                                <label>Day of Birth<span class="required">*</span></label>
                            <div class="d-flex gap-3">
                                <select name="birth_day" class="form-select" id="birthDay" onchange="validateBirthDate()" required>
                                    <option value="">Day</option>
                                    <c:forEach var="i" begin="1" end="31">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                                <select name="birth_month" class="form-select" id="birthMonth" onchange="validateBirthDate()" required>
                                    <option value="">Month</option>
                                    <c:forEach var="i" begin="1" end="12">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                                <select name="birth_year" class="form-select" id="birthYear" onchange="validateBirthDate()" required>
                                    <option value="">Year</option>
                                    <c:forEach var="i" begin="1900" end="2025">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <span style="color:red" id="birthDateError" class="error"></span><br>
                            </p>

                            <p class="form-row form-row-wide">
                                <label>Email<span class="required">*</span></label>
                                <input title="email" type="email" name="email" placeholder="Email address" class="input-text"
                                       onchange="validateEmail(this)">
                                <span style="color:red" id="emailError" class="error"></span><br>
                            </p>
                            <p class="form-row form-row-wide">
                                <label>Phone Number<span class="required">*</span></label>
                                <input title="phone" type="text" name="phone" placeholder="Phone Number" class="input-text"
                                       onchange="validatePhone(this)">
                                <span style="color:red" id="phoneError" class="error"></span><br>
                            </p>
                            <p class="form-row form-row-wide">
                                <label>Username<span class="required">*</span></label>
                                <input title="username" type="text" name="username" placeholder="Username" class="input-text"
                                       onchange="validateUsername(this)">
                                <span style="color:red" id="usernameError" class="error"></span><br>
                            </p>
                            <p class="form-row form-row-wide col-md-6 padding-left">
                                <label>Password:<span class="required"></span></label>
                                <input title="pass" type="password" name="password" class="input-text" id="password"
                                       onchange="validatePassword(this)">
                                <span style="color:red" id="passwordError" class="error"></span><br>
                            </p>
                            <p class="form-row form-row-wide col-md-6 padding-right">
                                <label>Confirm Password<span class="required">*</span></label>
                                <input title="pass2" type="password" name="confirmPassword" class="input-text" id="confirmPassword"
                                       onchange="validateConfirmPassword(this)">
                                <span style="color:red" id="confirmPasswordError" class="error"></span><br>
                            </p>
                            <p class="form-row">
                                <input type="submit" value="Submit" name="Submit" class="button-submit">
                            </p>
                        </form>
                    </div>
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
<script type="text/javascript" src="<c:url value="/assets/js/jquery-2.1.4.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/owl.carousel.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/wow.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.actual.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/chosen.jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.bxslider.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.sticky.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.elevateZoom.min.js"/>"></script>
<script src=" <c:url value="/assets/js/fancybox/source/jquery.fancybox.pack.js"/>"></script>
<script src=" <c:url value="/assets/js/fancybox/source/helpers/jquery.fancybox-media.js"/>"></script>
<script src=" <c:url value="/assets/js/fancybox/source/helpers/jquery.fancybox-thumbs.js"/>"></script>
<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyC3nDHy1dARR-Pa_2jjPCjvsOR4bcILYsM'></script>
<script type="text/javascript" src="<c:url value="/assets/js/function.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/Modernizr.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.plugin.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.countdown.js"/>"></script>
<script type="text/javascript" src="<c:url value='/assets/js/validate.js'/>"></script>

</body>
</html>