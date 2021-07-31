package android.support.v4.view;

import android.os.Build;
import android.view.MenuItem;

public class MenuCompat {
    static final c a;

    interface c {
        boolean a(MenuItem menuItem, int i);
    }

    static class a implements c {
        a() {
        }

        @Override // android.support.v4.view.MenuCompat.c
        public final boolean a(MenuItem item, int actionEnum) {
            return false;
        }
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.view.MenuCompat.c
        public final boolean a(MenuItem item, int actionEnum) {
            item.setShowAsAction(actionEnum);
            return true;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static boolean setShowAsAction(MenuItem item, int actionEnum) {
        return a.a(item, actionEnum);
    }
}
