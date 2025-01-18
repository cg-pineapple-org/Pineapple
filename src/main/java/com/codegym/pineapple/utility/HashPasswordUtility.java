package com.codegym.pineapple.utility;

import org.mindrot.jbcrypt.BCrypt;

public class HashPasswordUtility {
    public static String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
}
