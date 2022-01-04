package com.lenovo.safecenter.systeminfo.service;

import android.content.Context;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.systeminfo.util.BatteryUtil;

public class BatteryInfoService {
    private static final String a = BatteryInfoService.class.getSimpleName();
    private static BatteryInfoService b = null;

    private BatteryInfoService() {
    }

    public static BatteryInfoService getInstance() {
        if (b == null) {
            synchronized (BatteryInfoService.class) {
                b = new BatteryInfoService();
            }
        }
        return b;
    }

    public int getCapacity() {
        return Integer.parseInt(a("/sys/class/power_supply/battery/capacity"));
    }

    public String getBatteryType() {
        return a("/sys/class/power_supply/battery/technology");
    }

    public int getVoltage() {
        String resultString = a("/sys/class/power_supply/battery/voltage_now");
        if (resultString == null || "".equals(resultString)) {
            return 0;
        }
        return Integer.parseInt(resultString);
    }

    public int getCurrent() {
        String resultString = a("/sys/class/power_supply/battery/current_now");
        if (resultString == null || "".equals(resultString)) {
            return 0;
        }
        return Integer.parseInt(resultString);
    }

    public int getTemperature() {
        String resultString = a("/sys/class/power_supply/battery/temp");
        if (resultString == null || "".equals(resultString)) {
            return 0;
        }
        return Integer.parseInt(resultString);
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x004b A[SYNTHETIC, Splitter:B:25:0x004b] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0050 A[SYNTHETIC, Splitter:B:28:0x0050] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0076 A[SYNTHETIC, Splitter:B:37:0x0076] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x007b A[SYNTHETIC, Splitter:B:40:0x007b] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00a1 A[SYNTHETIC, Splitter:B:49:0x00a1] */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00a6 A[SYNTHETIC, Splitter:B:52:0x00a6] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00c5 A[SYNTHETIC, Splitter:B:60:0x00c5] */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x00ca A[SYNTHETIC, Splitter:B:63:0x00ca] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String a(java.lang.String r10) {
        /*
        // Method dump skipped, instructions count: 260
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.systeminfo.service.BatteryInfoService.a(java.lang.String):java.lang.String");
    }

    public String getBatteryInfo(Context c) {
        StringBuffer strInfo = new StringBuffer();
        strInfo.append(c.getString(R.string.sysinfo_battery_power, Integer.valueOf(BatteryUtil.getCapacity()))).append("\n");
        strInfo.append(c.getString(R.string.sysinfo_battery_voltage, Integer.valueOf(BatteryUtil.getVoltage()))).append("\n");
        strInfo.append(c.getString(R.string.sysinfo_battery_temperature, Integer.valueOf(BatteryUtil.getTemperature()))).append("℃\n");
        strInfo.append(c.getString(R.string.sysinfo_battery_type, BatteryUtil.getBatteryType()));
        return strInfo.toString();
    }
}
