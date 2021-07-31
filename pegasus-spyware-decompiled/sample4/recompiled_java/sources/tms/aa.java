package tms;

import QQPIM.uploadPacketInfoResp;
import android.content.Context;
import com.lenovo.lps.sus.a.a.a.b;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tccdb.TccCryptor;

public class aa {
    public static final String a = "http://uploadserver.3g.qq.com";
    private Context b;
    private String c = a;

    public aa(Context context) {
        this.b = context;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:103:0x017e, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:104:0x017f, code lost:
        r1 = r0;
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:0x0187, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:108:0x0188, code lost:
        r2 = r1;
        r1 = r0;
        r0 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:109:0x018c, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x018d, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:113:?, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:?, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:?, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00f8, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:?, code lost:
        r0.printStackTrace();
        r0 = r0.getErrCode();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:?, code lost:
        r5.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0105, code lost:
        r1.f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x0141, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x0147, code lost:
        r1.f();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:0x015b, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x015c, code lost:
        r2.printStackTrace();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x018c A[ExcHandler: NetWorkException (e com.tencent.tmsecure.exception.NetWorkException), Splitter:B:35:0x0074] */
    /* JADX WARNING: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:117:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00f8 A[ExcHandler: NetWorkException (e com.tencent.tmsecure.exception.NetWorkException), PHI: r1 
      PHI: (r1v10 tms.y) = (r1v2 tms.y), (r1v11 tms.y) binds: [B:7:0x001c, B:12:0x002c] A[DONT_GENERATE, DONT_INLINE], Splitter:B:7:0x001c] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x0147  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int a(java.lang.String r15, QQPIM.UploadFileInfo r16) {
        /*
        // Method dump skipped, instructions count: 403
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.aa.a(java.lang.String, QQPIM.UploadFileInfo):int");
    }

    public uploadPacketInfoResp a(byte[] bArr) {
        uploadPacketInfoResp uploadpacketinforesp;
        if (bArr == null) {
            return null;
        }
        UniAttribute uniAttribute = new UniAttribute();
        uniAttribute.setEncodeName(b.a);
        try {
            uniAttribute.decode(TccCryptor.decrypt(this.b, bArr, null));
            uploadpacketinforesp = (uploadPacketInfoResp) uniAttribute.get("key_UploadPacketInfoResp");
        } catch (Exception e) {
            e.printStackTrace();
            uploadpacketinforesp = null;
        }
        return uploadpacketinforesp;
    }

    public void a(String str) {
        this.c = str;
    }
}
