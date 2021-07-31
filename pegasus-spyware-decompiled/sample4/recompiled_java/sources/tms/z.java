package tms;

import QQPIM.ConnectType;
import android.content.Context;
import android.net.Proxy;
import android.os.Environment;
import android.os.Looper;
import com.tencent.tmsecure.exception.NetworkOnMainThreadException;
import com.tencent.tmsecure.utils.Log;
import com.tencent.tmsecure.utils.NetworkUtil;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.client.methods.HttpGet;

public class z extends x {
    private Context l;
    private HttpGet m = null;
    private String n = null;
    private String o = null;
    private String p = null;
    private String q = null;
    private int r = 0;
    private boolean s = false;
    private boolean t = false;
    private long u = 0;
    private long v = 0;

    public z(Context context) {
        if (NetworkUtil.canNetworkOnMainThread() || Thread.currentThread().getId() != Looper.getMainLooper().getThread().getId()) {
            this.l = context;
            this.s = "mounted".equals(Environment.getExternalStorageState());
            if (this.s) {
                this.n = "/sdcard/qqsecure";
                this.o = "/sdcard/qqsecure";
                File file = new File(this.n);
                if (!file.exists()) {
                    file.mkdir();
                }
            } else {
                this.n = context.getCacheDir().getAbsolutePath();
                this.o = context.getFilesDir().getAbsolutePath();
            }
            this.m = new HttpGet();
            if (NetworkUtil.getNetworkType() == ConnectType.CT_GPRS_WAP) {
                a(Proxy.getDefaultHost(), Proxy.getDefaultPort());
                a(true);
                return;
            }
            return;
        }
        throw new NetworkOnMainThreadException();
    }

    /* JADX WARNING: Removed duplicated region for block: B:103:0x0208  */
    /* JADX WARNING: Removed duplicated region for block: B:108:0x0215  */
    /* JADX WARNING: Removed duplicated region for block: B:120:0x0255  */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x0262  */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x028d  */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x0299  */
    /* JADX WARNING: Removed duplicated region for block: B:168:0x02ee  */
    /* JADX WARNING: Removed duplicated region for block: B:169:0x02f1  */
    /* JADX WARNING: Removed duplicated region for block: B:170:0x02f4  */
    /* JADX WARNING: Removed duplicated region for block: B:171:0x02f7  */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x02fa  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00a1  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00ae  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x016b  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0178  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01c4  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x01d1  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int a(org.apache.http.HttpEntity r12, android.os.Bundle r13, boolean r14) {
        /*
        // Method dump skipped, instructions count: 768
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.z.a(org.apache.http.HttpEntity, android.os.Bundle, boolean):int");
    }

    private int c(String str) {
        int i;
        URI uri = null;
        try {
            uri = new URI(str);
            i = -1000;
        } catch (URISyntaxException e) {
            Log.e("HttpBase", "url error: " + e.getMessage());
            e.printStackTrace();
            i = -1053;
        }
        if (uri == null) {
            return i;
        }
        this.m.setURI(uri);
        return 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00b2, code lost:
        if (r2.exists() != false) goto L_0x00b4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00b4, code lost:
        r2.delete();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x011d, code lost:
        if (r2.exists() != false) goto L_0x00b4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x0134, code lost:
        if (r2.exists() != false) goto L_0x00b4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x0155, code lost:
        if (r2.exists() != false) goto L_0x00b4;
     */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x0227  */
    /* JADX WARNING: Removed duplicated region for block: B:138:0x022a  */
    /* JADX WARNING: Removed duplicated region for block: B:139:0x022d  */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x0230  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a2 A[SYNTHETIC, Splitter:B:25:0x00a2] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00a8 A[SYNTHETIC, Splitter:B:29:0x00a8] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00ae  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x010d A[SYNTHETIC, Splitter:B:49:0x010d] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x0113 A[SYNTHETIC, Splitter:B:53:0x0113] */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x0119  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x0147 A[SYNTHETIC, Splitter:B:74:0x0147] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x014c A[SYNTHETIC, Splitter:B:77:0x014c] */
    /* JADX WARNING: Removed duplicated region for block: B:80:0x0151  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x015e A[SYNTHETIC, Splitter:B:85:0x015e] */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x0163 A[SYNTHETIC, Splitter:B:88:0x0163] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int e() {
        /*
        // Method dump skipped, instructions count: 563
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.z.e():int");
    }

    public void a(int i) {
        this.r = i;
    }

    public void a(String str) {
        this.o = str;
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:100:0x02ac  */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x02a3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(java.lang.String r14, boolean r15) {
        /*
        // Method dump skipped, instructions count: 704
        */
        throw new UnsupportedOperationException("Method not decompiled: tms.z.a(java.lang.String, boolean):void");
    }

    public void b(String str) {
        this.q = str;
    }

    public synchronized boolean b() {
        return this.t;
    }

    public synchronized void c() {
        this.t = true;
    }

    public String d() {
        return this.o + File.separator + this.q;
    }
}
