package com.lenovo.lps.sus.c;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.lenovo.lps.sus.a.a.a.b;
import com.lenovo.lps.sus.control.SUSCustdefNotificationActivity;
import com.lenovo.lps.sus.control.SUSNotificationActivity;
import com.lenovo.lps.sus.control.ae;
import com.lenovo.lps.sus.control.am;
import com.lenovo.performancecenter.framework.DatabaseTables;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.floatwindow.util.SettingUtil;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.Locale;
import java.util.Random;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public final class c {
    public static final String A = "PackageID";
    public static final String B = "ChannelKey";
    public static final String C = "VerCode";
    public static final String D = "VerName";
    public static final String E = "DownloadURL";
    public static final String F = "IT";
    public static final String G = "Size";
    public static final String H = "UpdateDesc";
    public static final String I = "FileName";
    public static final String J = "CtrlKey";
    public static final String K = "CustKey";
    public static final String L = "RES";
    public static final String M = "\"";
    public static final String N = ":";
    public static final String O = ";";
    public static final String P = "{";
    public static final String Q = "}";
    public static final String R = "SUS-";
    public static final String S = "SUCCESS";
    public static final String T = "LATESTVERSION";
    public static final String U = "NOTFOUND";
    public static final String V = "EXCEPTION";
    public static final String W = "http://susapi.lenovomm.com/adpserver/ctrl?CtrlType=testConnect";
    public static final String X = "GetVerInfo?SDKVer=1.3&OSType=Android&ReqType=%s&AppKey=%s&PackName=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s";
    public static final String Y = "GetVIByPN?SDKVer=1.3&OSType=Android&ReqType=%s&PackName=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s";
    public static final String Z = "GetVIByAK?SDKVer=1.3&OSType=Android&ReqType=%s&AppKey=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s";
    public static Random a = new Random(SystemClock.uptimeMillis());
    public static final String aA = "No";
    public static final int aB = 1;
    public static final int aC = 8192;
    public static final int aD = 16384;
    public static String aE = null;
    public static boolean aF = true;
    public static final int aG = 93;
    public static boolean aH = false;
    public static boolean aI = false;
    public static final Integer aJ = 2;
    public static final Integer aK = 4;
    public static boolean aL = false;
    public static int aM = 0;
    private static Boolean aN = false;
    private static Boolean aO = false;
    private static Boolean aP = false;
    public static final String aa = "QueryAVInfo?SDKVer=1.3&OSType=Android&ReqType=%s&PackName=%s&AppVerCode=%s&AppVerName=%s&VerSubType=%s&AppTags=%s&Resolution=%s&DevID=%s&AndID=%s&OSVer=%s&Lang=%s&Count=%s&DModel=%s&Mfr=%s&BVer=%s";
    public static final String ab = "DownloadSumBySDK?SDKVer=1.3&pt=android&id=%s&pn=%s&vc=%s&vn=%s&ch=%s&rep1=%s&rep2=%s&rep3=%s&OL=%s";
    public static final String ac = "queryupgrade?PackNameList=%s";
    public static final String ad = "SUS_SETTINGS";
    public static final String ae = "SUS_UPDATEACTIONTYPE";
    public static final String af = "SUS_NEWVERSIONCODE";
    public static final String ag = "CHANGEDATE";
    public static final String ah = "SUS_REAPERAPPINFO";
    public static final String ai = "SUS_REAPERAPPINFO_LASTTIME";
    public static final String aj = "SUS_IDENTIFICATIONFILE";
    public static final String ak = "SUS_IDENTIFICATIONFILE_DOWNLOADURL";
    public static final String al = "SUS_DOWNLOAD_FAIL_NUM";
    public static final int am = 2;
    public static final int an = 6;
    public static final int ao = 2048;
    public static final long ap = 3000;
    public static final int aq = 6000;
    public static final int ar = 10000;
    public static final String as = "SUSDownloadManager";
    public static final String at = "SUS_analytics";
    public static final String au = "lenovo:applicationToken";
    public static final String av = "SUS_APPKEY";
    public static final String aw = "SUS_CHANNEL";
    public static final String ax = "SUS_VERTYPE";
    public static final String ay = "Yes";
    public static final String az = "Latest";
    public static final String b = "SUS";
    public static final String c = "1.3";
    public static final String d = "SUSdownload";
    public static final String e = "|$|$";
    public static final String f = "\\|\\$\\|\\$";
    public static final Long g = 5242880L;
    public static final String h = "http://10.109.4.129:8080/adpserver/";
    public static String i = "http://susapi.dev.surepush.cn/adpserver/";
    public static final String j = "http://susapi.lenovomm.com/adpserver/";
    public static final String k = "/adpserver/";
    public static final String l = "http://test.surepush.cn/susserver/";
    public static int m = 0;
    public static String n = null;
    public static String o = null;
    public static boolean p = false;
    public static final String q = "http://lcs.lenovomm.com";
    public static final String r = "http://lcs.lenovomm.com";
    public static final String s = "http://lcs.dev.surepush.cn";
    public static final String t = "http://lcs.test.lenovomm.cn";
    public static final String u = "http://lcs.lenovomm.com";
    public static final String v = "adp@cluster-1";
    public static final String w = (String.valueOf(s()) + "/get?path=");
    public static final String x = "SUSRESINFO";
    public static final String y = "FORMATVERCODE";
    public static final String z = "V1";

    public static int a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str2, str, context.getPackageName());
    }

    public static String a(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        try {
            return String.format(String.valueOf(e()) + Y, String.valueOf(i2), str2 == null ? null : URLEncoder.encode(str2, b.a), str3 == null ? null : URLEncoder.encode(str3, b.a), str4 == null ? null : URLEncoder.encode(str4, b.a), str5 == null ? null : URLEncoder.encode(str5, b.a), str6 == null ? null : URLEncoder.encode(str6, b.a), str7 == null ? null : URLEncoder.encode(str7, b.a), str8 == null ? null : URLEncoder.encode(str8, b.a), str9 == null ? null : URLEncoder.encode(str9, b.a), str10 == null ? null : URLEncoder.encode(str10, b.a), str11 == null ? null : URLEncoder.encode(str11, b.a), str12 == null ? null : URLEncoder.encode(str12, b.a), str13 == null ? null : URLEncoder.encode(str13, b.a), str14 == null ? null : URLEncoder.encode(str14, b.a), str15 == null ? null : URLEncoder.encode(str15, b.a));
        } catch (UnsupportedEncodingException e2) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x001d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(android.content.Context r4) {
        /*
            r0 = 0
            android.content.pm.PackageManager r1 = r4.getPackageManager()     // Catch:{ Exception -> 0x0022 }
            java.lang.String r2 = r4.getPackageName()     // Catch:{ Exception -> 0x0022 }
            r3 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r1 = r1.getApplicationInfo(r2, r3)     // Catch:{ Exception -> 0x0022 }
            if (r1 == 0) goto L_0x0026
            android.os.Bundle r1 = r1.metaData     // Catch:{ Exception -> 0x0022 }
            if (r1 == 0) goto L_0x0026
            java.lang.String r2 = "SUS_APPKEY"
            java.lang.String r1 = r1.getString(r2)     // Catch:{ Exception -> 0x0022 }
        L_0x001b:
            if (r1 == 0) goto L_0x0021
            java.lang.String r0 = r1.trim()
        L_0x0021:
            return r0
        L_0x0022:
            r1 = move-exception
            r1.printStackTrace()
        L_0x0026:
            r1 = r0
            goto L_0x001b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.sus.c.c.a(android.content.Context):java.lang.String");
    }

    public static String a(String str) {
        MessageDigest messageDigest = null;
        try {
            messageDigest = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e2) {
        }
        messageDigest.update(str.getBytes());
        byte[] digest = messageDigest.digest();
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : digest) {
            stringBuffer.append(Integer.toHexString(b2 & 255));
        }
        return stringBuffer.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0063 A[SYNTHETIC, Splitter:B:21:0x0063] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x006d A[SYNTHETIC, Splitter:B:27:0x006d] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0077 A[SYNTHETIC, Splitter:B:33:0x0077] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String a(java.lang.String r7, java.lang.Boolean r8, int r9) {
        /*
        // Method dump skipped, instructions count: 148
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.sus.c.c.a(java.lang.String, java.lang.Boolean, int):java.lang.String");
    }

    public static String a(String str, String str2, Boolean bool, int i2) {
        HttpEntity httpEntity;
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, i2);
        HttpConnectionParams.setSoTimeout(basicHttpParams, i2);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        HttpPost httpPost = new HttpPost(str);
        try {
            httpEntity = new StringEntity(str2);
        } catch (UnsupportedEncodingException e2) {
            httpEntity = null;
        }
        httpPost.setEntity(httpEntity);
        try {
            defaultHttpClient.execute(httpPost);
        } catch (IOException | ClientProtocolException e3) {
        }
        return null;
    }

    public static String a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        try {
            return String.format(f(), str == null ? null : URLEncoder.encode(str, b.a), str2 == null ? null : URLEncoder.encode(str2, b.a), str3 == null ? null : URLEncoder.encode(str3, b.a), str4 == null ? null : URLEncoder.encode(str4, b.a), str5 == null ? null : URLEncoder.encode(str5, b.a), null, null, null, null);
        } catch (UnsupportedEncodingException e2) {
            return null;
        }
    }

    public static void a(int i2) {
        m = i2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x007d  */
    /* JADX WARNING: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r8, java.lang.String r9, java.lang.String r10, android.os.Handler r11, com.lenovo.lps.sus.SUSListener r12, int r13, boolean r14) {
        /*
        // Method dump skipped, instructions count: 205
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.sus.c.c.a(android.content.Context, java.lang.String, java.lang.String, android.os.Handler, com.lenovo.lps.sus.SUSListener, int, boolean):void");
    }

    public static void a(String str, String str2) {
        try {
            Runtime.getRuntime().exec("chmod " + str + " " + str2);
        } catch (IOException e2) {
        }
    }

    public static void a(String str, String str2, boolean z2) {
        if (str == null) {
            return;
        }
        if (!(str == null || str.contains("/SUSdownload")) || str2 == null) {
            return;
        }
        if (str2 == null || str2.length() > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            File file = new File(str);
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                for (File file2 : listFiles) {
                    if (str2 == null || str2.equals(file2.getName())) {
                        if (str2 != null && str2.equals(file2.getName()) && currentTimeMillis > file2.lastModified() + 604800000) {
                            file2.delete();
                        }
                    } else if (currentTimeMillis > file2.lastModified() + 3600000) {
                        file2.delete();
                    }
                }
            }
        }
    }

    public static void a(boolean z2) {
        p = z2;
    }

    public static boolean a() {
        return p;
    }

    public static boolean a(long j2) {
        return (Environment.getExternalStorageState().equals("mounted") ? k() : j()) >= g.longValue() + j2;
    }

    public static boolean a(long j2, long j3, long j4) {
        return j2 >= j3 + j4;
    }

    public static boolean a(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    public static String b() {
        return n;
    }

    public static String b(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15) {
        try {
            return String.format(String.valueOf(e()) + Z, String.valueOf(i2), str2 == null ? null : URLEncoder.encode(str2, b.a), str3 == null ? null : URLEncoder.encode(str3, b.a), str4 == null ? null : URLEncoder.encode(str4, b.a), str5 == null ? null : URLEncoder.encode(str5, b.a), str6 == null ? null : URLEncoder.encode(str6, b.a), str7 == null ? null : URLEncoder.encode(str7, b.a), str8 == null ? null : URLEncoder.encode(str8, b.a), str9 == null ? null : URLEncoder.encode(str9, b.a), str10 == null ? null : URLEncoder.encode(str10, b.a), str11 == null ? null : URLEncoder.encode(str11, b.a), str12 == null ? null : URLEncoder.encode(str12, b.a), str13 == null ? null : URLEncoder.encode(str13, b.a), str14 == null ? null : URLEncoder.encode(str14, b.a), str15 == null ? null : URLEncoder.encode(str15, b.a));
        } catch (UnsupportedEncodingException e2) {
            return null;
        }
    }

    public static String b(long j2) {
        DecimalFormat decimalFormat = new DecimalFormat("###.##");
        return j2 < 1048576 ? String.valueOf(decimalFormat.format(new Float(((float) j2) / 1024.0f).doubleValue())) + "KB" : String.valueOf(decimalFormat.format(new Float(((float) j2) / 1048576.0f).doubleValue())) + "MB";
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x001d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String b(android.content.Context r4) {
        /*
            r0 = 0
            android.content.pm.PackageManager r1 = r4.getPackageManager()     // Catch:{ Exception -> 0x0022 }
            java.lang.String r2 = r4.getPackageName()     // Catch:{ Exception -> 0x0022 }
            r3 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r1 = r1.getApplicationInfo(r2, r3)     // Catch:{ Exception -> 0x0022 }
            if (r1 == 0) goto L_0x0026
            android.os.Bundle r1 = r1.metaData     // Catch:{ Exception -> 0x0022 }
            if (r1 == 0) goto L_0x0026
            java.lang.String r2 = "SUS_VERTYPE"
            java.lang.String r1 = r1.getString(r2)     // Catch:{ Exception -> 0x0022 }
        L_0x001b:
            if (r1 == 0) goto L_0x0021
            java.lang.String r0 = r1.trim()
        L_0x0021:
            return r0
        L_0x0022:
            r1 = move-exception
            r1.printStackTrace()
        L_0x0026:
            r1 = r0
            goto L_0x001b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.sus.c.c.b(android.content.Context):java.lang.String");
    }

    public static String b(Context context, String str) {
        int identifier = context.getResources().getIdentifier(str, "string", context.getPackageName());
        if (identifier > 0) {
            return context.getResources().getString(identifier);
        }
        return null;
    }

    public static void b(int i2) {
        aM = i2;
        i.a(b, "setInstallType installTypeByUserSetting=" + aM);
    }

    public static void b(String str) {
        if (str == null || str.length() <= 0) {
            n = null;
        } else {
            n = str;
        }
    }

    public static void b(boolean z2) {
        aH = z2;
    }

    public static int c(Context context, String str) {
        int identifier = context.getResources().getIdentifier(str, QueryPermissions.ID, context.getPackageName());
        if (identifier < 0) {
            return 0;
        }
        return identifier;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x001d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String c(android.content.Context r4) {
        /*
            r0 = 0
            android.content.pm.PackageManager r1 = r4.getPackageManager()     // Catch:{ Exception -> 0x0022 }
            java.lang.String r2 = r4.getPackageName()     // Catch:{ Exception -> 0x0022 }
            r3 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r1 = r1.getApplicationInfo(r2, r3)     // Catch:{ Exception -> 0x0022 }
            if (r1 == 0) goto L_0x0026
            android.os.Bundle r1 = r1.metaData     // Catch:{ Exception -> 0x0022 }
            if (r1 == 0) goto L_0x0026
            java.lang.String r2 = "SUS_CHANNEL"
            java.lang.String r1 = r1.getString(r2)     // Catch:{ Exception -> 0x0022 }
        L_0x001b:
            if (r1 == 0) goto L_0x0021
            java.lang.String r0 = r1.trim()
        L_0x0021:
            return r0
        L_0x0022:
            r1 = move-exception
            r1.printStackTrace()
        L_0x0026:
            r1 = r0
            goto L_0x001b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.sus.c.c.c(android.content.Context):java.lang.String");
    }

    public static void c(String str) {
        if (str == null || str.length() <= 0) {
            o = null;
        } else {
            o = str;
        }
    }

    public static void c(boolean z2) {
        aF = z2;
    }

    public static boolean c() {
        return aH;
    }

    public static void d(Context context, String str) {
        if (context != null && str != null && str.length() != 0) {
            File file = new File(str);
            if (file.exists()) {
                int a2 = a(context, "drawable", "sus_notification_install_icon");
                int i2 = a2 == 0 ? 17301633 : a2;
                String b2 = b(context, "SUS_NOTIFICATION_INSTALLAPK_TITLE");
                String b3 = b(context, "SUS_NOTIFICATION_INSTALLAPK");
                String str2 = b2 == null ? "Please install the apk！" : b2;
                if (b3 == null) {
                    b3 = "Please install the apk:";
                }
                int lastIndexOf = str.lastIndexOf(CookieSpec.PATH_DELIM);
                String substring = str.substring((-1 == lastIndexOf || lastIndexOf >= str.length()) ? 0 : lastIndexOf + 1);
                Notification notification = new Notification(i2, str2, System.currentTimeMillis());
                notification.flags = 2;
                notification.flags = 16;
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setFlags(268435456);
                intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
                intent.putExtra("apk_from", "com.lenovo.appstore");
                notification.setLatestEventInfo(context, b3, substring, PendingIntent.getActivity(context, 0, intent, 0));
                ((NotificationManager) context.getSystemService(DatabaseTables.LOG_NOTIFICATION)).notify(i2, notification);
            }
        }
    }

    public static void d(String str) {
        aE = str;
    }

    public static void d(boolean z2) {
        aL = z2;
    }

    public static boolean d() {
        return aF;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0027 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:22:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean d(android.content.Context r5) {
        /*
            r3 = 0
            r0 = 0
            if (r5 != 0) goto L_0x0005
        L_0x0004:
            return r0
        L_0x0005:
            android.content.pm.PackageManager r1 = r5.getPackageManager()     // Catch:{ Exception -> 0x0033 }
            java.lang.String r2 = r5.getPackageName()     // Catch:{ Exception -> 0x0033 }
            r4 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r1 = r1.getApplicationInfo(r2, r4)     // Catch:{ Exception -> 0x0033 }
            if (r1 == 0) goto L_0x003b
            android.os.Bundle r1 = r1.metaData     // Catch:{ Exception -> 0x0033 }
            if (r1 == 0) goto L_0x003b
            java.lang.String r2 = "SUS_analytics"
            java.lang.String r2 = r1.getString(r2)     // Catch:{ Exception -> 0x0033 }
            java.lang.String r4 = "lenovo:applicationToken"
            java.lang.String r3 = r1.getString(r4)     // Catch:{ Exception -> 0x0039 }
        L_0x0025:
            if (r2 == 0) goto L_0x0004
            if (r3 == 0) goto L_0x0004
            java.lang.String r1 = "YES"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0004
            r0 = 1
            goto L_0x0004
        L_0x0033:
            r1 = move-exception
            r2 = r3
        L_0x0035:
            r1.printStackTrace()
            goto L_0x0025
        L_0x0039:
            r1 = move-exception
            goto L_0x0035
        L_0x003b:
            r2 = r3
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.sus.c.c.d(android.content.Context):boolean");
    }

    public static int e(Context context) {
        int i2 = 0;
        try {
            i2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
        }
        if (i2 < 0) {
            Log.i("SUSSDK", "Versioncode is invalid");
        }
        return i2;
    }

    public static String e() {
        if (n != null && n.length() > 0) {
            return n;
        }
        switch (m) {
            case 0:
                return j;
            case 1:
                return i;
            case 2:
                return l;
            case 3:
                return h;
            default:
                return null;
        }
    }

    public static void e(String str) {
        if (str == null) {
            return;
        }
        if (str == null || str.contains("/SUSdownload")) {
            long currentTimeMillis = System.currentTimeMillis();
            File file = new File(str);
            if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                for (File file2 : listFiles) {
                    if (file2 != null && file2.isFile() && currentTimeMillis > file2.lastModified() + 1800000) {
                        file2.delete();
                    }
                }
            }
        }
    }

    public static void e(boolean z2) {
        Context l2 = ae.l();
        if (l2 != null && !u()) {
            Intent intent = new Intent();
            intent.putExtra("FailFlag", z2);
            if (w()) {
                am.a(l2, z2);
                return;
            }
            if (v()) {
                intent.setClass(l2, SUSCustdefNotificationActivity.class);
            } else {
                intent.setClass(l2, SUSNotificationActivity.class);
            }
            intent.setFlags(268435456);
            l2.startActivity(intent);
        }
    }

    public static String f() {
        return String.valueOf(e()) + ab;
    }

    public static String f(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    public static void f(boolean z2) {
        aN = Boolean.valueOf(z2);
    }

    public static boolean f(String str) {
        if (str == null) {
            return false;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String g(Context context) {
        return context.getPackageName();
    }

    public static String g(String str) {
        try {
            return str.replaceAll("[^0-9a-zA-Z /():,;*+=_.-]", "?");
        } catch (Exception e2) {
            return str;
        }
    }

    public static void g(boolean z2) {
        aO = Boolean.valueOf(z2);
    }

    public static boolean g() {
        return aI;
    }

    public static String h(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo != null) {
                return packageManager.getApplicationLabel(packageInfo.applicationInfo).toString();
            }
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    public static void h(boolean z2) {
        aP = Boolean.valueOf(z2);
    }

    public static boolean h() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static String i() {
        return aE;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0036  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String i(android.content.Context r3) {
        /*
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r3.getSystemService(r0)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            if (r0 != 0) goto L_0x0011
            java.lang.String r1 = "MobclickAgent"
            java.lang.String r2 = "No IMEI."
            android.util.Log.w(r1, r2)
        L_0x0011:
            java.lang.String r1 = ""
            java.lang.String r2 = "android.permission.READ_PHONE_STATE"
            boolean r2 = a(r3, r2)     // Catch:{ Exception -> 0x003f }
            if (r2 == 0) goto L_0x0043
            java.lang.String r0 = r0.getDeviceId()     // Catch:{ Exception -> 0x003f }
        L_0x001f:
            if (r0 == 0) goto L_0x0029
            if (r0 == 0) goto L_0x0045
            int r1 = r0.length()
            if (r1 > 0) goto L_0x0045
        L_0x0029:
            java.lang.String r0 = "MobclickAgent"
            java.lang.String r1 = "No IMEI."
            android.util.Log.w(r0, r1)
            java.lang.String r0 = s(r3)
            if (r0 != 0) goto L_0x0045
            java.lang.String r0 = "MobclickAgent"
            java.lang.String r1 = "Failed to take mac as IMEI."
            android.util.Log.w(r0, r1)
            r0 = 0
        L_0x003e:
            return r0
        L_0x003f:
            r0 = move-exception
            r0.printStackTrace()
        L_0x0043:
            r0 = r1
            goto L_0x001f
        L_0x0045:
            java.lang.String r0 = a(r0)
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.sus.c.c.i(android.content.Context):java.lang.String");
    }

    public static long j() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    public static String[] j(Context context) {
        String[] strArr = {"Unknown", "Unknown"};
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0) {
            strArr[0] = "Unknown";
            return strArr;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            strArr[0] = "Unknown";
            return strArr;
        } else if (connectivityManager.getNetworkInfo(1).getState() == NetworkInfo.State.CONNECTED) {
            strArr[0] = "WLAN";
            return strArr;
        } else {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
            if (networkInfo.getState() != NetworkInfo.State.CONNECTED) {
                return strArr;
            }
            strArr[0] = "2G/3G";
            strArr[1] = networkInfo.getSubtypeName();
            return strArr;
        }
    }

    public static long k() {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return -1;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
    }

    public static boolean k(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        return connectivityManager.getNetworkInfo(1).getState() == NetworkInfo.State.CONNECTED;
    }

    public static String l() {
        return g(Build.VERSION.RELEASE);
    }

    public static boolean l(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        if (connectivityManager.getNetworkInfo(0).getState() == NetworkInfo.State.CONNECTED) {
            return true;
        }
        return connectivityManager.getNetworkInfo(1).getState() == NetworkInfo.State.CONNECTED;
    }

    public static String m(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        if (activeNetworkInfo.getType() == 1) {
            return null;
        }
        String extraInfo = activeNetworkInfo.getExtraInfo();
        Log.i("TAG", "net type:" + extraInfo);
        if (extraInfo == null) {
            return null;
        }
        if (extraInfo.equals("cmwap") || extraInfo.equals("3gwap") || extraInfo.equals("uniwap")) {
            return "10.0.0.172";
        }
        return null;
    }

    public static boolean m() {
        String l2 = l();
        return l2 != null && !l2.startsWith(DatabaseTables.SYSTEM_MARK) && !l2.startsWith("2.0") && !l2.startsWith("2.1") && !l2.startsWith("2.2");
    }

    public static String n() {
        return Locale.getDefault().getLanguage();
    }

    public static String n(Context context) {
        String file;
        aI = false;
        if (Environment.getExternalStorageState().equals("mounted")) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            file = String.valueOf(externalStorageDirectory.getParent()) + CookieSpec.PATH_DELIM + externalStorageDirectory.getName() + "/SUSdownload";
        } else {
            file = context.getCacheDir().toString();
            aI = true;
        }
        if (file != null) {
            File file2 = new File(file);
            if (!file2.exists()) {
                file2.mkdirs();
            }
        }
        return file;
    }

    public static String o() {
        return Locale.getDefault().getCountry();
    }

    public static boolean o(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable();
    }

    public static String p() {
        return g(Build.MODEL);
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0089 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String p(android.content.Context r9) {
        /*
        // Method dump skipped, instructions count: 293
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.sus.c.c.p(android.content.Context):java.lang.String");
    }

    public static String q() {
        return g(Build.MANUFACTURER);
    }

    public static String q(Context context) {
        String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        if (deviceId != null && deviceId.length() <= 14) {
            i.a(b, "DeviceID'length is error!get the SIM1's deviceid. deviceId=" + deviceId);
        }
        return deviceId;
    }

    public static String r() {
        return Build.DISPLAY;
    }

    public static String r(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }

    public static String s() {
        return t();
    }

    private static String s(Context context) {
        try {
            return ((WifiManager) context.getSystemService(SettingUtil.WIFI)).getConnectionInfo().getMacAddress();
        } catch (Exception e2) {
            Log.i(b, "getMAC exception", e2);
            return null;
        }
    }

    public static String t() {
        if (o != null && o.length() > 0) {
            return o;
        }
        switch (m) {
            case 0:
                return "http://lcs.lenovomm.com";
            case 1:
                return s;
            case 2:
                return t;
            case 3:
                return "http://lcs.lenovomm.com";
            default:
                return null;
        }
    }

    public static boolean u() {
        return aL;
    }

    public static boolean v() {
        return aN.booleanValue();
    }

    public static boolean w() {
        return aO.booleanValue();
    }

    public static boolean x() {
        return aP.booleanValue();
    }

    public static int y() {
        i.a(b, "getInstallType installTypeByUserSetting=" + aM);
        return aM;
    }
}
