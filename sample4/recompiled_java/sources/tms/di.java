package tms;

import com.tencent.tmsecure.module.networkload.NetworkLoadTask;

/* access modifiers changed from: package-private */
public final class di<T extends NetworkLoadTask> extends Thread {
    private static final short[] a = {8, 64, 128};
    private T b;
    private int c = 307200;
    private boolean d = true;
    private y e = null;
    private ea<T> f;
    private String g;
    private byte[] h = new byte[0];
    private boolean i;
    private byte j = 0;

    public di(T t, boolean z, String str) {
        this.b = t;
        this.g = str;
        this.i = z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0080 A[SYNTHETIC, Splitter:B:22:0x0080] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0089  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(java.io.FileOutputStream r19) throws com.tencent.tmsecure.exception.NetWorkException {
        /*
        // Method dump skipped, instructions count: 637
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.di.a(java.io.FileOutputStream):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0277, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x0278, code lost:
        r4 = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:0x029d, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x02a7, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x02a8, code lost:
        r4 = r5;
        r1 = r3;
        r2 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:158:0x03f2, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:159:0x03f3, code lost:
        r4.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:170:0x0416, code lost:
        r1 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:171:0x0417, code lost:
        r4 = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:172:0x041a, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:173:0x041b, code lost:
        r4 = r5;
        r1 = r3;
        r2 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:178:0x0433, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:180:0x0436, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:181:0x0437, code lost:
        r1 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:186:0x044e, code lost:
        r1 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:187:0x044f, code lost:
        r4 = r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:188:0x0452, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:189:0x0453, code lost:
        r4 = r5;
        r1 = r3;
        r2 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:192:0x0466, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:193:0x0467, code lost:
        r1 = r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:?, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x010d, code lost:
        com.tencent.tmsecure.module.networkload.NetworkloadProperties.updateSelfMobileDownloadBytes(r2 + com.tencent.tmsecure.module.networkload.NetworkloadProperties.getSelfMobileDownloadBytes());
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:111:0x0277 A[ExcHandler: NetWorkException (e com.tencent.tmsecure.exception.NetWorkException), PHI: r2 
      PHI: (r2v8 long) = (r2v6 long), (r2v9 long), (r2v9 long) binds: [B:65:0x0183, B:100:0x0228, B:101:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:65:0x0183] */
    /* JADX WARNING: Removed duplicated region for block: B:114:0x029d A[ExcHandler: UnsupportedEncodingException (e java.io.UnsupportedEncodingException), Splitter:B:65:0x0183] */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x02a7 A[ExcHandler: NetWorkException (r3v28 'e' com.tencent.tmsecure.exception.NetWorkException A[CUSTOM_DECLARE]), Splitter:B:78:0x01c6] */
    /* JADX WARNING: Removed duplicated region for block: B:135:0x0314 A[SYNTHETIC, Splitter:B:135:0x0314] */
    /* JADX WARNING: Removed duplicated region for block: B:153:0x03a2  */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x0416 A[ExcHandler: all (th java.lang.Throwable), PHI: r2 
      PHI: (r2v7 long) = (r2v6 long), (r2v9 long), (r2v9 long) binds: [B:65:0x0183, B:100:0x0228, B:101:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:65:0x0183] */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x041a A[ExcHandler: all (r3v27 'th' java.lang.Throwable A[CUSTOM_DECLARE]), Splitter:B:78:0x01c6] */
    /* JADX WARNING: Removed duplicated region for block: B:178:0x0433 A[ExcHandler: Exception (e java.lang.Exception), Splitter:B:65:0x0183] */
    /* JADX WARNING: Removed duplicated region for block: B:188:0x0452 A[ExcHandler: IOException (r3v26 'e' java.io.IOException A[CUSTOM_DECLARE]), Splitter:B:78:0x01c6] */
    /* JADX WARNING: Removed duplicated region for block: B:192:0x0466 A[ExcHandler: UnsupportedEncodingException (r3v25 'e' java.io.UnsupportedEncodingException A[CUSTOM_DECLARE]), Splitter:B:78:0x01c6] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00f9 A[SYNTHETIC, Splitter:B:42:0x00f9] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x010d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(java.io.FileOutputStream r21) throws com.tencent.tmsecure.exception.NetWorkException {
        /*
        // Method dump skipped, instructions count: 1158
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.di.b(java.io.FileOutputStream):void");
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.d = false;
        interrupt();
        if (this.e != null) {
            try {
                this.e.f();
                this.e = null;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(ea<T> eaVar) {
        this.f = eaVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:129:0x02de, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x030e, code lost:
        throw new com.tencent.tmsecure.exception.NetWorkException(-2, "init download task exception " + r0.getClass().getName() + " errormsg:" + r0.getMessage());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x030f, code lost:
        r0 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x0310, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:250:0x057e, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:251:0x057f, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x0239, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x023a, code lost:
        throw r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:104:0x0244 A[Catch:{ all -> 0x03cb }] */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x0279 A[SYNTHETIC, Splitter:B:109:0x0279] */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x027e A[SYNTHETIC, Splitter:B:112:0x027e] */
    /* JADX WARNING: Removed duplicated region for block: B:124:0x02bf  */
    /* JADX WARNING: Removed duplicated region for block: B:128:0x02d4  */
    /* JADX WARNING: Removed duplicated region for block: B:132:0x030f A[ExcHandler: FileNotFoundException (e java.io.FileNotFoundException), Splitter:B:5:0x0018] */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x0318  */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x034b A[SYNTHETIC, Splitter:B:141:0x034b] */
    /* JADX WARNING: Removed duplicated region for block: B:144:0x0350 A[SYNTHETIC, Splitter:B:144:0x0350] */
    /* JADX WARNING: Removed duplicated region for block: B:156:0x0391  */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x03a6  */
    /* JADX WARNING: Removed duplicated region for block: B:168:0x03ce A[SYNTHETIC, Splitter:B:168:0x03ce] */
    /* JADX WARNING: Removed duplicated region for block: B:171:0x03d3 A[SYNTHETIC, Splitter:B:171:0x03d3] */
    /* JADX WARNING: Removed duplicated region for block: B:183:0x0414  */
    /* JADX WARNING: Removed duplicated region for block: B:187:0x0429  */
    /* JADX WARNING: Removed duplicated region for block: B:194:0x0443  */
    /* JADX WARNING: Removed duplicated region for block: B:199:0x049b A[SYNTHETIC, Splitter:B:199:0x049b] */
    /* JADX WARNING: Removed duplicated region for block: B:202:0x04a0 A[SYNTHETIC, Splitter:B:202:0x04a0] */
    /* JADX WARNING: Removed duplicated region for block: B:214:0x04e1  */
    /* JADX WARNING: Removed duplicated region for block: B:218:0x04f6  */
    /* JADX WARNING: Removed duplicated region for block: B:224:0x0513  */
    /* JADX WARNING: Removed duplicated region for block: B:229:0x0527  */
    /* JADX WARNING: Removed duplicated region for block: B:234:0x053b  */
    /* JADX WARNING: Removed duplicated region for block: B:239:0x054f  */
    /* JADX WARNING: Removed duplicated region for block: B:250:0x057e A[ExcHandler: all (th java.lang.Throwable), Splitter:B:5:0x0018] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
        // Method dump skipped, instructions count: 1413
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.di.run():void");
    }
}
