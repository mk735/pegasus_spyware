package com.tencent.tmsecure.module.software;

import com.lenovo.lps.sus.c.c;
import java.util.Date;

public final class SoftwareUseageInfo {
    public Date mFirstDate;
    public Date mLastDate;
    public String mPkgname;
    public int mUseCount;

    private SoftwareUseageInfo() {
    }

    public SoftwareUseageInfo(String str, Date date, Date date2, int i) {
        this.mPkgname = str;
        this.mFirstDate = date;
        this.mLastDate = date2;
        this.mUseCount = i;
    }

    public static SoftwareUseageInfo fromString(String str) {
        String[] split = str.trim().split(c.O);
        SoftwareUseageInfo softwareUseageInfo = new SoftwareUseageInfo();
        softwareUseageInfo.mPkgname = split[0];
        softwareUseageInfo.mFirstDate = new Date(Long.parseLong(split[1]));
        softwareUseageInfo.mLastDate = new Date(Long.parseLong(split[2]));
        softwareUseageInfo.mUseCount = Integer.parseInt(split[3]);
        return softwareUseageInfo;
    }

    public static String getString(SoftwareUseageInfo softwareUseageInfo) {
        StringBuilder sb = new StringBuilder();
        sb.append(softwareUseageInfo.mPkgname + c.O);
        sb.append(softwareUseageInfo.mFirstDate.getTime() + c.O);
        sb.append(softwareUseageInfo.mLastDate.getTime() + c.O);
        sb.append(softwareUseageInfo.mUseCount);
        return sb.toString();
    }
}
