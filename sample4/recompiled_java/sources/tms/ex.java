package tms;

import QQPIM.VirusClientInfo;
import android.content.Context;
import android.os.Bundle;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.qscanner.AmScanner;
import com.tencent.tmsecure.module.qscanner.ApkKey;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.update.UpdateConfig;

/* access modifiers changed from: package-private */
public final class ex {
    private static ex e;
    private int a;
    private int b;
    private Bundle c;
    private boolean d = false;
    private Context f = TMSApplication.getApplicaionContext();

    private ex() {
        c();
        VirusClientInfo loadAmfHeader = AmScanner.loadAmfHeader(this.f, v.a(this.f, UpdateConfig.VIRUS_BASE_NAME, (String) null));
        if (!(loadAmfHeader == null || (loadAmfHeader.getTimestamp() == this.b && loadAmfHeader.getVersion() == this.a))) {
            this.b = loadAmfHeader.getTimestamp();
            this.a = loadAmfHeader.getVersion();
            this.c = new Bundle();
        }
        if (this.c == null) {
            this.c = new Bundle();
        }
    }

    public static synchronized ex a() {
        ex exVar;
        synchronized (ex.class) {
            if (e == null) {
                e = new ex();
            }
            exVar = e;
        }
        return exVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0052 A[SYNTHETIC, Splitter:B:27:0x0052] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0057  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x005f A[SYNTHETIC, Splitter:B:34:0x005f] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0064  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void b() {
        /*
        // Method dump skipped, instructions count: 123
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.ex.b():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x002a A[SYNTHETIC, Splitter:B:16:0x002a] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x002f A[SYNTHETIC, Splitter:B:19:0x002f] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x007a A[SYNTHETIC, Splitter:B:34:0x007a] */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x007f A[SYNTHETIC, Splitter:B:37:0x007f] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void c() {
        /*
        // Method dump skipped, instructions count: 180
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.ex.c():void");
    }

    public final QScanResultEntity a(String str, String str2, long j, int i) {
        if (str == null) {
            return null;
        }
        QScanResultEntity qScanResultEntity = (QScanResultEntity) this.c.getParcelable(str + j);
        if (str2 == null || qScanResultEntity == null) {
            return null;
        }
        QScanResultEntity qScanResultEntity2 = new QScanResultEntity();
        qScanResultEntity2.packageName = qScanResultEntity.packageName;
        qScanResultEntity2.softName = qScanResultEntity.softName;
        qScanResultEntity2.version = qScanResultEntity.version;
        qScanResultEntity2.versionCode = qScanResultEntity.versionCode;
        qScanResultEntity2.certMd5 = qScanResultEntity.certMd5;
        qScanResultEntity2.size = qScanResultEntity.size;
        qScanResultEntity2.apkType = i;
        qScanResultEntity2.path = str2;
        qScanResultEntity2.type = qScanResultEntity.type;
        qScanResultEntity2.advice = qScanResultEntity.advice;
        qScanResultEntity2.malwareid = qScanResultEntity.malwareid;
        qScanResultEntity2.name = qScanResultEntity.name;
        qScanResultEntity2.label = qScanResultEntity.name;
        qScanResultEntity2.discription = qScanResultEntity.discription;
        qScanResultEntity2.url = qScanResultEntity.url;
        return qScanResultEntity2;
    }

    public final void a(ApkKey apkKey, QScanResultEntity qScanResultEntity) {
        if (apkKey != null && this.c.get(apkKey.pkgName + apkKey.size) == null) {
            this.c.putParcelable(apkKey.pkgName + apkKey.size, qScanResultEntity);
            this.d = true;
        }
    }
}
