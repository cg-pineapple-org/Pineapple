function validateEmail(input) {
    const emailRegex = /^[\w!#$%&'*+/=?`{|}~^-]+(?:\.[\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,6}$/;
    const emailError = document.getElementById("emailError");
    if (!emailRegex.test(input.value)) {
        emailError.textContent = "Invalid email address.";
    } else {
        emailError.textContent = "";
    }
}

function validateUsername(input) {
    const usernameRegex = /^[a-zA-Z0-9_]{5,20}$/; // 5-20 characters, letters, numbers, and underscores
    const usernameError = document.getElementById("usernameError");
    if (!usernameRegex.test(input.value)) {
        usernameError.textContent = "Username must be 5-20 characters and contain only letters, numbers, or underscores.";
    } else {
        usernameError.textContent = "";
    }
}

function validatePassword(input) {
    const password = input.value;
    const passwordError = document.getElementById("passwordError");
    const regex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;

    if (!regex.test(password)) {
        passwordError.textContent = "Password must be at least 8 characters long and contain at least one letter and one number.";
    } else {
        passwordError.textContent = "";
    }
}


function validateConfirmPassword() {
    const newPassword = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;
    const confirmPasswordError = document.getElementById("passwordError");

    if (confirmPassword === "") {
        confirmPasswordError.textContent = "";
        return true;
    }

    if (newPassword !== confirmPassword) {
        confirmPasswordError.textContent = "Passwords do not match.";
        return false;
    } else {
        confirmPasswordError.textContent = "";
        return true;
    }
}


function validatePhone(input) {
    const phoneRegex = /^[0-9]{10,15}$/; // 10-15 num
    const phoneError = document.getElementById("phoneError");
    if (!phoneRegex.test(input.value)) {
        phoneError.textContent = "Phone number must be 10-15 digits.";
    } else {
        phoneError.textContent = "";
    }
}

function validateBirthDate() {
    const day = document.getElementById("birthDay").value;
    const month = document.getElementById("birthMonth").value;
    const year = document.getElementById("birthYear").value;
    const birthDateError = document.getElementById("birthDateError");

    if (!day || !month || !year) {
        birthDateError.textContent = "Please select a valid date.";
        return;
    }

    const selectedDate = new Date(year, month - 1, day);
    const today = new Date();

    if (selectedDate > today) {
        birthDateError.textContent = "Birthdate cannot be in the future.";
    } else {
        birthDateError.textContent = "";
    }
}

