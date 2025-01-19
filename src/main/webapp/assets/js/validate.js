function validateForm() {
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();
    const username = document.getElementById("username").value.trim();
    const phone = document.getElementById("phone").value.trim();
    const dayOfBirth = document.getElementById("dayOfBirth").value.trim();

    const emailRegex = /^[\w!#$%&'*+/=?`{|}~^-]+(?:\.[\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,6}$/;
    const passwordRegex = /^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$/;
    const usernameRegex = /^[a-zA-Z0-9]{6,}$/;
    const phoneRegex = /^[0-9]{10}$/;
    const dayOfBirthRegex = /^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[012])\/([12]\d{3})$/;

    let valid = true;

    if (!emailRegex.test(email)) {
        document.getElementById("emailError").innerText = "Invalid email format.";
        valid = false;
    } else {
        document.getElementById("emailError").innerText = "Valid email.";
    }

    if (!passwordRegex.test(password)) {
        document.getElementById("passwordError").innerText = "Password must be at least 8 characters, include uppercase, lowercase, number, and special character.";
        valid = false;
    } else {
        document.getElementById("passwordError").innerText = "Valid password.";
    }

    if (!usernameRegex.test(username)) {
        document.getElementById("usernameError").innerText = "Username must be at least 6 characters and contain only letters and numbers.";
        valid = false;
    } else {
        document.getElementById("usernameError").innerText = "Valid username.";
    }

    if (!phoneRegex.test(phone)) {
        document.getElementById("phoneError").innerText = "Phone number must be exactly 10 digits.";
        valid = false;
    } else {
        document.getElementById("phoneError").innerText = "Valid phone number.";
    }

    if (!dayOfBirthRegex.test(dayOfBirth)) {
        document.getElementById("dayOfBirthError").innerText = "Invalid date format. Use dd/mm/yyyy.";
        valid = false;
    } else {
        document.getElementById("dayOfBirthError").innerText = "Valid date.";
    }

    if (valid) {
        alert("Form submitted successfully!");
    }
}
