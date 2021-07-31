package com.lenovo.lps.sus;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.lenovo.lps.sus.b.e;
import com.lenovo.lps.sus.c.c;
import com.lenovo.lps.sus.control.ae;
import com.lenovo.lps.sus.control.ap;
import java.io.File;

public final class SUS {
    public static void AsyncQueryLatestVersionByPackageName(Context context, String str, int i, String str2) {
        c.b(true);
        ae.a(context, ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTINPUT_QUERYLATESTVER, new e(str, String.valueOf(i), str2, true, true));
    }

    public static void AsyncStartVersionUpdate(Context context) {
        ae.e();
        c.b(0);
        c.b(false);
        ae.a(context, ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_USERSETTINGS, (e) null);
    }

    public static void AsyncStartVersionUpdateByAppKey(Context context, String str, int i, String str2) {
        ae.e();
        c.b(0);
        c.b(true);
        ae.a(context, ap.SUS_UPDATETRANSATION_TYPE_BYAPPKEY_CUSTINPUT_NOUSERSETTINGS, new e(str, String.valueOf(i), str2, true, true));
    }

    public static void AsyncStartVersionUpdateByCustDM2Activity_NoUserSettings(Context context) {
        ae.e();
        c.b(0);
        c.b(true);
        ae.a(context, ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTDM2ACTIVITY__NOUSERSETTINGS, (e) null);
    }

    public static void AsyncStartVersionUpdateByPackageName(Context context, String str, int i, String str2) {
        ae.e();
        c.b(0);
        c.b(true);
        ae.a(context, ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTINPUT_NOUSERSETTINGS, new e(str, String.valueOf(i), str2, true, true));
    }

    public static void AsyncStartVersionUpdateByPackageNameExt(Context context, String str, int i, String str2, int i2) {
        if (i2 != 0) {
            ae.d();
        } else {
            ae.e();
        }
        c.b(i2);
        ae.a(context, ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_CUSTINPUT_NOUSERSETTINGS, new e(str, String.valueOf(i), str2, true, true));
    }

    public static void AsyncStartVersionUpdate_IgnoreUserSettings(Context context) {
        ae.e();
        c.b(0);
        c.b(true);
        ae.a(context, ap.SUS_UPDATETRANSATION_TYPE_BYPACKAGENAME_IGNOREUSERSETTINGS, (e) null);
    }

    public static void downloadApp(Context context, String str, String str2, Long l) {
        c.b(true);
        ae.a(context, ap.SUS_UPDATETRANSATION_TYPE_DOWNLOAD_BYURL, new e(str, str2, String.valueOf(l), true, false));
    }

    public static void finish() {
        ae.b();
    }

    public static boolean getAllPromptDisableFlag() {
        return ae.g();
    }

    public static void installApp(Context context, String str) {
        c.b(false);
        if (context != null && str != null) {
            if (str == null || str.length() > 0) {
                File file = new File(str);
                if (file.exists()) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    String str2 = "file://" + file.getAbsolutePath();
                    if (str2 != null) {
                        intent.setFlags(268435456);
                        intent.putExtra("apk_from", "com.lenovo.appstore");
                        intent.setDataAndType(Uri.parse(str2), "application/vnd.android.package-archive");
                        context.startActivity(intent);
                    }
                }
            }
        }
    }

    public static void installAppExt(Context context, String str, String str2, SUSListener sUSListener, int i) {
        c.a(context, str, str2, null, sUSListener, i, false);
    }

    public static boolean isVersionUpdateStarted() {
        boolean a = ae.a();
        if (a && !c.u() && !ae.f() && !ae.g()) {
            c.e(false);
        }
        return a;
    }

    public static void setAllPromptDisableFlag(boolean z) {
        ae.d(z);
        ae.e(z);
    }

    public static void setCustDefActivityContextEnableFlag(boolean z) {
        ae.h(z);
    }

    public static void setCustomDefNotificationActivityFlag(boolean z) {
        ae.g(z);
    }

    public static void setDebugModeFlag(boolean z) {
        ae.b(z);
    }

    public static void setDevMode(int i) {
        ae.a(i);
    }

    public static void setDownloadPath(String str, long j, long j2) {
        c.b(true);
        ae.a(str, j, j2);
    }

    public static void setDownloadURLHead(String str) {
        ae.b(str);
    }

    public static void setInnerDevFlag(boolean z) {
        ae.c(z);
    }

    public static void setInstallType(int i) {
        c.b(i);
    }

    public static void setQueryURLHead(String str) {
        ae.a(str);
    }

    public static void setSDKPromptDisableFlag(boolean z) {
        ae.d(z);
    }

    public static void setSUSListener(SUSListener sUSListener) {
        ae.a(sUSListener);
    }

    public static void setUpdateDescribeDisableFlag(boolean z) {
        ae.f(z);
    }

    public static void setUpdateOnlyWLAN(boolean z) {
        ae.a(z);
    }

    public static void setUserSettingsEnableFlag(boolean z) {
        ae.i(z);
    }

    public static void silentUpdateEnable() {
        ae.d();
    }

    public static void testSUSServer(Context context) {
        c.b(false);
        ae.a(context, ap.SUS_UPDATETRANSATION_TYPE_TESTSUSSERVER, (e) null);
    }
}
