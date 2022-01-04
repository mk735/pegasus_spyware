package com.tencent.tmsecure.module.network;

import android.text.TextUtils;

public final class TrafficEntity {
    public long mLastDownValue = 0;
    public long mLastUpValue = 0;
    public long mMobileDownValue = 0;
    public long mMobileUpValue = 0;
    public String mPkg;
    public long mWIFIDownValue = 0;
    public long mWIFIUpValue = 0;

    public static TrafficEntity fromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        TrafficEntity trafficEntity = new TrafficEntity();
        String[] split = str.trim().split("[,:]");
        trafficEntity.mPkg = split[0];
        trafficEntity.mLastUpValue = Long.parseLong(split[1]);
        trafficEntity.mLastDownValue = Long.parseLong(split[2]);
        trafficEntity.mMobileUpValue = Long.parseLong(split[3]);
        trafficEntity.mMobileDownValue = Long.parseLong(split[4]);
        trafficEntity.mWIFIUpValue = Long.parseLong(split[5]);
        trafficEntity.mWIFIDownValue = Long.parseLong(split[6]);
        return trafficEntity;
    }

    public static String toString(TrafficEntity trafficEntity) {
        return String.format("%s,%s,%s,%s,%s,%s,%s", trafficEntity.mPkg, Long.valueOf(trafficEntity.mLastUpValue), Long.valueOf(trafficEntity.mLastDownValue), Long.valueOf(trafficEntity.mMobileUpValue), Long.valueOf(trafficEntity.mMobileDownValue), Long.valueOf(trafficEntity.mWIFIUpValue), Long.valueOf(trafficEntity.mWIFIDownValue));
    }
}
