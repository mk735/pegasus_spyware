package tms;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.ScriptHelper;

/* access modifiers changed from: package-private */
public final class ey {
    private static int a;
    private static int b;
    private static int c;
    private static int d = -1;

    static {
        a = -1;
        b = -1;
        c = -1;
        ah.a("android.content.pm.IPackageManager$Stub");
        c = ah.a("TRANSACTION_getInstallLocation", -1);
        b = ah.a("TRANSACTION_setInstallLocation", -1);
        a = ah.a("TRANSACTION_movePackage", -1);
    }

    private static synchronized int a() {
        int i;
        synchronized (ey.class) {
            if (d != -1) {
                i = d;
            } else {
                String runScript = ScriptHelper.runScript(String.format("service call package %d", Integer.valueOf(c)));
                if (runScript != null) {
                    String[] split = runScript.split("[ ]+");
                    if (split.length > 3) {
                        try {
                            d = Integer.valueOf(split[2]).intValue();
                        } catch (NumberFormatException e) {
                            d = 0;
                        }
                    }
                }
                i = d;
            }
        }
        return i;
    }

    public static boolean a(ApplicationInfo applicationInfo) {
        return (applicationInfo.flags & 262144) != 0;
    }

    public static boolean a(PackageInfo packageInfo) {
        if (SDKUtil.getSDKVersion() < 14 || !b()) {
            return a(packageInfo.applicationInfo);
        }
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0048, code lost:
        if (a() == 2) goto L_0x003b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x005c, code lost:
        if (com.tencent.tmsecure.utils.ScriptHelper.canRunAtRoot() == 0) goto L_0x003b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(android.content.pm.PackageInfo r5, boolean r6) {
        /*
            r4 = 2
            r1 = 0
            r0 = 1
            int r2 = com.tencent.tmsecure.utils.SDKUtil.getSDKVersion()
            r3 = 14
            if (r2 < r3) goto L_0x0012
            boolean r2 = b()
            if (r2 == 0) goto L_0x0012
        L_0x0011:
            return r1
        L_0x0012:
            android.content.pm.ApplicationInfo r2 = r5.applicationInfo
            boolean r2 = a(r2)
            if (r2 != 0) goto L_0x005e
            android.content.pm.ApplicationInfo r2 = r5.applicationInfo
            int r2 = r2.flags
            r2 = r2 & 1
            if (r2 == 0) goto L_0x003d
            r2 = r0
        L_0x0023:
            if (r2 != 0) goto L_0x005e
            android.content.pm.ApplicationInfo r2 = r5.applicationInfo
            int r2 = r2.flags
            r3 = 536870912(0x20000000, float:1.0842022E-19)
            r2 = r2 & r3
            if (r2 == 0) goto L_0x003f
            r2 = r0
        L_0x002f:
            if (r2 != 0) goto L_0x005e
            java.lang.String r2 = "installLocation"
            int r2 = tms.ah.a(r5, r2, r0)
            if (r2 == r4) goto L_0x003b
            if (r2 != 0) goto L_0x0041
        L_0x003b:
            r1 = r0
            goto L_0x0011
        L_0x003d:
            r2 = r1
            goto L_0x0023
        L_0x003f:
            r2 = r1
            goto L_0x002f
        L_0x0041:
            r3 = -1
            if (r2 != r3) goto L_0x004a
            int r2 = a()
            if (r2 == r4) goto L_0x003b
        L_0x004a:
            boolean r2 = com.tencent.tmsecure.utils.ScriptHelper.providerSupportPmRelative()
            if (r2 != 0) goto L_0x003b
            boolean r2 = com.tencent.tmsecure.utils.ScriptHelper.isSystemUid()
            if (r2 != 0) goto L_0x003b
            if (r6 == 0) goto L_0x005e
            int r2 = com.tencent.tmsecure.utils.ScriptHelper.canRunAtRoot()
            if (r2 == 0) goto L_0x003b
        L_0x005e:
            r0 = r1
            goto L_0x003b
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.ey.a(android.content.pm.PackageInfo, boolean):boolean");
    }

    public static boolean a(String str) throws PackageManager.NameNotFoundException {
        if (ScriptHelper.providerSupportPmRelative()) {
            return ScriptHelper.provider().c(str);
        }
        return ScriptHelper.runScriptIfSystemUidOrAsRoot(new String[]{String.format("service call package %d s16 %s i32 1", new Object[]{Integer.valueOf(a), str})}) == 0;
    }

    private static boolean b() {
        try {
            return ((Boolean) Environment.class.getMethod("isExternalStorageEmulated", new Class[0]).invoke(null, new Object[0])).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    public static boolean b(String str) throws PackageManager.NameNotFoundException {
        if (ScriptHelper.providerSupportPmRelative()) {
            return ScriptHelper.provider().d(str);
        }
        return ScriptHelper.runScriptIfSystemUidOrAsRoot(new String[]{String.format("service call package %d s16 %s i32 2", new Object[]{Integer.valueOf(a), str})}) == 0;
    }
}
