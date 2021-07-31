package com.lenovo.lps.reaper.sdk.sdac;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Log;

public class DeviceDataImpl implements IDeviceData {
    @Override // com.lenovo.lps.reaper.sdk.sdac.IDeviceData
    public String getIMEI(Context context, int simId) {
        String imei = MultiSIMDeviceInfo.getInstance(context).getDeviceId(simId);
        Log.i("test4", imei + "aaa");
        TelephonyManager tm = (TelephonyManager) context.getSystemService("phone");
        if (imei == null || imei.length() == 0) {
            try {
                imei = (String) ReflectUtils.invoke(tm, "getDeviceIdGemini", new Class[]{Integer.TYPE}, Integer.valueOf(simId));
            } catch (Exception e) {
            }
        }
        Log.i("test5", imei + "aaa");
        if (imei == null || imei.length() == 0) {
            return tm.getDeviceId();
        }
        return imei;
    }
}
