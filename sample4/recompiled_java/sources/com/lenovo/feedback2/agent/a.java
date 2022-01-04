package com.lenovo.feedback2.agent;

import android.os.Build;
import android.view.View;
import java.lang.reflect.Field;

/* access modifiers changed from: package-private */
/* compiled from: ViewFetcher */
public final class a {
    private static Class<?> b;
    private String a;

    public a() {
        if (Build.VERSION.SDK_INT >= 13) {
            this.a = "sWindowManager";
        } else {
            this.a = "mWindowManager";
        }
    }

    public static View a(View[] views) {
        View[] decorViews = new View[views.length];
        int i = 0;
        for (View view : views) {
            if (view.getClass().getName().equals("com.android.internal.policy.impl.PhoneWindow$DecorView")) {
                decorViews[i] = view;
                i++;
            }
        }
        View view2 = null;
        int i2 = 0;
        long j = 0;
        while (i2 < decorViews.length) {
            View view3 = decorViews[i2];
            if (view3 == null || !view3.isShown() || !view3.hasWindowFocus() || view3.getDrawingTime() <= j) {
                view3 = view2;
            } else {
                j = view3.getDrawingTime();
            }
            i2++;
            view2 = view3;
        }
        return view2;
    }

    static {
        try {
            b = Class.forName("android.view.WindowManagerImpl");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SecurityException e2) {
            e2.printStackTrace();
        }
    }

    public final View[] a() {
        try {
            Field viewsField = b.getDeclaredField("mViews");
            Field instanceField = b.getDeclaredField(this.a);
            viewsField.setAccessible(true);
            instanceField.setAccessible(true);
            return (View[]) viewsField.get(instanceField.get(null));
        } catch (SecurityException e) {
            e.printStackTrace();
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        }
        return null;
    }
}
