package com.lenovo.safecenter.systeminfo.service;

import android.os.Build;
import android.telephony.TelephonyManager;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;

public class PhoneInfoService {
    private static final String a = PhoneInfoService.class.getSimpleName();
    private static PhoneInfoService b = new PhoneInfoService();

    private PhoneInfoService() {
    }

    public static PhoneInfoService getInstance() {
        return b;
    }

    public String getModelName() {
        return Build.MODEL;
    }

    public String getDeviceId() {
        return ((TelephonyManager) Const.mContext.getSystemService("phone")).getDeviceId();
    }

    public String getSystemSoftwareVersion() {
        return Build.VERSION.RELEASE;
    }

    public String getPhoneInfo() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(Const.mContext.getString(R.string.machine_type)).append(getModelName()).append('\n');
        buffer.append(Const.mContext.getString(R.string.os_type)).append(getSystemSoftwareVersion()).append('\n');
        buffer.append(Const.mContext.getString(R.string.phone_imsi)).append(getDeviceId() == null ? Const.mContext.getString(R.string.antispamlocalblack_noName) : getDeviceId());
        return buffer.toString();
    }
}
