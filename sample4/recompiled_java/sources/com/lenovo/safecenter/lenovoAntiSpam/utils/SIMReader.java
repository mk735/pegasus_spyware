package com.lenovo.safecenter.lenovoAntiSpam.utils;

import android.content.Context;
import android.telephony.TelephonyManager;

public class SIMReader {
    public static final String ERR_TAG = "SimUtil.java";
    public static final int NO_SIM = -1;
    public static final int SIM_CMCC = 1;
    public static final int SIM_CTCC = 3;
    public static final int SIM_CUCC = 2;
    public static final int SIM_UNKNOWN = 0;

    public static int getSimOperator(Context paramContext) {
        String str = ((TelephonyManager) paramContext.getSystemService("phone")).getSimOperator();
        if (str == null) {
            return -1;
        }
        String str2 = str.trim();
        if (str2.length() <= 0) {
            return -1;
        }
        if (str2.equals("46001")) {
            return 2;
        }
        if (str2.equals("46000") || str2.equals("46002") || str2.equals("46007")) {
            return 1;
        }
        if (str2.equals("46003")) {
            return 3;
        }
        return 0;
    }
}
