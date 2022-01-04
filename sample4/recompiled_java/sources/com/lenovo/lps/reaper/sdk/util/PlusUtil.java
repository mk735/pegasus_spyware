package com.lenovo.lps.reaper.sdk.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.lenovo.lps.reaper.sdk.sdac.DeviceDataImpl;
import com.lenovo.lps.reaper.sdk.util.Constants;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import ledroid.root.LedroidServiceLauncher;

public class PlusUtil {

    public static class NetworkStatus {
        private static int a;
        private static boolean b = false;

        public static int getNetworkStatus() {
            return a;
        }

        public static boolean isRoaming() {
            return b;
        }

        public static void setNetworkStatus(Context context) {
            b = ((TelephonyManager) context.getSystemService("phone")).isNetworkRoaming();
            NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (networkInfo == null || !networkInfo.isAvailable()) {
                a = 1;
                return;
            }
            int netType = networkInfo.getType();
            int netSubtype = networkInfo.getSubtype();
            if (netType == 1) {
                a = 2;
            } else if (netType != 0) {
                a = 0;
            } else if (!networkInfo.isConnected()) {
            } else {
                if (netSubtype == 1 || netSubtype == 2 || netSubtype == 4) {
                    a = 4;
                } else {
                    a = 3;
                }
            }
        }
    }

    public static class DeviceIdentify {
        private static String a = "000000000000";
        private static String b = "mac";
        private static Context c;
        private static BroadcastReceiver d;

        public static void initialDeviceIdentify(Context context) {
            String lowerCase;
            boolean z = true;
            c = context;
            String imei = new DeviceDataImpl().getIMEI(context, 1);
            if (imei == null || imei.length() <= 0 || "00000000".equals(imei)) {
                String lowerCase2 = Build.MANUFACTURER.toLowerCase();
                if ((lowerCase2 == null || !lowerCase2.contains(LedroidServiceLauncher.SERVICE_NAME)) && ((lowerCase = Build.MODEL.toLowerCase()) == null || !lowerCase.contains(LedroidServiceLauncher.SERVICE_NAME))) {
                    z = false;
                }
                if (z) {
                    String sn = Build.VERSION.SDK_INT >= 9 ? Build.SERIAL : null;
                    TLog.v("SN: ", sn);
                    if (sn != null && sn.length() > 0 && !sn.toLowerCase().equals("unknown")) {
                        a(sn.toUpperCase(), "sn");
                        return;
                    }
                }
                IntentFilter intentFilter = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");
                if (!b() && d == null) {
                    d = new BroadcastReceiver() {
                        /* class com.lenovo.lps.reaper.sdk.util.PlusUtil.DeviceIdentify.AnonymousClass1 */

                        public final void onReceive(Context context, Intent intent) {
                            if (3 == intent.getIntExtra("wifi_state", -1)) {
                                DeviceIdentify.b();
                                context.unregisterReceiver(this);
                            }
                        }
                    };
                    c.registerReceiver(d, intentFilter);
                    return;
                }
                return;
            }
            a(imei.toUpperCase(), "imei");
        }

        public static void setOffWifiListener() {
            if (d != null) {
                try {
                    c.unregisterReceiver(d);
                } catch (Exception e) {
                    TLog.d(Constants.SharedPreference.PLUSUTIL, e.getMessage());
                }
            }
        }

        /* access modifiers changed from: private */
        public static boolean b() {
            SharedPreferences sharedPreferences = c.getSharedPreferences(Constants.SharedPreference.PLUSUTIL, 0);
            if (sharedPreferences.contains("mac")) {
                a(sharedPreferences.getString("mac", a), "mac");
                return true;
            }
            String macAddress = ((WifiManager) c.getSystemService(SettingUtil.WIFI)).getConnectionInfo().getMacAddress();
            if (macAddress == null) {
                return false;
            }
            TLog.v("MAC: ", macAddress);
            sharedPreferences.edit().putString("mac", macAddress.replace(c.N, "").toUpperCase()).commit();
            a(sharedPreferences.getString("mac", a), "mac");
            return true;
        }

        public static String getDeviceID() {
            return a;
        }

        public static String getDeviceType() {
            return b;
        }

        private static void a(String deviceId, String deviceIdType) {
            a = AnalyticsTrackerUtils.encode(deviceId);
            b = deviceIdType;
            TLog.i(Constants.SharedPreference.PLUSUTIL, "DeviceType&Id is Set to: " + getDeviceType() + getDeviceID());
        }
    }
}
