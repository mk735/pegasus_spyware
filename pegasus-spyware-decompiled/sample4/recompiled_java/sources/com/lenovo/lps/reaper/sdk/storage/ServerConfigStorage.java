package com.lenovo.lps.reaper.sdk.storage;

import com.lenovo.lps.reaper.sdk.util.Constants;
import com.lenovo.lps.reaper.sdk.util.PlusUtil;
import com.lenovo.lps.reaper.sdk.util.TLog;
import java.util.HashMap;

public class ServerConfigStorage {
    private static HashMap<String, Boolean> a = new HashMap<>();
    private static long b;

    public static synchronized void put(String key, boolean value) {
        synchronized (ServerConfigStorage.class) {
            if (TLog.isTestMode()) {
                TLog.d("ServerConfigStorage", "put ServerConfigStorage: [KEY]" + key + " [VALUE]" + value);
            }
            if (!UpdateConfigStrategy.b(key) && !DeviceSendFlag.a(key, value) && !DispatchStrategy.b(key, value)) {
                CompressStrategy.b(key, value);
            }
            a.put(key, Boolean.valueOf(value));
        }
    }

    public static synchronized boolean get(String key, boolean defaultValue) {
        synchronized (ServerConfigStorage.class) {
            Boolean value = a.get(key);
            if (value != null) {
                defaultValue = value.booleanValue();
            }
        }
        return defaultValue;
    }

    public static void clear() {
        TLog.v("ServerConfigStorage", "ServerConfigStorage is Clear");
        a.clear();
        UpdateConfigStrategy.a = 6;
        DeviceSendFlag.a = true;
        DispatchStrategy.a();
        CompressStrategy.a();
    }

    public static long getTimestampMills() {
        return b;
    }

    public static void setTimestampMills(long timestamp) {
        TLog.v("ServerConfigStorage", "Timestamp is set: " + timestamp);
        b = timestamp;
    }

    public static class UpdateConfigStrategy {
        private static long a = 6;

        public static long getUpdateIntervalHour() {
            return a;
        }

        /* access modifiers changed from: private */
        public static boolean b(String key) {
            if (key.contains(Constants.ServerConfig.UpdateStrategy.CATEGORY_UPDATE)) {
                try {
                    a = Long.parseLong(key.substring(key.indexOf(Constants.ServerConfig.UpdateStrategy.VALUE_PRE_UPDATE) + Constants.ServerConfig.UpdateStrategy.VALUE_PRE_UPDATE.length()));
                    TLog.v("ServerConfigStorage", "UpdateConfigInterval is set to " + a);
                    return true;
                } catch (Exception e) {
                    TLog.w("ServerConfigStorage", "UpdateConfigStrategy Update Wrong. " + e.getMessage());
                }
            }
            return false;
        }
    }

    public static class DeviceSendFlag {
        private static boolean a = true;

        static /* synthetic */ boolean a(String x0, boolean x1) {
            if (!x0.contains(Constants.ServerConfig.SendFlag.CATEGORY_SENDFLAG)) {
                return false;
            }
            a = x1;
            TLog.v("ServerConfigStorage", "SendFlag is set to " + x1);
            return true;
        }

        public static boolean needSend() {
            return a;
        }

        public static void needSend(boolean needSend) {
            a = needSend;
        }
    }

    public static class DispatchStrategy {
        private static int a = 1;
        private static int b = 1;
        private static boolean c = true;
        private static boolean d = true;

        static /* synthetic */ void a() {
            a = 1;
            b = 1;
            c = true;
            d = true;
        }

        public static long getThreshold() {
            switch (PlusUtil.NetworkStatus.getNetworkStatus()) {
                case 2:
                    return 1;
                case 3:
                    return (long) b;
                case 4:
                    return (long) a;
                default:
                    return (long) b;
            }
        }

        public static boolean readyForReport(Constants.DispatchMode dispatchMode) {
            if (PlusUtil.NetworkStatus.isRoaming()) {
                TLog.d("ServerConfigStorage", "Now is Roaming");
                return false;
            }
            switch (PlusUtil.NetworkStatus.getNetworkStatus()) {
                case 0:
                    TLog.d("ServerConfigStorage", "Now is NOTCONCERN");
                    return true;
                case 1:
                default:
                    return false;
                case 2:
                    return true;
                case 3:
                    if (!Constants.DispatchMode.FORCE_DISPATCH.equals(dispatchMode)) {
                        return d;
                    }
                    return true;
                case 4:
                    if (!Constants.DispatchMode.FORCE_DISPATCH.equals(dispatchMode)) {
                        return c;
                    }
                    return true;
            }
        }

        /* access modifiers changed from: private */
        public static boolean b(String key, boolean value) {
            int index = key.indexOf("Threshold-");
            if (index > 0) {
                try {
                    int eventNumThres = Integer.parseInt(key.substring("Threshold-".length() + index));
                    if (key.contains(Constants.ServerConfig.DispatchStrategy.CATEGORY_DISPATCH_3G4G)) {
                        b = eventNumThres;
                        d = value;
                        TLog.v("ServerConfigStorage", "DispatchStrategy 3G4G is set to " + eventNumThres + " [" + value + "]");
                        return true;
                    } else if (key.contains(Constants.ServerConfig.DispatchStrategy.CATEGORY_DISPATCH_2G)) {
                        a = eventNumThres;
                        c = value;
                        TLog.v("ServerConfigStorage", "DispatchStrategy 2G is set to " + eventNumThres + " [" + value + "]");
                        return true;
                    }
                } catch (Exception e) {
                    TLog.w("ServerConfigStorage", "DispatchStrategy Update Wrong. " + e.getMessage());
                }
            }
            return false;
        }
    }

    public static class CompressStrategy {
        private static int a = 3;
        private static int b = 5;
        private static boolean c = true;
        private static boolean d = true;

        static /* synthetic */ void a() {
            a = 3;
            b = 5;
            c = true;
            d = true;
        }

        public static boolean needCompress(int eventNum) {
            switch (PlusUtil.NetworkStatus.getNetworkStatus()) {
                case 3:
                    return d && eventNum >= b;
                case 4:
                    return c && eventNum >= a;
                default:
                    return false;
            }
        }

        /* access modifiers changed from: private */
        public static boolean b(String key, boolean value) {
            int index = key.indexOf("Threshold-");
            if (index > 0) {
                try {
                    int eventNumThres = Integer.parseInt(key.substring("Threshold-".length() + index));
                    if (key.contains(Constants.ServerConfig.CompressStrategy.CATEGORY_COMPRESS_3G4G)) {
                        b = eventNumThres;
                        d = value;
                        TLog.v("ServerConfigStorage", "CompressStrategy 3G4G is set to " + eventNumThres + " [" + value + "]");
                        return true;
                    } else if (key.contains(Constants.ServerConfig.CompressStrategy.CATEGORY_COMPRESS_2G)) {
                        a = eventNumThres;
                        c = value;
                        TLog.v("ServerConfigStorage", "CompressStrategy 2G is set to " + eventNumThres + " [" + value + "]");
                        return true;
                    }
                } catch (Exception e) {
                    TLog.w("ServerConfigStorage", "UpdateCompressStrategy Update Wrong. " + e.getMessage());
                }
            }
            return false;
        }
    }
}
