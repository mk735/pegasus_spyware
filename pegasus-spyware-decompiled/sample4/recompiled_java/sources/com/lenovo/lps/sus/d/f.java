package com.lenovo.lps.sus.d;

import android.content.Context;
import com.lenovo.lps.sus.c.c;
import java.io.File;
import org.apache.commons.httpclient.cookie.CookieSpec;

public class f extends Thread {
    private Context a;
    private boolean b = false;
    private a c;
    private String d = null;
    private String e = null;
    private long f = 0;
    private File g = null;
    private String h = null;
    private String i = null;
    private int j = 0;

    public f(Context context, int i2, String str, String str2, long j2, File file, String str3, a aVar) {
        this.a = context;
        this.c = aVar;
        this.j = (i2 < 0 || i2 > 2) ? 0 : i2;
        this.d = str;
        if (this.d == null) {
            this.d = c.as;
        }
        this.e = str2;
        this.f = j2;
        this.g = file;
        this.h = str3;
        this.i = String.valueOf(this.g.toString()) + CookieSpec.PATH_DELIM + this.h;
    }

    private void a(String str) {
        if (this.c != null) {
            this.c.a(str);
        }
    }

    public void a() {
        this.b = true;
    }

    public void a(a aVar) {
        this.c = aVar;
    }

    public void b() {
        this.b = true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:211:0x05ab, code lost:
        r2 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:212:0x05ac, code lost:
        r7 = null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x03f0  */
    /* JADX WARNING: Removed duplicated region for block: B:142:0x03f5 A[SYNTHETIC, Splitter:B:142:0x03f5] */
    /* JADX WARNING: Removed duplicated region for block: B:145:0x03fa A[SYNTHETIC, Splitter:B:145:0x03fa] */
    /* JADX WARNING: Removed duplicated region for block: B:187:0x0537  */
    /* JADX WARNING: Removed duplicated region for block: B:189:0x053c A[SYNTHETIC, Splitter:B:189:0x053c] */
    /* JADX WARNING: Removed duplicated region for block: B:192:0x0541 A[SYNTHETIC, Splitter:B:192:0x0541] */
    /* JADX WARNING: Removed duplicated region for block: B:204:0x0581  */
    /* JADX WARNING: Removed duplicated region for block: B:211:0x05ab A[ExcHandler: all (th java.lang.Throwable), PHI: r9 
      PHI: (r9v12 java.io.FileOutputStream) = (r9v13 java.io.FileOutputStream), (r9v13 java.io.FileOutputStream), (r9v34 java.io.FileOutputStream), (r9v34 java.io.FileOutputStream) binds: [B:35:0x00da, B:36:?, B:61:0x0149, B:62:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:35:0x00da] */
    /* JADX WARNING: Removed duplicated region for block: B:246:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00fa  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0103  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0108 A[SYNTHETIC, Splitter:B:42:0x0108] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x010d A[SYNTHETIC, Splitter:B:45:0x010d] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0118  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0165  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x0291  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0296 A[SYNTHETIC, Splitter:B:93:0x0296] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x029b A[SYNTHETIC, Splitter:B:96:0x029b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        // Method dump skipped, instructions count: 1549
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lenovo.lps.sus.d.f.run():void");
    }
}
