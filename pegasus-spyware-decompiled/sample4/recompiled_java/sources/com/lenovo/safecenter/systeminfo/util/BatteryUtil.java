package com.lenovo.safecenter.systeminfo.util;

public class BatteryUtil {
    public static int getCapacity() {
        return Integer.parseInt(a("/sys/class/power_supply/battery/capacity"));
    }

    public static String getBatteryType() {
        return a("/sys/class/power_supply/battery/technology");
    }

    public static int getVoltage() {
        String resultString = a("/sys/class/power_supply/battery/voltage_now");
        if (resultString == null || "".equals(resultString)) {
            return 0;
        }
        return Integer.parseInt(resultString);
    }

    public static int getCurrent() {
        String resultString = a("/sys/class/power_supply/battery/current_now");
        if (resultString == null || "".equals(resultString)) {
            return 0;
        }
        return Integer.parseInt(resultString);
    }

    public static int getTemperature() {
        String resultString = a("/sys/class/power_supply/battery/temp");
        if (resultString == null || "".equals(resultString)) {
            return 0;
        }
        return Integer.parseInt(resultString);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0035 A[SYNTHETIC, Splitter:B:22:0x0035] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x003a A[SYNTHETIC, Splitter:B:25:0x003a] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0055 A[SYNTHETIC, Splitter:B:33:0x0055] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x005a A[SYNTHETIC, Splitter:B:36:0x005a] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0072 A[SYNTHETIC, Splitter:B:43:0x0072] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0077 A[SYNTHETIC, Splitter:B:46:0x0077] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0086 A[SYNTHETIC, Splitter:B:52:0x0086] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x008b A[SYNTHETIC, Splitter:B:55:0x008b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.lang.String r10) {
        /*
        // Method dump skipped, instructions count: 252
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.systeminfo.util.BatteryUtil.a(java.lang.String):java.lang.String");
    }
}
