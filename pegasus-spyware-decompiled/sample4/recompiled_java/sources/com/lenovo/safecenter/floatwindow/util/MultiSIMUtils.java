package com.lenovo.safecenter.floatwindow.util;

import android.content.Context;

public class MultiSIMUtils {
    Class a;
    Object b;
    private Context c;

    public MultiSIMUtils(Context context) {
        this.c = context;
        try {
            this.a = Class.forName("android.provider.MultiSIMUtils");
            this.b = this.a.getMethod("getDefault", Context.class).invoke(null, context);
        } catch (Exception e) {
        }
    }

    public String getDataSubscriberId() {
        try {
            return (String) this.a.getMethod("getDataSubscriberId", null).invoke(this.b, null);
        } catch (Exception e) {
            return null;
        }
    }

    public String getPlatform() {
        try {
            return (String) this.a.getMethod("getPlatform", null).invoke(this.b, null);
        } catch (Exception e) {
            return null;
        }
    }

    public int getSimState(int mSlot) {
        try {
            return ((Integer) this.a.getMethod("getSimState", Integer.TYPE).invoke(this.b, Integer.valueOf(mSlot))).intValue();
        } catch (Exception e) {
            return 0;
        }
    }

    public String getSubscriberId(int mSlot) {
        try {
            return (String) this.a.getMethod("getSubscriberId", Integer.TYPE).invoke(this.b, Integer.valueOf(mSlot));
        } catch (Exception e) {
            return null;
        }
    }
}
