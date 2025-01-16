<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow p-4" style="max-width: 400px; width: 100%;">
        <h1 class="card-title text-center mb-4">Forgot Password</h1>
        <form action="/auth/reset-password" method="post">
            <input type="hidden" name="token" value="${token}" />

            <div class="mb-3">
                <label for="newPassword" class="form-label">New Password:</label>
                <input type="password" id="newPassword" name="newPassword" class="form-control" placeholder="Enter your new password" required>
            </div>

            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Enter your confirm password" required>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
