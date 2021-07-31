package com.tencent.tccdb;

import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.update.UpdateConfig;
import java.util.ArrayList;
import tms.ad;
import tms.v;

public class TelNumberLocator {
    private static TelNumberLocator c = null;
    private int a;
    private Context b;

    static {
        ad.a(TMSApplication.getApplicaionContext(), TMSApplication.getStrFromEnvMap(TMSApplication.CON_LOCATION_LIBNAME));
    }

    private TelNumberLocator(Context context) {
        this.b = context;
        this.a = newObject(context);
        if (this.a == 0) {
            throw new OutOfMemoryError();
        }
        reload();
    }

    private static void a(int i) {
        switch (i) {
            case -4:
                throw new OutOfMemoryError();
            case 0:
                return;
            default:
                throw new TelNumberLocatorException(i);
        }
    }

    private static native void deleteObject(int i);

    private static native int[] getAreaCode(int i);

    private static native int getAreaCodeLocation(int i, int i2, StringBuffer stringBuffer);

    private static native int getCityNameList(int i, String str, ArrayList<String> arrayList);

    private static native int[] getCountryCode(int i);

    private static native int getCountryCodeLocation(int i, int i2, StringBuffer stringBuffer);

    public static synchronized TelNumberLocator getDefault(Context context) {
        TelNumberLocator telNumberLocator;
        synchronized (TelNumberLocator.class) {
            if (c == null) {
                c = new TelNumberLocator(context);
            }
            telNumberLocator = c;
        }
        return telNumberLocator;
    }

    private static native int getDetailYellowPages(int i, ArrayList<Integer> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3, ArrayList<String> arrayList4);

    private static native int getLocation(int i, StringBuffer stringBuffer, StringBuffer stringBuffer2, StringBuffer stringBuffer3, String str, boolean z);

    private static native int getMobileNumLocation(int i, int i2, StringBuffer stringBuffer);

    private static native int getProvinceNameList(int i, ArrayList<String> arrayList);

    private static native int getYellowPages(int i, ArrayList<String> arrayList, ArrayList<String> arrayList2);

    private static native int init(int i, String str, String str2);

    private static native int newObject(Context context);

    private static native int patch(int i, String str, String str2, String str3);

    /* access modifiers changed from: protected */
    public void finalize() {
        if (this.a != 0) {
            deleteObject(this.a);
        }
    }

    public int[] getAreaCode() {
        return getAreaCode(this.a);
    }

    public String getAreaCodeLocation(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        int areaCodeLocation = getAreaCodeLocation(this.a, i, stringBuffer);
        if (areaCodeLocation < 0) {
            if (areaCodeLocation == -1) {
                return "";
            }
            a(areaCodeLocation);
        }
        return stringBuffer.toString();
    }

    public ArrayList<String> getCityNameList(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        a(getCityNameList(this.a, str, arrayList));
        return arrayList;
    }

    public int[] getCountryCode() {
        return getCountryCode(this.a);
    }

    public String getCountryCodeLocation(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        int countryCodeLocation = getCountryCodeLocation(this.a, i, stringBuffer);
        if (countryCodeLocation < 0) {
            if (countryCodeLocation == -1) {
                return "";
            }
            a(countryCodeLocation);
        }
        return stringBuffer.toString();
    }

    public boolean getDetailYellowPages(ArrayList<Integer> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3, ArrayList<String> arrayList4) {
        if (arrayList2 == null || arrayList3 == null) {
            return false;
        }
        a(getDetailYellowPages(this.a, arrayList, arrayList2, arrayList3, arrayList4));
        return true;
    }

    public void getLocation(StringBuffer stringBuffer, StringBuffer stringBuffer2, StringBuffer stringBuffer3, String str, boolean z) {
        int location = getLocation(this.a, stringBuffer, stringBuffer2, stringBuffer3, str, z);
        if (location >= 0) {
            return;
        }
        if (location == -1) {
            stringBuffer.replace(0, stringBuffer.length(), "");
            stringBuffer2.replace(0, stringBuffer2.length(), "");
            stringBuffer3.replace(0, stringBuffer3.length(), "");
            return;
        }
        a(location);
    }

    public String getMobileNumLocation(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        int mobileNumLocation = getMobileNumLocation(this.a, i, stringBuffer);
        if (mobileNumLocation < 0) {
            if (mobileNumLocation == -1) {
                return "";
            }
            a(mobileNumLocation);
        }
        return stringBuffer.toString();
    }

    public ArrayList<String> getProvinceNameList() {
        ArrayList<String> arrayList = new ArrayList<>();
        a(getProvinceNameList(this.a, arrayList));
        return arrayList;
    }

    public boolean getYellowPages(ArrayList<String> arrayList, ArrayList<String> arrayList2) {
        if (arrayList == null || arrayList2 == null) {
            return false;
        }
        a(getYellowPages(this.a, arrayList, arrayList2));
        return true;
    }

    public int patchLocation(String str, String str2) {
        return patch(this.a, v.a(this.b, UpdateConfig.LOCATION_NAME, (String) null), str, str2);
    }

    public void reload() {
        try {
            String a2 = v.a(this.b, UpdateConfig.LOCATION_NAME, (String) null);
            String a3 = v.a(this.b, "yd.sdb", (String) null);
            if (a2 != null || a3 != null) {
                a(init(this.a, a2, a3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
