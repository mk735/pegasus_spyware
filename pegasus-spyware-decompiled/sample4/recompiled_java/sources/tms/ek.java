package tms;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.optimize.CpuHelperImpl;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import com.tencent.tmsecure.module.optimize.ICpuHelper;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.List;

public final class ek extends BaseManager {
    private PackageManager a;
    private ActivityManager b;
    private Context c;
    private IAutoBootHelper d;
    private IMemoryHelper e;
    private ICpuHelper f;

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0051 A[SYNTHETIC, Splitter:B:23:0x0051] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0056 A[Catch:{ IOException -> 0x005a }] */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0063 A[SYNTHETIC, Splitter:B:32:0x0063] */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0068 A[Catch:{ IOException -> 0x006c }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int a(int r5) {
        /*
        // Method dump skipped, instructions count: 133
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.ek.a(int):int");
    }

    private static int a(int i, int[] iArr) {
        if (iArr == null) {
            return 0;
        }
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i <= iArr[i2]) {
                return i2;
            }
        }
        return iArr.length - 1;
    }

    private boolean b(String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = this.a.getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            packageInfo = null;
        }
        return (packageInfo == null || (packageInfo.applicationInfo.flags & 1) == 0) ? false : true;
    }

    private boolean b(String str, boolean z, boolean z2) throws PackageManager.NameNotFoundException {
        int sDKVersion = SDKUtil.getSDKVersion();
        this.a.getPackageInfo(str, 0);
        if (sDKVersion >= 5 && sDKVersion <= 7) {
            this.b.restartPackage(str);
        } else if (sDKVersion >= 8) {
            if (ScriptHelper.isSystemUid() || z || (z2 && ScriptHelper.canRunAtRoot() == 0)) {
                ScriptHelper.runScriptIfSystemUidOrAsRoot("service call activity 79 s16 " + str);
            } else {
                this.b.restartPackage(str);
            }
        }
        return true;
    }

    private static int[] d() {
        String[] split;
        String i = v.i("/sys/module/lowmemorykiller/parameters/adj");
        if (i == null || (split = i.trim().split("[,\\s]")) == null || split.length != 6) {
            return new int[]{0, 1, 2, 4, 9, 15};
        }
        int[] iArr = new int[6];
        for (int i2 = 0; i2 < 6; i2++) {
            iArr[i2] = Integer.parseInt(split[i2]);
        }
        return iArr;
    }

    public final synchronized IAutoBootHelper a() {
        if (this.d == null) {
            this.d = new dk(this.c);
        }
        return this.d;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0048  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.ArrayList<com.tencent.tmsecure.module.optimize.ProcessEntity> a(boolean r13) {
        /*
        // Method dump skipped, instructions count: 118
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.ek.a(boolean):java.util.ArrayList");
    }

    public final boolean a(String str) throws PackageManager.NameNotFoundException {
        return a(str, false, true);
    }

    public final boolean a(String str, boolean z, boolean z2) throws PackageManager.NameNotFoundException {
        l provider = ScriptHelper.provider();
        return provider != null ? provider.b(str) : b(str, z, z2);
    }

    public final boolean a(List<String> list) throws PackageManager.NameNotFoundException {
        return a(list, false, true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:5:0x001c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(java.util.List<java.lang.String> r7, boolean r8, boolean r9) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            r6 = this;
            r1 = 0
            r2 = 1
            android.content.Context r0 = r6.c
            java.lang.String r0 = r0.getPackageName()
            r7.remove(r0)
            tms.l r3 = com.tencent.tmsecure.utils.ScriptHelper.provider()
            if (r3 == 0) goto L_0x004f
            java.util.Iterator r4 = r7.iterator()
            r0 = r1
        L_0x0016:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L_0x0028
            java.lang.Object r0 = r4.next()
            java.lang.String r0 = (java.lang.String) r0
            boolean r0 = r3.b(r0)
            if (r0 != 0) goto L_0x0016
        L_0x0028:
            if (r0 == 0) goto L_0x002b
        L_0x002a:
            return r2
        L_0x002b:
            if (r8 == 0) goto L_0x0042
            r3 = r2
        L_0x002e:
            java.util.Iterator r4 = r7.iterator()
        L_0x0032:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L_0x002a
            java.lang.Object r0 = r4.next()
            java.lang.String r0 = (java.lang.String) r0
            r6.b(r0, r3, r1)
            goto L_0x0032
        L_0x0042:
            if (r9 == 0) goto L_0x004d
            int r0 = com.tencent.tmsecure.utils.ScriptHelper.canRunAtRoot()
            if (r0 != 0) goto L_0x004d
            r0 = r2
        L_0x004b:
            r3 = r0
            goto L_0x002e
        L_0x004d:
            r0 = r1
            goto L_0x004b
        L_0x004f:
            r0 = r1
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.ek.a(java.util.List, boolean, boolean):boolean");
    }

    public final synchronized IMemoryHelper b() {
        if (this.e == null) {
            this.e = new dm(this.c);
        }
        return this.e;
    }

    public final ICpuHelper c() {
        if (this.f == null) {
            this.f = new CpuHelperImpl(this.c);
        }
        return this.f;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 0;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.c = context;
        this.a = this.c.getPackageManager();
        this.b = (ActivityManager) this.c.getSystemService("activity");
    }
}
