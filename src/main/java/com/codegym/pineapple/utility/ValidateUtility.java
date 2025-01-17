package com.codegym.pineapple.utility;

import java.util.Optional;

public class ValidateUtility {
    private static ValidateUtility validateUtility = null;

    public ValidateUtility(){}

    public static ValidateUtility getInstance(){
        if (!Optional.ofNullable(validateUtility).isPresent()){
            validateUtility = new ValidateUtility();
        }
        return  validateUtility;
    }

    public boolean checkEmail(String email) {
        String regex = "^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
        return email.matches(regex);
    }

    public boolean checkPassword(String password) {
        String regex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$";
        return password.matches(regex);
    }

    public boolean checkUsername(String username) {
        String regex = "^[a-zA-Z0-9]{6,}$";
        return username.matches(regex);
    }

    public boolean checkPhone(String phone) {
        String regex = "^[0-9]{10}$";
        return phone.matches(regex);
    }

    public boolean checkDayOfBirth(String dayOfBirth) {
        String regex = "^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/([12]\\d{3})$";
        return dayOfBirth.matches(regex);
    }
}
