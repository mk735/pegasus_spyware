package com.tencent.tmsecure.utils;

import QQPIM.ConnectType;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import com.tencent.tmsecure.common.TMSApplication;

public class NetworkUtil {
    private static int a;

    public static boolean canNetworkOnMainThread() {
        if (SDKUtil.getSDKVersion() < 11) {
            return true;
        }
        if (a < 1) {
            a = TMSApplication.getApplicaionContext().getApplicationInfo().targetSdkVersion;
        }
        return a < 10;
    }

    public static String getNetworkName() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) TMSApplication.getApplicaionContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return "";
        }
        String ssid = activeNetworkInfo.getType() == 1 ? WifiUtil.getSSID() : activeNetworkInfo.getExtraInfo();
        return ssid == null ? "" : ssid;
    }

    public static ConnectType getNetworkType() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) TMSApplication.getApplicaionContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return ConnectType.CT_GPRS_NET;
        }
        if (activeNetworkInfo.getType() == 1) {
            return ConnectType.CT_WIFI;
        }
        if (activeNetworkInfo.getType() != 0) {
            return ConnectType.CT_GPRS_NET;
        }
        String proxyHost = getProxyHost();
        return (proxyHost == null || proxyHost.length() <= 0 || getProxyPort() <= 0) ? ConnectType.CT_GPRS_NET : ConnectType.CT_GPRS_WAP;
    }

    public static String getProxyHost() {
        String host = Proxy.getHost(TMSApplication.getApplicaionContext());
        return (host == null || host.length() == 0) ? Proxy.getDefaultHost() : host;
    }

    public static int getProxyPort() {
        int port = Proxy.getPort(TMSApplication.getApplicaionContext());
        return port <= 0 ? Proxy.getDefaultPort() : port;
    }
}
