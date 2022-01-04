package com.lenovo.performancecenter.service.object;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.os.Environment;
import android.os.RemoteException;
import android.os.StatFs;
import android.text.format.Formatter;
import android.util.Log;
import com.lenovo.performancecenter.coreui.util.RootPassage;
import com.lenovo.performancecenter.framework.DataLayerManager;
import java.io.File;
import java.lang.ref.SoftReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ApplicationDataInfo {
    private List<PackageStats> a = new ArrayList();
    private int b = 0;
    private long c = -1;
    private long d = -1;
    private long e = -1;
    private long f = -1;
    private int g = -1;
    private int h;
    private final IPackageStatsObserver.Stub i = new IPackageStatsObserver.Stub() {
        /* class com.lenovo.performancecenter.service.object.ApplicationDataInfo.AnonymousClass1 */

        @Override // android.content.pm.IPackageStatsObserver
        public final void onGetStatsCompleted(PackageStats pStats, boolean succeeded) throws RemoteException {
            ApplicationDataInfo.this.a.add(pStats);
            ApplicationDataInfo.b(ApplicationDataInfo.this);
            Log.i("ClearCache", "pStats.packageName == " + pStats.packageName + " listSize == " + ApplicationDataInfo.this.g + " " + ApplicationDataInfo.this.h);
            Log.i("ClearCache", "pStats succeeded == " + succeeded + " listSize == " + ApplicationDataInfo.this.g + " " + ApplicationDataInfo.this.h);
        }
    };

    static /* synthetic */ int b(ApplicationDataInfo x0) {
        int i2 = x0.h;
        x0.h = i2 + 1;
        return i2;
    }

    public class DataInfo {
        public long cachesize;
        public long codesize;
        public long datasize;
        public long totalsize;

        /* synthetic */ DataInfo(ApplicationDataInfo x0, long x1, long x2, long x3, long x4, byte b) {
            this(x1, x2, x3, x4);
        }

        private DataInfo(long cachesize2, long datasize2, long codesize2, long totalsize2) {
            this.cachesize = -1;
            this.datasize = -1;
            this.codesize = -1;
            this.totalsize = -1;
            this.cachesize = cachesize2;
            this.datasize = datasize2;
            this.codesize = codesize2;
            this.totalsize = totalsize2;
        }
    }

    public ApplicationDataInfo(Context context) {
        a(context);
    }

    public DataInfo getDataInfo() {
        a();
        this.c = 0;
        this.d = 0;
        this.e = 0;
        this.f = 0;
        for (PackageStats ps : this.a) {
            this.c += ps.cacheSize;
            this.d += ps.dataSize;
            this.e += ps.codeSize;
        }
        this.f = this.c + this.d + this.e;
        return new DataInfo(this, this.c, this.d, this.e, this.f, (byte) 0);
    }

    public ArrayList<DataLayerManager.CacheInfo> getCacheInfo(Context context, PackageManager pm) {
        ArrayList<DataLayerManager.CacheInfo> list = new ArrayList<>();
        a();
        for (PackageStats ps : this.a) {
            if (ps.cacheSize > 0) {
                try {
                    ApplicationInfo info = pm.getApplicationInfo(ps.packageName, 0);
                    DataLayerManager.CacheInfo appInfo = new DataLayerManager.CacheInfo(ps.packageName, ((Object) info.loadLabel(pm)) + "", new SoftReference<>(DataLayerManager.drawableToBitmap(info.loadIcon(pm))).get(), Formatter.formatFileSize(context, ps.cacheSize));
                    appInfo.appCacheSize = ps.cacheSize;
                    list.add(appInfo);
                } catch (PackageManager.NameNotFoundException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return list;
    }

    private final void a(Context context) {
        List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
        ArrayList<String> packageList = new ArrayList<>();
        for (PackageInfo packageInfo : installedPackages) {
            packageList.add(packageInfo.packageName);
        }
        installedPackages.clear();
        packageList.trimToSize();
        this.g = packageList.size();
        this.h = 0;
        Iterator i$ = packageList.iterator();
        while (i$.hasNext()) {
            String packageName = i$.next();
            PackageManager packageManager = context.getPackageManager();
            if (packageName != null) {
                packageManager.getPackageSizeInfo(packageName, this.i);
            }
        }
    }

    private void a() {
        while (this.a.size() != this.g) {
            Log.i("ClearCache", System.currentTimeMillis() + " ---> waitCallBack");
            try {
                Thread.sleep(50);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void clearSeperateCache(Context cotext, String pkgName) {
        RootPassage.execRootCmdInJar(pkgName, " -cc ", cotext);
    }

    public static void clearAllCache(PackageManager pm) {
        long j = 0;
        try {
            Method localMethod = pm.getClass().getMethod("freeStorageAndNotify", Long.TYPE, IPackageDataObserver.class);
            File dataDirectory = Environment.getDataDirectory();
            if (dataDirectory == null) {
            }
            if (dataDirectory != null) {
                StatFs statFs = new StatFs(dataDirectory.getPath());
                j = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
            }
            localMethod.invoke(pm, Long.valueOf(j - 1), new IPackageDataObserver.Stub() {
                /* class com.lenovo.performancecenter.service.object.ApplicationDataInfo.AnonymousClass2 */

                @Override // android.content.pm.IPackageDataObserver
                public final void onRemoveCompleted(String packageName, boolean succeeded) throws RemoteException {
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
