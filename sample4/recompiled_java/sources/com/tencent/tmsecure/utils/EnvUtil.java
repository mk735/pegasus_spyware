package com.tencent.tmsecure.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.lenovo.lps.sus.c.c;
import com.lenovo.safecenter.mmsutils.CharacterSets;
import java.io.File;
import tms.af;
import tms.v;

public class EnvUtil {
    private static String[] a(Context context) {
        String[] strArr = new String[4];
        strArr[0] = Build.MODEL;
        strArr[1] = Build.VERSION.RELEASE;
        String str = "";
        try {
            str = v.i("/proc/cpuinfo").split("\\n")[0];
        } catch (Exception e) {
            e.printStackTrace();
        }
        strArr[2] = str;
        strArr[3] = Integer.toString(PhoneInfoUtil.getScreenWidth(context)) + CharacterSets.MIMENAME_ANY_CHARSET + Integer.toString(PhoneInfoUtil.getScreenHeight(context));
        return strArr;
    }

    public static String getDeviceInfoStr(Context context) {
        String str = new String();
        String[] a = a(context);
        String str2 = (((str + "MODEL " + a[0] + c.O) + "ANDROID " + a[1] + c.O) + "CPU " + a[2] + c.O) + "resolution  " + a[3] + c.O;
        String a2 = new af("NetInterfaceManager").a("upload_config_des", (String) null);
        return (a2 == null || a2.equals("")) ? str2 : str2 + a2;
    }

    public static boolean hadsufile() {
        return new File("/system/xbin/su").exists() || new File("/system/bin/su").exists();
    }

    public static boolean isBuildIn(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 8192);
            return (applicationInfo == null || (applicationInfo.flags & 1) == 0) ? false : true;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (Exception e2) {
            return false;
        }
    }
}
