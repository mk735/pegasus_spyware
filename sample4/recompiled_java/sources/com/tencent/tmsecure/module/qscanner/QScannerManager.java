package com.tencent.tmsecure.module.qscanner;

import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.List;
import tms.gi;

public final class QScannerManager extends BaseManager {
    private gi a;

    public static String getVirusBaseVersion(Context context) {
        return gi.a(context);
    }

    public final void cancelScan() {
        if (!isExpired()) {
            this.a.f();
        }
    }

    public final ArrayList<QScanResultEntity> cloudScan(ArrayList<QScanResultEntity> arrayList, QScanListener qScanListener) {
        return isExpired() ? new ArrayList<>() : this.a.a(arrayList, qScanListener);
    }

    public final void continueScan() {
        if (!isExpired()) {
            this.a.e();
        }
    }

    public final void freeScanner() {
        if (!isExpired()) {
            this.a.b();
        }
    }

    public final int getApkClass(String str) {
        if (isExpired() || this.a == null) {
            return 0;
        }
        return this.a.a(str);
    }

    public final void initScanner() {
        if (!isExpired()) {
            this.a.a();
        }
    }

    @Override // com.tencent.tmsecure.common.BaseManager
    public final void onCreate(Context context) {
        this.a = new gi();
        this.a.onCreate(context);
        setImpl(this.a);
    }

    public final void pauseScan() {
        if (!isExpired()) {
            this.a.d();
        }
    }

    public final ArrayList<QScanResultEntity> scanApks(List<String> list, QScanListener qScanListener, boolean z) {
        return isExpired() ? new ArrayList<>() : this.a.b(list, qScanListener, z);
    }

    public final ArrayList<QScanResultEntity> scanGlobal(QScanListener qScanListener, boolean z) {
        return isExpired() ? new ArrayList<>() : this.a.c(qScanListener, z);
    }

    public final ArrayList<QScanResultEntity> scanGlobal(QScanListener qScanListener, boolean z, boolean z2) {
        return isExpired() ? new ArrayList<>() : this.a.b(qScanListener, z, z2);
    }

    public final ArrayList<QScanResultEntity> scanInstalledPackages(QScanListener qScanListener, boolean z) {
        return isExpired() ? new ArrayList<>() : this.a.a(qScanListener, z);
    }

    public final ArrayList<QScanResultEntity> scanPackages(List<String> list, QScanListener qScanListener, boolean z) {
        return isExpired() ? new ArrayList<>() : this.a.a(list, qScanListener, z);
    }

    public final ArrayList<QScanResultEntity> scanSdcardApks(QScanListener qScanListener, boolean z) {
        return isExpired() ? new ArrayList<>() : this.a.b(qScanListener, z);
    }

    public final ArrayList<QScanResultEntity> scanSdcardApks(QScanListener qScanListener, boolean z, boolean z2) {
        return isExpired() ? new ArrayList<>() : this.a.a(qScanListener, z, z2);
    }
}
