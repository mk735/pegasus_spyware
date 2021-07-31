package com.lenovo.lps.reaper.sdk.sdac;

import android.content.Context;
import android.telephony.CellLocation;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;

public class MultiSIMDeviceInfo {
    public static final int GEMINI_SIM_1 = 0;
    public static final int GEMINI_SIM_2 = 1;
    private static MultiSIMDeviceInfo a = null;
    private Object b;

    private MultiSIMDeviceInfo(Context context) {
        this.b = ReflectUtils.invokeClass("android.provider.MultiSIMUtils", "getDefault", new Class[]{Context.class}, context);
    }

    public static synchronized MultiSIMDeviceInfo getInstance(Context context) {
        MultiSIMDeviceInfo multiSIMDeviceInfo;
        synchronized (MultiSIMDeviceInfo.class) {
            if (a == null) {
                a = new MultiSIMDeviceInfo(context);
            }
            multiSIMDeviceInfo = a;
        }
        return multiSIMDeviceInfo;
    }

    public int getCellId(int simId) {
        try {
            CellLocation cell = (CellLocation) a("getCellLocation", simId);
            if (cell instanceof GsmCellLocation) {
                return ((GsmCellLocation) cell).getCid();
            }
            return ((CdmaCellLocation) cell).getBaseStationId();
        } catch (Exception e) {
            return -1;
        }
    }

    public CellLocation getCellLocation(int simId) {
        try {
            return (CellLocation) a("getCellLocation", simId);
        } catch (Exception e) {
            return null;
        }
    }

    public String getSubscriberId(int simId) {
        return (String) a("getSubscriberId", simId);
    }

    public String getDeviceId(int simId) {
        return (String) a("getDeviceId", simId);
    }

    public String getSmsCenter() {
        String sms = (String) a("getScAddress", 0);
        if (sms == null || sms.length() == 0) {
            return (String) a("getScAddress", 1);
        }
        return sms;
    }

    public String getNetworkOperator(int simId) {
        return (String) a("getNetworkOperator", simId);
    }

    public String getSimOperator(int simId) {
        return (String) a("getSimOperator", simId);
    }

    public String getSimSerialNumber(int simId) {
        return (String) a("getSimSerialNumber", simId);
    }

    public int getPhoneType(int simId) {
        try {
            return ((Integer) a("getPhoneType", simId)).intValue();
        } catch (Exception e) {
            return 0;
        }
    }

    public int getSimState(int simId) {
        try {
            return ((Integer) a("getSimState", simId)).intValue();
        } catch (Exception e) {
            return 1;
        }
    }

    private Object a(String methodName, int simId) {
        if (this.b == null) {
            return null;
        }
        try {
            return ReflectUtils.invoke(this.b, methodName, new Class[]{Integer.TYPE}, Integer.valueOf(simId));
        } catch (Exception e) {
            return null;
        }
    }
}
