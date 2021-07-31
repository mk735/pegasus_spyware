package com.lenovo.safecenter.systeminfo.service;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import com.lenovo.safecenter.utils.Const;

public class NetworkInfoService {
    private static final String a = NetworkInfoService.class.getSimpleName();
    private static NetworkInfoService b = null;

    private NetworkInfoService() {
    }

    public static NetworkInfoService getInstance() {
        if (b == null) {
            synchronized (NetworkInfoService.class) {
                b = new NetworkInfoService();
            }
        }
        return b;
    }

    public String getNetworkType() {
        switch (a().getNetworkType()) {
            case 0:
                return Const.mContext.getString(R.string.none_know_nettype);
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "EVDO_0";
            case 6:
                return "EVDO_A";
            case 7:
                return "1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "IDEN";
            default:
                return Const.mContext.getString(R.string.none_know_nettype);
        }
    }

    public String getNetWorkCountryIso() {
        return a().getNetworkCountryIso();
    }

    public String getNetWorkOperator() {
        return a().getNetworkOperator();
    }

    public String getNetWorkOperatorName() {
        switch (a().getSimState()) {
            case 0:
                return Const.mContext.getString(R.string.localblack_noName);
            case 1:
                return Const.mContext.getString(R.string.no_sim_insert);
            case 2:
            case 3:
            case 4:
            default:
                return null;
            case 5:
                if (a().getDeviceId() == null) {
                    return Const.mContext.getString(R.string.no_sim_insert);
                }
                String networkOperatorName = a().getNetworkOperatorName();
                if ("Android".equals(networkOperatorName)) {
                    return Const.mContext.getString(R.string.localblack_noName);
                }
                return networkOperatorName;
        }
    }

    public String getNetworkInfo() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(Const.mContext.getString(R.string.simcard_type)).append(getNetWorkOperatorName()).append('\n');
        buffer.append(Const.mContext.getString(R.string.network_type)).append(getNetworkType());
        return buffer.toString();
    }

    public boolean isOnline() {
        NetworkInfo info = ((ConnectivityManager) Const.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (info == null || !info.isConnected()) {
            return false;
        }
        return true;
    }

    public String getWifiInfo() {
        StringBuffer buffer = new StringBuffer("WLAN状态：");
        if (((WifiManager) Const.mContext.getSystemService(SettingUtil.WIFI)).isWifiEnabled()) {
            buffer.append(Const.mContext.getString(R.string.opend));
        } else {
            buffer.append(Const.mContext.getString(R.string.no_open));
        }
        return buffer.toString();
    }

    public int getPhoneType() {
        return a().getPhoneType();
    }

    public String getConnectTypeName() {
        NetworkInfo info;
        if (isOnline() && (info = ((ConnectivityManager) Const.mContext.getSystemService("connectivity")).getActiveNetworkInfo()) != null) {
            return info.getTypeName();
        }
        return "OFFLINE";
    }

    private static TelephonyManager a() {
        return (TelephonyManager) Const.mContext.getSystemService("phone");
    }
}
