package tms;

import QQPIM.AnalyseInfo;
import QQPIM.FeatureKey;
import QQPIM.SoftActionConfig;
import QQPIM.SoftFeature;
import QQPIM.UploadFileInfo;
import QQPIM.VirusClientInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.AmScanner;
import com.tencent.tmsecure.module.qscanner.ApkKey;
import com.tencent.tmsecure.module.qscanner.CertChecker;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResult;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import com.tencent.tmsecure.utils.Log;
import com.tencent.tmsecure.utils.StringUtil;
import com.tencent.tmsecure.utils.UpdateUtil;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class gi extends BaseManager {
    private static final String[] m = {"image", AppEntity.KEY_ICON_DRAWABLE, "photo", "music", "dcim", "weibo"};
    private Context a;
    private SoftwareManager b;
    private AmScanner c;
    private ex d;
    private CertChecker e;
    private byte[] f = new byte[0];
    private boolean g;
    private boolean h = false;
    private Object i = new Object();
    private boolean j = false;
    private boolean k = false;
    private Object l = new Object();

    public static String a(Context context) {
        VirusClientInfo virusClientInfo = UpdateUtil.getVirusClientInfo(context, v.a(context, UpdateConfig.VIRUS_BASE_NAME, (String) null));
        long j2 = 0;
        if (virusClientInfo != null) {
            j2 = ((long) virusClientInfo.getTimestamp()) * 1000;
        }
        Date date = new Date(j2);
        return new SimpleDateFormat("yyyyMMdd").format(date) + (date.getHours() > 12 ? "B" : "A");
    }

    private synchronized ArrayList<QScanResultEntity> a(ArrayList<AppEntity> arrayList, QScanListener qScanListener, boolean z) {
        ArrayList<QScanResultEntity> b2;
        if (qScanListener != null) {
            qScanListener.onScanStarted();
        }
        a();
        synchronized (this.f) {
            this.g = true;
        }
        b2 = b(arrayList, qScanListener);
        if (z) {
            b2 = c(b2, qScanListener);
        }
        a(qScanListener, b2);
        b();
        synchronized (this.f) {
            this.g = false;
        }
        return b2;
    }

    private ArrayList<AppEntity> a(boolean z) {
        ArrayList<String> arrayList = new ArrayList();
        List asList = z ? null : Arrays.asList(m);
        List<String> c2 = c();
        if (c2 != null && c2.size() > 0) {
            for (String str : c2) {
                File file = new File(str);
                if (file.exists() && file.canRead()) {
                    arrayList.addAll(v.a(file, asList, z));
                }
            }
        }
        ArrayList<AppEntity> arrayList2 = new ArrayList<>();
        for (String str2 : arrayList) {
            AppEntity appEntity = new AppEntity();
            appEntity.setApkFlag(true);
            appEntity.setApkPath(str2);
            arrayList2.add(appEntity);
        }
        return arrayList2;
    }

    private void a(QScanListener qScanListener) {
        synchronized (this.i) {
            try {
                if (this.h) {
                    if (qScanListener != null) {
                        qScanListener.onScanPaused();
                    }
                    this.i.wait();
                    if (qScanListener != null) {
                        qScanListener.onScanContinue();
                    }
                    this.h = false;
                }
            } catch (InterruptedException e2) {
                Log.e("QScannerManangerImpl", e2.getMessage());
            }
        }
    }

    private void a(QScanListener qScanListener, ArrayList<QScanResultEntity> arrayList) {
        synchronized (this.i) {
            this.h = false;
        }
        synchronized (this.l) {
            this.j = false;
            this.k = false;
        }
        if (qScanListener != null) {
            qScanListener.onScanFinished(arrayList);
        }
    }

    private static void a(ArrayList<QScanResultEntity> arrayList, ArrayList<AnalyseInfo> arrayList2) {
        Iterator<QScanResultEntity> it = arrayList.iterator();
        while (it.hasNext()) {
            QScanResultEntity next = it.next();
            Iterator<AnalyseInfo> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                AnalyseInfo next2 = it2.next();
                if (next.packageName.equals(next2.featureKey.uniCode) && next.size == next2.featureKey.fileSize && next2.cloudCheck.safeType != 0) {
                    next.type = next2.cloudCheck.safeType;
                    next.advice = next2.cloudCheck.handleAdvice;
                    next.name = next2.cloudCheck.virusName;
                    next.discription = next2.cloudCheck.short_desc;
                    next.malwareid = next2.cloudCheck.virusID;
                    next.url = next2.cloudCheck.handleUrl;
                }
            }
        }
    }

    private void a(ArrayList<QScanResultEntity> arrayList, List<AnalyseInfo> list) {
        for (AnalyseInfo analyseInfo : list) {
            UploadFileInfo uploadFileInfo = analyseInfo.getUploadFileInfo();
            if (!(uploadFileInfo == null || uploadFileInfo.getVecUploadFile() == null || uploadFileInfo.getVecUploadFile().size() <= 0)) {
                Iterator<QScanResultEntity> it = arrayList.iterator();
                while (it.hasNext()) {
                    QScanResultEntity next = it.next();
                    if (next.packageName.equals(analyseInfo.featureKey.uniCode) && next.size == analyseInfo.featureKey.fileSize) {
                        aa aaVar = new aa(this.a);
                        aaVar.a(aa.a);
                        aaVar.a(next.path, uploadFileInfo);
                    }
                }
            }
        }
    }

    private void a(List<AnalyseInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (AnalyseInfo analyseInfo : list) {
            if (analyseInfo.getActionLevel() != 0) {
                arrayList.add(new SoftActionConfig(analyseInfo.featureKey, analyseInfo.actionLevel));
            }
        }
        if (arrayList.size() > 0) {
            v.a(this.a, arrayList, "label_sa_cfg", "sa_cfg.dat");
        }
    }

    private static boolean a(List<String> list, String str) {
        boolean z = false;
        if (list == null || str == null) {
            return false;
        }
        Iterator<String> it = list.iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            String next = it.next();
            if (str.equals(next)) {
                z2 = true;
            } else {
                try {
                    String canonicalPath = new File(next).getCanonicalPath();
                    String canonicalPath2 = new File(str).getCanonicalPath();
                    if (!(canonicalPath == null || canonicalPath2 == null)) {
                        z2 = canonicalPath.equals(canonicalPath2);
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            z = z2;
        }
    }

    private ArrayList<QScanResultEntity> b(ArrayList<AppEntity> arrayList, QScanListener qScanListener) {
        QScanResultEntity qScanResultEntity;
        ArrayList<QScanResultEntity> arrayList2 = new ArrayList<>();
        if (arrayList == null || arrayList.size() == 0) {
            return arrayList2;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            a(qScanListener);
            if (b(qScanListener)) {
                return arrayList2;
            }
            long currentTimeMillis = System.currentTimeMillis();
            AppEntity appEntity = arrayList.get(i2);
            AppEntity apkInfo = appEntity.isApk() ? this.b.getApkInfo(appEntity, 9) : this.b.getAppInfo(appEntity, 73);
            if (apkInfo != null) {
                int i3 = 0;
                if (apkInfo.isApk()) {
                    i3 = 2;
                } else if (apkInfo.isSystemApp()) {
                    i3 = 1;
                }
                QScanResultEntity a2 = this.d.a(apkInfo.getPackageName(), apkInfo.getApkPath(), apkInfo.getSize(), i3);
                if (a2 == null) {
                    AppEntity appInfo = apkInfo.isApk() ? apkInfo : this.b.getAppInfo(apkInfo, 16);
                    if (appInfo != null) {
                        ApkKey apkKey = appInfo == null ? null : new ApkKey(StringUtil.assertNotNullString(appInfo.getPackageName()), StringUtil.assertNotNullString(appInfo.getAppName()), StringUtil.assertNotNullString(appInfo.getCertMD5()), StringUtil.assertNotNullString(appInfo.getVersion()), appInfo.getVersionCode(), (int) appInfo.getSize(), StringUtil.assertNotNullString(appInfo.getApkPath()), i3);
                        QScanResult scanApk = this.c.scanApk(apkKey);
                        QScanResult checkCert = scanApk != null ? this.e.checkCert(scanApk) : null;
                        if (checkCert == null) {
                            qScanResultEntity = null;
                        } else {
                            qScanResultEntity = new QScanResultEntity();
                            qScanResultEntity.packageName = checkCert.apkkey.getPkgName();
                            qScanResultEntity.softName = checkCert.apkkey.getSoftName();
                            qScanResultEntity.version = checkCert.apkkey.getVersion();
                            qScanResultEntity.versionCode = checkCert.apkkey.getVersionCode();
                            qScanResultEntity.path = checkCert.apkkey.path;
                            qScanResultEntity.apkType = checkCert.apkkey.apkType;
                            qScanResultEntity.certMd5 = checkCert.apkkey.certMd5;
                            qScanResultEntity.size = checkCert.apkkey.size;
                            qScanResultEntity.type = checkCert.type;
                            qScanResultEntity.advice = checkCert.advice;
                            qScanResultEntity.malwareid = checkCert.malwareid;
                            qScanResultEntity.name = checkCert.name;
                            qScanResultEntity.label = checkCert.label;
                            qScanResultEntity.discription = checkCert.discription;
                            qScanResultEntity.url = checkCert.url;
                        }
                        apkKey.certMd5 = checkCert != null ? checkCert.getApkkey().getCertMd5() : null;
                        this.d.a(apkKey, qScanResultEntity);
                        a2 = qScanResultEntity;
                    }
                }
                if (a2 != null) {
                    arrayList2.add(a2);
                    if (qScanListener != null) {
                        if (a2.apkType == 0 || a2.apkType == 1) {
                            qScanListener.onPackageScanProgress(((i2 + 1) * 100) / arrayList.size(), a2);
                        } else if (a2.apkType == 2) {
                            qScanListener.onSdcardScanProgress(((i2 + 1) * 100) / arrayList.size(), a2);
                        }
                    }
                }
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                if (currentTimeMillis2 < 20) {
                    try {
                        Thread.sleep(20 - currentTimeMillis2);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return arrayList2;
    }

    private boolean b(QScanListener qScanListener) {
        boolean z = true;
        synchronized (this.l) {
            if (!this.j) {
                z = false;
            } else if (qScanListener != null && !this.k) {
                qScanListener.onScanCanceled();
                this.k = true;
            }
        }
        return z;
    }

    private ArrayList<QScanResultEntity> c(ArrayList<QScanResultEntity> arrayList, QScanListener qScanListener) {
        SoftFeature softFeature;
        a(qScanListener);
        if (!b(qScanListener)) {
            if (!f.a().b()) {
                throw new RuntimeException("TMS licence expired! Please contact TMS(Tencent Mobile Secure) group.");
            }
            if (qScanListener != null) {
                qScanListener.onCloudScan();
            }
            a(qScanListener);
            if (!b(qScanListener)) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<QScanResultEntity> it = arrayList.iterator();
                while (it.hasNext()) {
                    QScanResultEntity next = it.next();
                    if (next == null) {
                        softFeature = null;
                    } else {
                        SoftFeature softFeature2 = new SoftFeature();
                        softFeature2.setFeatureKey(new FeatureKey(next.packageName, next.softName, next.version, next.versionCode, next.certMd5, next.size));
                        softFeature2.setRequestType(1);
                        softFeature2.setIsBuildIn(next.apkType == 1);
                        softFeature2.setEngineVersion(2);
                        softFeature2.setLocalSafeType(next.type);
                        softFeature2.setLocalVirusID(next.malwareid);
                        softFeature2.setLocalVirusName(next.name);
                        softFeature = softFeature2;
                    }
                    arrayList2.add(softFeature);
                }
                ArrayList<AnalyseInfo> arrayList3 = new ArrayList<>();
                int analyseInfo = ((WupSessionManager) ManagerCreator.getManager(WupSessionManager.class)).getAnalyseInfo(arrayList2, arrayList3);
                a(qScanListener);
                if (!b(qScanListener)) {
                    if (analyseInfo == 0) {
                        a(arrayList, arrayList3);
                        a(arrayList, (List<AnalyseInfo>) arrayList3);
                        p.a(this.a.getApplicationContext()).a();
                        a(arrayList3);
                    } else if (qScanListener != null) {
                        qScanListener.onCloudScanError(analyseInfo);
                    }
                }
            }
        }
        return arrayList;
    }

    private ArrayList<AppEntity> g() {
        ArrayList<AppEntity> arrayList = new ArrayList<>();
        for (ApplicationInfo applicationInfo : this.a.getPackageManager().getInstalledApplications(0)) {
            AppEntity appEntity = new AppEntity();
            appEntity.setPackageName(applicationInfo.packageName);
            arrayList.add(appEntity);
        }
        return arrayList;
    }

    public final int a(String str) {
        if (this.e != null) {
            return this.e.getApkClass(str);
        }
        return 0;
    }

    public final ArrayList<QScanResultEntity> a(QScanListener qScanListener, boolean z) {
        return a(g(), qScanListener, z);
    }

    public final ArrayList<QScanResultEntity> a(QScanListener qScanListener, boolean z, boolean z2) {
        return a(a(z2), qScanListener, z);
    }

    public final synchronized ArrayList<QScanResultEntity> a(ArrayList<QScanResultEntity> arrayList, QScanListener qScanListener) {
        ArrayList<QScanResultEntity> c2;
        if (qScanListener != null) {
            qScanListener.onScanStarted();
        }
        a();
        synchronized (this.f) {
            this.g = true;
        }
        c2 = c(arrayList, qScanListener);
        a(qScanListener, c2);
        b();
        synchronized (this.f) {
            this.g = false;
        }
        return c2;
    }

    public final ArrayList<QScanResultEntity> a(List<String> list, QScanListener qScanListener, boolean z) {
        if (list == null || list.size() == 0) {
            return new ArrayList<>();
        }
        ArrayList<AppEntity> arrayList = new ArrayList<>(list.size());
        for (String str : list) {
            AppEntity appEntity = new AppEntity();
            appEntity.setPackageName(str);
            arrayList.add(appEntity);
        }
        return a(arrayList, qScanListener, z);
    }

    public final void a() {
        if (this.d == null) {
            this.d = ex.a();
        }
        if (this.c == null) {
            this.c = new AmScanner(this.a, v.a(this.a, UpdateConfig.VIRUS_BASE_NAME, (String) null));
        }
        if (this.e == null) {
            this.e = new CertChecker(this.a);
        }
    }

    public final ArrayList<QScanResultEntity> b(QScanListener qScanListener, boolean z) {
        return a(qScanListener, z, false);
    }

    public final ArrayList<QScanResultEntity> b(QScanListener qScanListener, boolean z, boolean z2) {
        ArrayList<AppEntity> g2 = g();
        g2.addAll(a(z2));
        return a(g2, qScanListener, z);
    }

    public final ArrayList<QScanResultEntity> b(List<String> list, QScanListener qScanListener, boolean z) {
        if (list == null || list.size() == 0) {
            return new ArrayList<>();
        }
        ArrayList<AppEntity> arrayList = new ArrayList<>(list.size());
        for (String str : list) {
            AppEntity appEntity = new AppEntity();
            appEntity.setApkFlag(true);
            appEntity.setApkPath(str);
            arrayList.add(appEntity);
        }
        return a(arrayList, qScanListener, z);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x000b, code lost:
        tms.ex.b();
        r3.d = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0012, code lost:
        if (r3.c == null) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0014, code lost:
        r3.c.finalize();
        r3.c = null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b() {
        /*
            r3 = this;
            r2 = 0
            byte[] r1 = r3.f
            monitor-enter(r1)
            boolean r0 = r3.g     // Catch:{ all -> 0x001c }
            if (r0 == 0) goto L_0x000a
            monitor-exit(r1)     // Catch:{ all -> 0x001c }
        L_0x0009:
            return
        L_0x000a:
            monitor-exit(r1)
            tms.ex.b()
            r3.d = r2
            com.tencent.tmsecure.module.qscanner.AmScanner r0 = r3.c
            if (r0 == 0) goto L_0x0009
            com.tencent.tmsecure.module.qscanner.AmScanner r0 = r3.c
            r0.finalize()
            r3.c = r2
            goto L_0x0009
        L_0x001c:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.gi.b():void");
    }

    public final ArrayList<QScanResultEntity> c(QScanListener qScanListener, boolean z) {
        return b(qScanListener, z, false);
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0058 A[SYNTHETIC, Splitter:B:20:0x0058] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c2 A[SYNTHETIC, Splitter:B:50:0x00c2] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00cf A[SYNTHETIC, Splitter:B:57:0x00cf] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.util.List<java.lang.String> c() {
        /*
        // Method dump skipped, instructions count: 236
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.gi.c():java.util.List");
    }

    public final void d() {
        synchronized (this.i) {
            this.h = true;
        }
    }

    public final void e() {
        synchronized (this.i) {
            this.i.notifyAll();
        }
    }

    public final void f() {
        synchronized (this.l) {
            this.j = true;
        }
        synchronized (this.i) {
            this.i.notifyAll();
        }
    }

    /* access modifiers changed from: protected */
    public final void finalize() {
        b();
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final int getSingletonType() {
        return 2;
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = context;
        this.b = (SoftwareManager) ManagerCreator.getManager(SoftwareManager.class);
        v.a(context, UpdateConfig.VIRUS_BASE_NAME, (String) null);
    }
}
