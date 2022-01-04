package com.tencent.tmsecure.utils;

import android.os.Build;

public final class SDKUtil {
    public static final int OS_1_5 = 3;
    public static final int OS_1_6 = 4;
    public static final int OS_2_0 = 5;
    public static final int OS_2_0_1 = 6;
    public static final int OS_2_1 = 7;
    public static final int OS_2_2 = 8;
    public static final int OS_2_3 = 9;
    public static final int OS_2_3_3 = 10;
    public static final int OS_3_0 = 11;
    public static final int OS_3_1 = 12;
    public static final int OS_3_2 = 13;
    public static final int OS_4_0 = 14;
    public static final int OS_4_0_3 = 15;
    public static final int RELEASE_ANDROID = 2;
    public static final int RELEASE_LEPHONE = 3;
    public static final int RELEASE_MEIZU_M9 = 4;
    public static final int RELEASE_OMS = 1;

    public static int getAndroidReleaseName() {
        String str = Build.PRODUCT;
        if (str.contains("OMS") || str.contains("SnapperTD")) {
            return 1;
        }
        if (str.contains("qsd8250_surf") || str.contains("3GW100")) {
            return 3;
        }
        return str.contains("meizu_m9") ? 4 : 2;
    }

    public static String getSDKName() {
        return Build.VERSION.SDK;
    }

    public static int getSDKVersion() {
        return Integer.parseInt(Build.VERSION.SDK);
    }
}
