package com.lenovo.safecenter.systeminfo.service;

import android.content.Context;
import android.util.DisplayMetrics;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.utils.Const;

public class ScreenInfoService {
    private static final String a = ScreenInfoService.class.getSimpleName();
    private static ScreenInfoService b = new ScreenInfoService();

    private ScreenInfoService() {
    }

    public static ScreenInfoService getInstance() {
        return b;
    }

    public String getDisplayMetrics() {
        Context context = Const.mContext;
        StringBuffer buffer = new StringBuffer();
        DisplayMetrics dm = context.getApplicationContext().getResources().getDisplayMetrics();
        int screenWidth = dm.widthPixels;
        int screenHeight = dm.heightPixels;
        float xdpi = dm.xdpi;
        boolean supportMultiTouch = context.getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch");
        buffer.append(Const.mContext.getString(R.string.srceen_px)).append(screenHeight).append('*').append(screenWidth).append('\n');
        buffer.append(Const.mContext.getString(R.string.srceen_dp)).append(xdpi).append(" Dpi").append('\n');
        buffer.append(Const.mContext.getString(R.string.srceen_mutil)).append(supportMultiTouch ? "支持" : "不支持");
        return buffer.toString();
    }
}
