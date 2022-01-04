package com.lenovo.lps.sus.control;

import com.lenovo.lps.sus.c.c;

public class ah extends Thread {
    private static String a = null;

    public ah(String str) {
        if (str == null || str.length() <= 0) {
            a = null;
        } else {
            a = str;
        }
    }

    public void run() {
        if (a != null && a.length() > 0) {
            c.a(a, (Boolean) false, 5000);
        }
    }
}
