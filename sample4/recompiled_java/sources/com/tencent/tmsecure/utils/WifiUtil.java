package com.tencent.tmsecure.utils;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Looper;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.tencent.tmsecure.common.TMSApplication;
import tms.hg;

public class WifiUtil {
    public static final String TEST_URL = "http://www.baidu.com/";
    private static final String a = ".baidu.";
    private static final String b = "百度";
    public static String sRedirectLocation;

    public interface IWifiApproveCheckCallBack {
        void onWifiApproveCheckFinished(boolean z, boolean z2);
    }

    public static int calculateSignalLevel(int i) {
        if (!isWifiNetwork()) {
            return -1;
        }
        return WifiManager.calculateSignalLevel(((WifiManager) TMSApplication.getApplicaionContext().getSystemService(SettingUtil.WIFI)).getConnectionInfo().getRssi(), i);
    }

    public static String getSSID() {
        WifiInfo connectionInfo;
        WifiManager wifiManager = (WifiManager) TMSApplication.getApplicaionContext().getSystemService(SettingUtil.WIFI);
        return (wifiManager == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) ? "" : connectionInfo.getSSID();
    }

    public static boolean isWifiNetwork() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) TMSApplication.getApplicaionContext().getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static void needWifiApprove(IWifiApproveCheckCallBack iWifiApproveCheckCallBack) {
        new hg(Looper.getMainLooper(), iWifiApproveCheckCallBack).sendEmptyMessage(0);
    }
}
