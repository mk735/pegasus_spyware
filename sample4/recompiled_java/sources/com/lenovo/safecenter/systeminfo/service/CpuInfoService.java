package com.lenovo.safecenter.systeminfo.service;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;

public class CpuInfoService {
    private static final String a = CpuInfoService.class.getSimpleName();
    private static CpuInfoService b = new CpuInfoService();

    private CpuInfoService() {
    }

    public static CpuInfoService getInstance() {
        return b;
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x016d A[SYNTHETIC, Splitter:B:40:0x016d] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0172 A[SYNTHETIC, Splitter:B:43:0x0172] */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x01ef A[SYNTHETIC, Splitter:B:59:0x01ef] */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x01f4 A[SYNTHETIC, Splitter:B:62:0x01f4] */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x0213 A[SYNTHETIC, Splitter:B:70:0x0213] */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0218 A[SYNTHETIC, Splitter:B:73:0x0218] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String getCpuInfo(android.content.Context r17) {
        /*
        // Method dump skipped, instructions count: 583
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.safecenter.systeminfo.service.CpuInfoService.getCpuInfo(android.content.Context):java.lang.String");
    }

    public static String getMaxCpuFreq() {
        String result = "";
        try {
            InputStream in = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] re = new byte[24];
            while (in.read(re) != -1) {
                result = result + new String(re);
            }
            in.close();
        } catch (IOException ex) {
            ex.printStackTrace();
            result = "N/A";
        }
        return result.trim();
    }

    public static String getMinCpuFreq() {
        String result = "";
        try {
            InputStream in = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            byte[] re = new byte[24];
            while (in.read(re) != -1) {
                result = result + new String(re);
            }
            in.close();
        } catch (IOException ex) {
            ex.printStackTrace();
            result = "N/A";
        }
        return result.trim();
    }

    public static String getCurCpuFreq() {
        try {
            String text = new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq")).readLine();
            if (!TextUtils.isEmpty(text)) {
                return text.trim();
            }
            return "N/A";
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return "N/A";
        } catch (IOException e2) {
            e2.printStackTrace();
            return "N/A";
        }
    }

    public static String getCpuName() {
        try {
            String text = new BufferedReader(new FileReader("/proc/cpuinfo")).readLine();
            if (!TextUtils.isEmpty(text)) {
                return text.split(":\\s+", 2)[1];
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return null;
    }
}
