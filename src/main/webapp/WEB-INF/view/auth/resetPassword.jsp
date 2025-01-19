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
<body class="bg-light">
<%@ include file="/WEB-INF/view/header.jsp" %>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow p-4" style="max-width: 400px; width: 100%;">
        <h1 class="card-title text-center mb-4">Forgot Password</h1>
        <form action="/auth/reset-password" method="post" onsubmit="return validateConfirmPassword()">
            <input type="hidden" name="token" value="${token}" />

            <div class="mb-3">
                <label for="newPassword" class="form-label">New Password:</label>
                <input type="password" id="newPassword" name="newPassword" class="form-control"
                       placeholder="Enter your new password" required onchange="validatePassword(this)">
            </div>

            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control"
                       placeholder="Enter your confirm password" required onchange="validateConfirmPassword(this)">
                <span id="passwordError" class="text-danger"></span>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-primary">Send Reset Link</button>
            </div>
        </form>


        <div class="mt-3">
            <c:if test="${not empty errorMessage}">
                <p style="color:red;">${errorMessage}</p>
            </c:if>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/view/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
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
