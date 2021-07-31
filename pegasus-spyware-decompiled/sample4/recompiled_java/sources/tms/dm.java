package tms;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* access modifiers changed from: package-private */
public final class dm implements IMemoryHelper {
    private static Method a;
    private static Method b;
    private static long c = -1;
    private Context d;
    private PackageManager e = this.d.getPackageManager();
    private ActivityManager f = ((ActivityManager) this.d.getSystemService("activity"));

    static {
        try {
            a = PackageManager.class.getDeclaredMethod("freeStorageAndNotify", Long.TYPE, IPackageDataObserver.class);
            a.setAccessible(true);
            b = PackageManager.class.getDeclaredMethod("getPackageSizeInfo", String.class, IPackageStatsObserver.class);
            b.setAccessible(true);
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        }
    }

    public dm(Context context) {
        this.d = context;
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final boolean clearAllCacheData() {
        long j = 1024888192;
        Object obj = new Object();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        File dataDirectory = Environment.getDataDirectory();
        if (dataDirectory != null) {
            StatFs statFs = new StatFs(dataDirectory.getPath());
            long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
            if (blockCount >= 1024) {
                j = blockCount;
            }
        }
        dn dnVar = new dn(this, atomicBoolean, obj);
        try {
            if (a == null) {
                throw new NullPointerException();
            }
            a.invoke(this.e, Long.valueOf(j), dnVar);
            synchronized (obj) {
                try {
                    obj.wait(5000);
                } catch (InterruptedException e2) {
                }
            }
            return atomicBoolean.get();
        } catch (Exception e3) {
            e3.printStackTrace();
            atomicBoolean.set(false);
        }
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final boolean clearCacheData(String str) {
        return false;
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final ArrayList<PackageStats> getAllAppPackageStats(List<String> list) {
        ArrayList<PackageStats> arrayList = new ArrayList<>();
        for (String str : list) {
            arrayList.add(getAppPackageStats(str));
        }
        return arrayList;
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final PackageStats getAppPackageStats(String str) {
        Object obj = new Object();
        AtomicReference atomicReference = new AtomicReference(null);
        dp dpVar = new dp(this, atomicReference, obj);
        try {
            if (b == null) {
                throw new NullPointerException();
            }
            b.invoke(this.e, str, dpVar);
            synchronized (obj) {
                try {
                    obj.wait(1000);
                } catch (InterruptedException e2) {
                }
            }
            return (PackageStats) atomicReference.get();
        } catch (Exception e3) {
            atomicReference.set(null);
        }
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final long getFreeMemery() {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.f.getMemoryInfo(memoryInfo);
        return (long) (((float) memoryInfo.availMem) / 1024.0f);
    }

    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    public final Debug.MemoryInfo[] getRamSize(String[] strArr) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = this.f.getRunningAppProcesses();
        ArrayList arrayList = new ArrayList();
        List asList = Arrays.asList(strArr);
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            String[] strArr2 = runningAppProcessInfo.pkgList;
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                } else if (asList.contains(strArr2[i])) {
                    arrayList.add(Integer.valueOf(runningAppProcessInfo.pid));
                    break;
                } else {
                    i++;
                }
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return this.f.getProcessMemoryInfo(iArr);
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0034 A[SYNTHETIC, Splitter:B:15:0x0034] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0067 A[SYNTHETIC, Splitter:B:30:0x0067] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0074 A[SYNTHETIC, Splitter:B:37:0x0074] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x007e A[SYNTHETIC, Splitter:B:43:0x007e] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0082 A[RETURN, SYNTHETIC] */
    @Override // com.tencent.tmsecure.module.optimize.IMemoryHelper
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long getTotalMemery() {
        /*
        // Method dump skipped, instructions count: 149
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.dm.getTotalMemery():long");
    }
}
