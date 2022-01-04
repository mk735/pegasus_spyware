package a.a.a.a.a.a;

import a.a.a.a.a.i;
import a.a.a.a.a.m;

public final class h {
    public static i a(int i) {
        return (i == 4 || i == 5) ? new m(i) : new i(i);
    }

    public static i a(Throwable th) {
        return th.getClass().getName().equals("java.security.GeneralSecurityException") ? new m(th) : new i(th);
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
