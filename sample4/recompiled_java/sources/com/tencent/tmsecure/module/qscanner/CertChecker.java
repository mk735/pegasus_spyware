package com.tencent.tmsecure.module.qscanner;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import tms.v;

public class CertChecker {
    private static final String a = "trustcerts.dat";
    private static final String b = "label_tc";
    private Context c;
    private List<ApkKey> d = ((List) v.b(this.c, b, a));

    public CertChecker(Context context) {
        this.c = context;
        v.a(this.c, a, (String) null);
        if (this.d == null) {
            this.d = new ArrayList();
        }
    }

    public QScanResult checkCert(QScanResult qScanResult) {
        for (ApkKey apkKey : this.d) {
            ApkKey apkKey2 = qScanResult.apkkey;
            if (apkKey2.pkgName.equals(apkKey.pkgName) && !apkKey2.certMd5.equals(apkKey.certMd5) && qScanResult.type != 3) {
                qScanResult.type = 8;
                qScanResult.advice = 1;
            }
        }
        return qScanResult;
    }

    public int getApkClass(String str) {
        for (ApkKey apkKey : this.d) {
            if (apkKey.pkgName.equals(str)) {
                return 1;
            }
        }
        return 0;
    }
}
