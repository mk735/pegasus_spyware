package com.tencent.tmsecure.common;

import QQPIM.EProduct;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.httpclient.cookie.CookiePolicy;
import tms.af;
import tms.f;
import tms.h;
import tms.l;

public final class TMSApplication {
    public static final String CON_APOLLO_LIBNAME = "apollo_libname";
    public static final String CON_ARESENGINE_LIBNAME = "aresengine_libname";
    public static final String CON_AUTO_REPORT = "auto_report";
    public static final String CON_BUILD = "build";
    public static final String CON_CHANNEL = "channel";
    public static final String CON_CRYPTOR_LIBNAME = "cryptor_libname";
    public static final String CON_CVERSION = "cversion";
    public static final String CON_HOST_URL = "host_url";
    public static final String CON_HOTFIX = "hotfix";
    public static final String CON_LC = "lc";
    public static final String CON_LOCATION_LIBNAME = "location_libname";
    public static final String CON_PLATFORM = "platform";
    public static final String CON_PLUGIN_DIR = "plugin_dir";
    public static final String CON_PRODUCT = "product";
    public static final String CON_PVERSION = "pversion";
    public static final String CON_SMS_PARSER_LIBNAME = "sms_parser_libname";
    public static final String CON_SOFTVERSION = "softversion";
    public static final String CON_SUB_PLATFORM = "sub_platform";
    public static final String CON_SU_CMD = "su_cmd";
    public static final String CON_VIRUS_SCAN_LIBNAME = "virus_scan_libname";
    public static final String SDK_VERSION = "1.1.2";
    private static Map<String, String> a = new HashMap();
    private static Context b;
    private static Class<? extends TMSService> c;

    static {
        a.put(CON_VIRUS_SCAN_LIBNAME, "ams-1.1.0");
        a.put(CON_CRYPTOR_LIBNAME, "cryptor-1.0.0");
        a.put(CON_ARESENGINE_LIBNAME, "smschecker-1.0.1");
        a.put(CON_LOCATION_LIBNAME, "location-1.0.0");
        a.put(CON_APOLLO_LIBNAME, "apollo-1.1.2");
        a.put(CON_SMS_PARSER_LIBNAME, "smsparser-1.0.0");
        a.put(CON_HOST_URL, "http://pmir.3g.qq.com");
        a.put(CON_SU_CMD, "su");
        a.put(CON_SOFTVERSION, SDK_VERSION);
        a.put(CON_BUILD, "100");
        a.put(CON_LC, "1494D3A83428CD09");
        a.put(CON_CHANNEL, "null");
        a.put(CON_PLATFORM, CookiePolicy.DEFAULT);
        a.put(CON_PVERSION, DatabaseTables.SYSTEM_MARK);
        a.put(CON_CVERSION, "0");
        a.put(CON_HOTFIX, "0");
        a.put(CON_AUTO_REPORT, "true");
        a.put(CON_PLUGIN_DIR, "/sdcard/qqpimsecure_plugins");
        a.put(CON_SUB_PLATFORM, String.valueOf(201));
        a.put(CON_PRODUCT, String.valueOf(13));
    }

    private static boolean checkLisence() {
        return f.a().f();
    }

    public static Context getApplicaionContext() {
        return b.getApplicationContext();
    }

    public static int getIntFromEnvMap(String str) {
        int intValue;
        synchronized (TMSApplication.class) {
            String str2 = a.get(str);
            intValue = !TextUtils.isEmpty(str2) ? Integer.valueOf(str2).intValue() : 0;
        }
        return intValue;
    }

    public static Class<? extends Service> getSecureServiceClass() {
        return c;
    }

    public static String getStrFromEnvMap(String str) {
        String str2;
        synchronized (TMSApplication.class) {
            str2 = a.get(str);
            if (str.equals(CON_SOFTVERSION) && (str2 == null || str2.contains("0.0.0"))) {
                Context applicaionContext = getApplicaionContext();
                try {
                    str2 = applicaionContext.getPackageManager().getPackageInfo(applicaionContext.getPackageName(), 0).versionName;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return str2;
    }

    public static <T extends TMSService> void init(Context context, Class<T> cls) {
        init(context, cls, null, null, null);
    }

    public static <T extends TMSService> void init(Context context, Class<T> cls, ITMSApplicaionConfig iTMSApplicaionConfig) {
        init(context, cls, iTMSApplicaionConfig, null, null);
    }

    public static <T extends TMSService> void init(Context context, Class<T> cls, ITMSApplicaionConfig iTMSApplicaionConfig, Runnable runnable) {
        init(context, cls, iTMSApplicaionConfig, null, runnable);
    }

    public static <T extends TMSService> void init(Context context, Class<T> cls, ITMSApplicaionConfig iTMSApplicaionConfig, l lVar, Runnable runnable) {
        b = context.getApplicationContext();
        if (runnable != null) {
            runnable.run();
        }
        c = cls;
        synchronized (TMSApplication.class) {
            String c2 = f.a().c();
            Map<String, String> map = a;
            if (c2 == null) {
                c2 = "null";
            }
            map.put(CON_CHANNEL, c2);
            a.put(CON_PRODUCT, String.valueOf(EProduct.convert(f.a().d()).value()));
            if (iTMSApplicaionConfig != null) {
                a = iTMSApplicaionConfig.config(new HashMap(a));
            }
        }
        if (cls != null) {
            c = cls;
            b.startService(new Intent(b, c));
        }
        if (lVar != null) {
            ScriptHelper.setProvider(lVar);
        }
        if (getStrFromEnvMap(CON_AUTO_REPORT).equals("true")) {
            reportChannelInfo();
        }
        saveFirstStartupTime();
    }

    public static <T extends TMSService> void init(Context context, Class<T> cls, l lVar) {
        init(context, cls, null, lVar, null);
    }

    public static void reportChannelInfo() {
        h.a();
    }

    private static void saveFirstStartupTime() {
        af afVar = new af("tms");
        if (afVar.a("first_startup_time", -1L) == -1) {
            try {
                afVar.a("first_startup_time", new File(getApplicaionContext().getPackageManager().getApplicationInfo(getApplicaionContext().getPackageName(), 0).sourceDir).lastModified());
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    public static void setIntToEnvMap(String str, int i) {
        synchronized (TMSApplication.class) {
            a.put(str, String.valueOf(i));
        }
    }

    public static void setStrToEnvMap(String str, String str2) {
        synchronized (TMSApplication.class) {
            a.put(str, str2);
        }
    }
}
