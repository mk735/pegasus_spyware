package com.tencent.tmsecure.module.qscanner;

import QQPIM.VirusClientInfo;
import QQPIM.VirusInfo;
import QQPIM.VirusServerInfo;
import android.content.Context;
import com.lenovo.lps.sus.a.a.a.b;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import tms.ad;

public class AmScanner {
    private int a = 0;

    static {
        ad.a(TMSApplication.getApplicaionContext(), TMSApplication.getStrFromEnvMap(TMSApplication.CON_VIRUS_SCAN_LIBNAME));
    }

    public AmScanner(Context context, String str) {
        this.a = newObject(context, str);
        if (this.a == 0) {
            throw new OutOfMemoryError();
        }
        initScanner(this.a);
    }

    private static native void deleteObject(int i);

    private static native int initScanner(int i);

    public static VirusClientInfo loadAmfHeader(Context context, String str) {
        byte[] bArr;
        if (str != null) {
            UniAttribute uniAttribute = new UniAttribute();
            uniAttribute.setEncodeName(b.a);
            uniAttribute.useVersion3();
            AtomicReference atomicReference = new AtomicReference();
            if (nativeLoadAmfHeaderBytes(context, str, atomicReference) == 0 && (bArr = (byte[]) atomicReference.get()) != null) {
                uniAttribute.decode(bArr);
                return (VirusClientInfo) uniAttribute.getByClass("vci", new VirusClientInfo());
            }
        }
        return null;
    }

    private static native int nativeLoadAmfHeaderBytes(Context context, String str, AtomicReference<byte[]> atomicReference);

    private static native int nativeUpdateMalwareInfoBytes(Context context, String str, byte[] bArr, byte[] bArr2);

    private static native int newObject(Context context, String str);

    private static native int scanApkBytes(int i, byte[] bArr, AtomicReference<byte[]> atomicReference);

    public static int updateBase(Context context, String str, VirusServerInfo virusServerInfo, List<VirusInfo> list) {
        if (virusServerInfo == null || list == null) {
            return -6;
        }
        UniAttribute uniAttribute = new UniAttribute();
        uniAttribute.setEncodeName(b.a);
        uniAttribute.useVersion3();
        uniAttribute.put("vsi", virusServerInfo);
        byte[] encode = uniAttribute.encode();
        uniAttribute.clearCacheData();
        uniAttribute.put("vil", list);
        return nativeUpdateMalwareInfoBytes(context, str, encode, uniAttribute.encode());
    }

    public void finalize() {
        if (this.a != 0) {
            deleteObject(this.a);
            this.a = 0;
        }
    }

    public QScanResult scanApk(ApkKey apkKey) {
        byte[] bArr;
        if (apkKey != null) {
            UniAttribute uniAttribute = new UniAttribute();
            uniAttribute.setEncodeName(b.a);
            uniAttribute.useVersion3();
            uniAttribute.put("ak", apkKey);
            AtomicReference atomicReference = new AtomicReference();
            if (scanApkBytes(this.a, uniAttribute.encode(), atomicReference) == 0 && (bArr = (byte[]) atomicReference.get()) != null) {
                uniAttribute.clearCacheData();
                uniAttribute.decode(bArr);
                return (QScanResult) uniAttribute.getByClass("qsr", new QScanResult());
            }
        }
        return null;
    }
}
