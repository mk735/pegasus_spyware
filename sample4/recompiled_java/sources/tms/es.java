package tms;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import com.lenovo.providers.querypermissions.QueryPermissions;
import com.lenovo.safecenter.net.support.TrafficStatsService;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.permission.AbsDummyServiceCallback;
import com.tencent.tmsecure.module.permission.IDummyService;
import com.tencent.tmsecure.module.permission.IDummyServiceCallback;
import com.tencent.tmsecure.module.permission.NativeInterface;
import com.tencent.tmsecure.module.permission.PermissionControlConfig;
import com.tencent.tmsecure.module.permission.PermissionManager;
import com.tencent.tmsecure.module.permission.PermissionRequestIDs;
import com.tencent.tmsecure.module.permission.PermissionTableItem;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class es extends BaseManager {
    static final /* synthetic */ boolean a = (!es.class.desiredAssertionStatus());
    private static final SparseArray<String> b = new SparseArray<>();
    private boolean c;
    private boolean d;
    private Context e;
    private HashMap<Integer, IDummyService> f;
    private PermissionControlConfig g;
    private IDummyServiceCallback h;

    /* access modifiers changed from: package-private */
    public interface a {
        void a() throws RemoteException;

        void a(IDummyService iDummyService) throws RemoteException;

        void b() throws RemoteException;
    }

    static {
        b.put(0, "activity");
        b.put(1, "isms");
    }

    private void a(PermissionManager.IInitStepObserver iInitStepObserver) {
        boolean z = System.getProperty("os.name").toLowerCase().contains("linux") && System.getProperty("os.arch").toLowerCase().contains("arm");
        iInitStepObserver.onReached(0, z);
        if (z) {
            boolean z2 = ScriptHelper.canRunAtRoot() == 0;
            iInitStepObserver.onReached(1, z2);
            if (z2) {
                ArrayList arrayList = new ArrayList();
                File file = new File("/data/data.sys.zip");
                String str = "lib" + TMSApplication.getStrFromEnvMap(TMSApplication.CON_APOLLO_LIBNAME) + ".so";
                File file2 = new File((this.e.getFilesDir().getParentFile().toString() + File.separator + "lib" + File.separator) + str);
                if (!file2.exists()) {
                    file2 = new File("/system/lib/" + str);
                }
                if (!file2.exists()) {
                    iInitStepObserver.onReached(6, false);
                    return;
                }
                ScriptHelper.runScriptAsRoot("mount -o remount rw /data", "chmod 777 /data", "rm /data/data.sys.dex");
                if (!file.exists() || file.length() != file2.length()) {
                    ScriptHelper.runScriptAsRoot("cat " + file2.getAbsolutePath() + " > " + file.getAbsolutePath());
                }
                ScriptHelper.runScriptAsRoot("chmod 777 " + file.getAbsolutePath());
                File file3 = new File(v.a(this.e, "godEX.dat", this.e.getDir(QueryPermissions.PERMISSION, 0).getAbsolutePath()));
                File file4 = new File(v.a(this.e, "aresEX.dat", this.e.getDir(QueryPermissions.PERMISSION, 0).getAbsolutePath()));
                v.a(file3);
                v.a(file4);
                File file5 = new File(v.a(this.e, "godEX.dat", this.e.getDir(QueryPermissions.PERMISSION, 0).getAbsolutePath()));
                File file6 = new File(v.a(this.e, "aresEX.dat", this.e.getDir(QueryPermissions.PERMISSION, 0).getAbsolutePath()));
                if (file5.exists() && file6.exists()) {
                    arrayList.add("chmod 755 " + file5.getAbsolutePath());
                    arrayList.add("chmod 755 " + file6.getAbsolutePath());
                }
                ScriptHelper.runScriptAsRoot(arrayList);
                int[] a2 = a("com.android.phone", "system_server");
                if (a2.length > 1) {
                    int i = a2[0];
                    int i2 = a2[1];
                    String absolutePath = file5.getAbsolutePath();
                    String absolutePath2 = file6.getAbsolutePath();
                    String valueOf = String.valueOf(NativeInterface.dlopenAddr());
                    String valueOf2 = String.valueOf(NativeInterface.dlsymAddr());
                    int i3 = TrafficStatsService.ANDROID_PHONE_UID;
                    try {
                        i3 = TMSApplication.getApplicaionContext().getPackageManager().getApplicationInfo("com.android.phone", 0).uid;
                    } catch (PackageManager.NameNotFoundException e2) {
                        e2.printStackTrace();
                    }
                    String str2 = i3 + "." + i3;
                    arrayList.clear();
                    if (!v.h("/data/data/com.android.phone/permission")) {
                        arrayList.add("mkdir /data/data/com.android.phone/permission");
                        arrayList.add("chmod 777 /data/data/com.android.phone/permission");
                        arrayList.add("chown " + str2 + " " + "/data/data/com.android.phone/permission");
                    } else {
                        arrayList.add("chmod 777 /data/data/com.android.phone/permission");
                        arrayList.add("chown " + str2 + " " + "/data/data/com.android.phone/permission");
                    }
                    ScriptHelper.runScriptAsRoot(arrayList);
                    ScriptHelper.runScriptAsRoot(String.format("%s %d %s hook 100 %s %s %s", absolutePath, Integer.valueOf(i), absolutePath2, "/data/data/com.android.phone/permission", valueOf, valueOf2));
                    ScriptHelper.runScriptAsRoot(String.format("%s %d %s hook 100 %s %s %s", absolutePath, Integer.valueOf(i2), absolutePath2, "/data", valueOf, valueOf2));
                }
                boolean z3 = false;
                int i4 = 5;
                while (i4 >= 0) {
                    i4--;
                    z3 = f() == 7777;
                    if (z3) {
                        break;
                    }
                    Thread.currentThread();
                    try {
                        Thread.sleep(1500);
                    } catch (InterruptedException e3) {
                        e3.printStackTrace();
                    }
                }
                if (!z3) {
                    iInitStepObserver.onReached(4, false);
                    return;
                }
                this.f = e();
                iInitStepObserver.onReached(4, true);
            }
        }
    }

    private final void a(a aVar) {
        if (this.d) {
            try {
                aVar.a();
                synchronized (es.class) {
                    for (IDummyService iDummyService : this.f.values()) {
                        aVar.a(iDummyService);
                    }
                }
                aVar.b();
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static final int[] a(List<String> list) {
        int[] iArr = new int[PermissionRequestIDs.getCount()];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 65535;
        }
        if (list.contains("android.permission.CALL_PHONE") || list.contains("android.permission.CALL_PRIVILEGED")) {
            iArr[0] = 2;
        }
        if (list.contains("android.permission.SEND_SMS")) {
            iArr[1] = 2;
        }
        if (list.contains("android.permission.READ_CONTACTS") || list.contains("android.permission.WRITE_CONTACTS")) {
            iArr[2] = 2;
            iArr[3] = 2;
        }
        if (list.contains("android.permission.READ_SMS") || list.contains("android.permission.WRITE_SMS")) {
            iArr[4] = 2;
        }
        if (list.contains("android.permission.READ_PHONE_STATE")) {
            iArr[6] = 0;
            iArr[7] = 0;
            iArr[8] = 0;
        }
        if (list.contains("android.permission.INTERNET")) {
            iArr[9] = 0;
        }
        if (list.contains("android.permission.ACCESS_FINE_LOCATION")) {
            iArr[12] = 2;
        }
        if (list.contains("android.permission.RECORD_AUDIO") && list.contains("android.permission.READ_PHONE_STATE")) {
            iArr[13] = 2;
        }
        iArr[14] = 2;
        return iArr;
    }

    public static int[] a(String... strArr) {
        int i = -1;
        int[] iArr = new int[strArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = -1;
        }
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        arrayList.add("ps");
        ScriptHelper.runScript(sb, arrayList);
        String[] split = sb.toString().split("\n");
        if (split.length > 0) {
            int i3 = 0;
            int i4 = -1;
            while (true) {
                if (i3 >= split.length) {
                    i = i4;
                    break;
                }
                if (!TextUtils.isEmpty(split[i3].trim()) && split[i3].toLowerCase().contains("pid")) {
                    String[] split2 = split[i3].trim().split("[\\s ]+");
                    int i5 = 0;
                    while (true) {
                        if (i5 >= split2.length) {
                            break;
                        } else if (split2[i5].equalsIgnoreCase("pid")) {
                            i4 = i5;
                            break;
                        } else {
                            i5++;
                        }
                    }
                    if (i4 != -1) {
                        i = i4;
                        break;
                    }
                }
                i3++;
            }
        }
        if (i >= 0) {
            for (int i6 = 1; i6 < split.length; i6++) {
                String trim = split[i6].trim();
                int i7 = 0;
                while (true) {
                    if (i7 >= strArr.length) {
                        break;
                    } else if (trim.contains(strArr[i7])) {
                        iArr[i7] = Integer.parseInt(trim.split("[\\s ]+")[i]);
                        break;
                    } else {
                        i7++;
                    }
                }
            }
        }
        return iArr;
    }

    public static Object[] a(int i) {
        return null;
    }

    private static HashMap<Integer, IDummyService> e() {
        HashMap<Integer, IDummyService> hashMap = new HashMap<>();
        int size = b.size();
        for (int i = 0; i < size; i++) {
            int keyAt = b.keyAt(i);
            String valueAt = b.valueAt(i);
            IBinder a2 = ai.a(valueAt);
            while (a2 == null) {
                Thread.currentThread();
                try {
                    Thread.sleep(500);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                a2 = ai.a(valueAt);
            }
            hashMap.put(Integer.valueOf(keyAt), IDummyService.Proxy.asInterface(a2));
        }
        return hashMap;
    }

    private int f() {
        for (IDummyService iDummyService : e().values()) {
            int pingDummyService = iDummyService.pingDummyService(8, this.e.getPackageName());
            if (pingDummyService != 7777) {
                return pingDummyService;
            }
        }
        return IDummyService.k;
    }

    public final PermissionControlConfig a() {
        return this.g;
    }

    public final void a(int i, int i2, int i3) {
        a(new du(this, i, i2, i3));
    }

    public final void a(AbsDummyServiceCallback absDummyServiceCallback) {
        a(new dq(this, absDummyServiceCallback));
    }

    public final synchronized void a(PermissionManager.IInitStepObserver iInitStepObserver, PermissionControlConfig permissionControlConfig) {
        if (!a && (iInitStepObserver == null || permissionControlConfig == null)) {
            throw new AssertionError();
        } else if (!this.d) {
            this.f = null;
            switch (f()) {
                case IDummyService.n:
                    iInitStepObserver.onReached(3, true);
                    break;
                case IDummyService.k:
                    this.f = e();
                    break;
                case IDummyService.l:
                case IDummyService.m:
                    if (iInitStepObserver.onReached(2, false)) {
                        ScriptHelper.runScriptAsRoot("reboot");
                        ScriptHelper.runScript("kill -9 " + a("/system/bin/servicemanager")[0]);
                        break;
                    }
                    break;
                default:
                    a(iInitStepObserver);
                    break;
            }
            if (this.f == null || this.f.values().size() <= 0) {
                iInitStepObserver.onReached(6, false);
            } else {
                this.g = permissionControlConfig;
                try {
                    for (IDummyService iDummyService : this.f.values()) {
                        iDummyService.setPermissionTable(this.g);
                        iDummyService.setEnable(true);
                    }
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                iInitStepObserver.onReached(6, true);
                this.d = true;
                this.c = true;
            }
        }
    }

    public final void a(PermissionTableItem permissionTableItem) {
        a(new dr(this, permissionTableItem));
    }

    public final synchronized void a(boolean z) {
        if (this.c != z) {
            a(new dy(this, z));
        }
    }

    public final void b(PermissionTableItem permissionTableItem) {
        a(new ds(this, permissionTableItem));
    }

    public final boolean b() {
        return this.d && this.c;
    }

    public final void c(PermissionTableItem permissionTableItem) {
        a(new dx(this, permissionTableItem));
    }

    public final boolean c() {
        return this.d;
    }

    public final boolean d() {
        return (System.getProperty("os.name").toLowerCase().contains("linux") && System.getProperty("os.arch").toLowerCase().contains("arm")) && ScriptHelper.canRunAtRoot() == 0;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 1;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.e = context;
    }
}
