package com.lenovo.safecenter.net.cache;

import android.os.Handler;

public class NetCache {
    private static float a;
    private static float b;
    private static float c;
    public static boolean canCorrect = true;
    private static long d;
    public static int data_id_postion;
    private static String e;
    private static String f;
    private static long g;
    private static Handler h;
    private static long i;
    public static String imsi;
    public static String imsi2;
    public static boolean isProvideMuti;
    public static boolean is_net_flush_cast = false;
    public static int lastCorrectCard = 0;
    public static int traffic_mode = -1;

    public static long getBoot_time() {
        return g;
    }

    public static void setBoot_time(long boot_time) {
        g = boot_time;
    }

    public static String getCached_imsi() {
        return e;
    }

    public static void setCached_imsi(String cached_imsi) {
        e = cached_imsi;
    }

    public static String getCached_imsi2() {
        return f;
    }

    public static void setCached_imsi2(String cached_imsi2) {
        f = cached_imsi2;
    }

    public static long getTraffic_used_progress() {
        return d;
    }

    public static void setTraffic_used_progress(long traffic_used_progress) {
        d = traffic_used_progress;
    }

    public static long getTraffic_used_progress2() {
        return i;
    }

    public static void setTraffic_used_progress2(long traffic_used_progress2) {
        i = traffic_used_progress2;
    }

    public static float getTraffic_view_text_size() {
        return c;
    }

    public static void setTraffic_view_text_size(float traffic_view_text_size) {
        c = traffic_view_text_size;
    }

    public static float getTraffic_view_width() {
        return a;
    }

    public static void setTraffic_view_width(float traffic_view_width) {
        a = traffic_view_width;
    }

    public static float getTraffic_view_height() {
        return b;
    }

    public static void setTraffic_view_height(float traffic_view_height) {
        b = traffic_view_height;
    }

    public static Handler getNetSettingHandler() {
        return h;
    }

    public static void setNetSettingHandler(Handler netSettingHandler) {
        h = netSettingHandler;
    }
}
