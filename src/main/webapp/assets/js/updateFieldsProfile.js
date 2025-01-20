function enableEdit(fieldId, buttonId) {
    const field = document.getElementById(fieldId);
    const button = document.getElementById(buttonId);

    if (field && button) {
        field.readOnly = false;
        field.focus();
        button.style.display = "none";
    }
}

document.getElementById("editFirstNameBtn").addEventListener("click", function () {
    enableEdit("firstName", "editFirstNameBtn");
});

document.getElementById("editLastNameBtn").addEventListener("click", function () {
    enableEdit("lastName", "editLastNameBtn");
});

document.getElementById("editCountryBtn").addEventListener("click", function () {
    enableEdit("country", "editCountryBtn");
});

document.getElementById("editPhoneBtn").addEventListener("click", function () {
    enableEdit("phone", "editPhoneBtn");
});

document.getElementById("editEmailBtn").addEventListener("click", function () {
    enableEdit("email", "editEmailBtn");
});



