package android.support.v4.view;

import android.os.Build;
import android.view.ViewConfiguration;

public class ViewConfigurationCompat {
    static final c a;

    interface c {
        int a(ViewConfiguration viewConfiguration);
    }

    static class a implements c {
        a() {
        }

        @Override // android.support.v4.view.ViewConfigurationCompat.c
        public final int a(ViewConfiguration config) {
            return config.getScaledTouchSlop();
        }
    }

    static class b implements c {
        b() {
        }

        @Override // android.support.v4.view.ViewConfigurationCompat.c
        public final int a(ViewConfiguration config) {
            return config.getScaledPagingTouchSlop();
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            a = new b();
        } else {
            a = new a();
        }
    }

    public static int getScaledPagingTouchSlop(ViewConfiguration config) {
        return a.a(config);
    }
}
