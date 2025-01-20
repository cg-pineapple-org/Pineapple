function hideAlertAfterDelay() {
    setTimeout(function() {
        var alertElements = document.querySelectorAll('.alert');
        alertElements.forEach(function(alert) {
            alert.style.display = 'none';
        });
    }, 3000);
}

window.onload = function() {
    hideAlertAfterDelay();
}