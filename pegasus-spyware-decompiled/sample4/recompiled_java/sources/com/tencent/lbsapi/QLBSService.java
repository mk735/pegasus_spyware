package com.tencent.lbsapi;

import android.content.Context;
import com.tencent.lbsapi.core.j;
import com.tencent.lbsapi.model.QLBSCellInfo;
import com.tencent.lbsapi.model.QLBSGPSInfo;
import java.util.ArrayList;

public class QLBSService {
    public static final int POI_CATEGORY_ALL = 0;
    public static final int POI_CATEGORY_BANK = 250000;
    public static final int POI_CATEGORY_BEAUTY = 170000;
    public static final int POI_CATEGORY_CAR = 190000;
    public static final int POI_CATEGORY_CULTURE = 230000;
    public static final int POI_CATEGORY_ESTATE = 280000;
    public static final int POI_CATEGORY_FOOD = 100000;
    public static final int POI_CATEGORY_HEALTH = 200000;
    public static final int POI_CATEGORY_HOTEL = 210000;
    public static final int POI_CATEGORY_INFRA = 270000;
    public static final int POI_CATEGORY_PLACE = 260000;
    public static final int POI_CATEGORY_POI_COM = 110000;
    public static final int POI_CATEGORY_POI_ENTM = 160000;
    public static final int POI_CATEGORY_POI_ORG = 120000;
    public static final int POI_CATEGORY_POI_SERVICE = 140000;
    public static final int POI_CATEGORY_POI_SHOPPING = 130000;
    public static final int POI_CATEGORY_SCHOOL = 240000;
    public static final int POI_CATEGORY_SPORT = 180000;
    public static final int POI_CATEGORY_TOUR = 220000;
    public static final int POI_SORT_BY_DISTANCE = 0;
    public static final int POI_SORT_BY_HOT = 1;
    public static final int UIN_EMAIL = 1;
    public static final int UIN_MOBILE = 2;
    public static final int UIN_QQ = 0;
    private j a = null;

    public QLBSService(Context context, QLBSNotification qLBSNotification, String str, String str2, String str3) {
        this.a = new j(context, qLBSNotification, str, str2, str3);
    }

    public int getCarrierId() {
        return this.a.e();
    }

    public QLBSCellInfo getCellInfo() {
        return this.a.f();
    }

    public byte[] getDeviceData() {
        return this.a.c();
    }

    public QLBSGPSInfo getGps() {
        return this.a.i();
    }

    public QLBSCellInfo getSingleCellInfo() {
        return this.a.g();
    }

    public ArrayList getWifi() {
        return this.a.h();
    }

    public boolean isGpsEnabled() {
        return this.a.d();
    }

    public void release() {
        this.a.a();
        this.a = null;
    }

    public boolean requestGetCurrentPosition(int i, String str, int i2) {
        return this.a.a(i, str, i2);
    }

    public boolean requestGetNearPoiList(int i, String str, int i2, int i3, int i4, int i5, ArrayList arrayList, int i6) {
        return this.a.a(i, str, i2, i3, i4, i5, arrayList, i6);
    }

    public boolean requestSearchNearPoiList(int i, String str, int i2, int i3, int i4, int i5, String str2, ArrayList arrayList) {
        return this.a.a(i, str, i2, i3, i4, i5, str2, arrayList);
    }

    public void setGpsEnabled(boolean z) {
        this.a.a(z);
    }

    public void setWifiEnabled(boolean z) {
        this.a.b(z);
    }

    public void startLocation(int i) {
        this.a.a(i);
    }

    public void stopLocation() {
        this.a.b();
    }
}
