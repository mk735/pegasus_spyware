package com.tencent.tmsecure.utils;

import QQPIM.ConfInfo;
import QQPIM.VirusClientInfo;
import android.content.Context;
import com.tencent.tccdb.RuleFileHeader;
import com.tencent.tccdb.SmsChecker;
import com.tencent.tmsecure.module.qscanner.AmScanner;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicReference;
import tms.r;

public class UpdateUtil {
    private static final String a = "UpdateUtil";

    private static byte[] a(String str, int i, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        randomAccessFile.skipBytes(i);
        randomAccessFile.read(bArr);
        randomAccessFile.close();
        return bArr;
    }

    public static ConfInfo getFileConfInfo(String str) {
        try {
            byte[] a2 = a(str, 0, 24);
            ConfInfo confInfo = new ConfInfo();
            byte[] bArr = new byte[4];
            System.arraycopy(a2, 4, bArr, 0, 4);
            confInfo.setTimestamp(r.b(bArr));
            byte[] bArr2 = new byte[16];
            System.arraycopy(a2, 8, bArr2, 0, 16);
            confInfo.setChecksum(r.a(bArr2));
            confInfo.setFilename(new File(str).getName());
            return confInfo;
        } catch (IOException e) {
            Log.i(a, e.getMessage());
            return null;
        }
    }

    public static ConfInfo getLocationConfInfo(String str) {
        try {
            byte[] a2 = a(str, 0, 48);
            ConfInfo confInfo = new ConfInfo();
            confInfo.setVersion(a2[0]);
            byte[] bArr = new byte[4];
            System.arraycopy(a2, 4, bArr, 0, 4);
            confInfo.setTimestamp(r.b(bArr));
            byte[] bArr2 = new byte[16];
            System.arraycopy(a2, 8, bArr2, 0, 16);
            confInfo.setChecksum(r.a(bArr2));
            byte[] bArr3 = new byte[4];
            System.arraycopy(a2, 44, bArr3, 0, 4);
            confInfo.setPfutimestamp(r.b(bArr3));
            confInfo.setFilename(new File(str).getName());
            return confInfo;
        } catch (IOException e) {
            Log.i(a, e.getMessage());
            return null;
        }
    }

    public static ConfInfo getSmsCheckerConfInfo(Context context, String str) {
        File file = new File(str);
        if (file.exists()) {
            AtomicReference atomicReference = new AtomicReference();
            SmsChecker.getRuleFileHeader(context, atomicReference, str);
            RuleFileHeader ruleFileHeader = (RuleFileHeader) atomicReference.get();
            if (ruleFileHeader != null) {
                ConfInfo confInfo = new ConfInfo();
                confInfo.setFilename(file.getName());
                confInfo.setChecksum(ruleFileHeader.md5str);
                confInfo.setTimestamp(ruleFileHeader.time);
                return confInfo;
            }
        }
        return null;
    }

    public static VirusClientInfo getVirusClientInfo(Context context, String str) {
        if (new File(str).exists()) {
            return AmScanner.loadAmfHeader(context, str);
        }
        return null;
    }

    public static ConfInfo getVirusConfInfo(Context context, String str) {
        VirusClientInfo loadAmfHeader;
        File file = new File(str);
        if (!file.exists() || (loadAmfHeader = AmScanner.loadAmfHeader(context, str)) == null) {
            return null;
        }
        ConfInfo confInfo = new ConfInfo();
        confInfo.setFilename(file.getName());
        confInfo.setTimestamp(loadAmfHeader.timestamp);
        confInfo.setVersion(loadAmfHeader.version);
        return confInfo;
    }
}
