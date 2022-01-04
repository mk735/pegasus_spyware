package com.tencent.lbsapi.a;

import android.content.Context;
import java.net.UnknownHostException;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.http.message.BasicHeader;

public class a extends Thread {
    private byte[] a = null;
    private b b = null;
    private int c = 0;
    private String d = null;
    private Context e = null;

    /* access modifiers changed from: protected */
    public void a(int i) {
        this.c = i;
    }

    /* access modifiers changed from: protected */
    public void a(Context context) {
        this.e = context;
    }

    /* access modifiers changed from: protected */
    public void a(b bVar) {
        this.b = bVar;
    }

    /* access modifiers changed from: protected */
    public void a(String str) {
        this.d = str;
    }

    /* access modifiers changed from: protected */
    public void a(byte[] bArr) {
        this.a = bArr;
    }

    public void run() {
        boolean z;
        if (this.b != null) {
            int i = 0;
            do {
                try {
                    byte[] a2 = c.a("http://lbsapi.3g.qq.com/wupbin", this.a, "POST", new BasicHeader[]{new BasicHeader("Content-Type", PostMethod.FORM_URL_ENCODED_CONTENT_TYPE), new BasicHeader("UA", "ANDROID"), new BasicHeader("LBS-UIN", this.d)}, this.e);
                    if (this.b != null) {
                        this.b.a(this.c, a2, a2.length);
                    }
                    z = false;
                    continue;
                } catch (d e2) {
                    if (this.b != null) {
                        this.b.a(this.c, -1, "HTTP数据错误");
                    }
                    z = false;
                    continue;
                } catch (NullPointerException e3) {
                    if (i < 1) {
                        i++;
                        z = true;
                        continue;
                    } else {
                        if (this.b != null) {
                            this.b.a(this.c, -1, "HTTP数据错误");
                        }
                        z = false;
                        continue;
                    }
                } catch (UnknownHostException e4) {
                    if (i < 1) {
                        i++;
                        z = true;
                        continue;
                    } else {
                        if (this.b != null) {
                            this.b.a(this.c, -1, "HTTP数据错误");
                        }
                        z = false;
                        continue;
                    }
                } catch (Exception e5) {
                    e5.getCause();
                    e5.printStackTrace();
                    if (this.b != null) {
                        this.b.a(this.c, -1, "HTTP数据错误");
                    }
                    z = false;
                    continue;
                }
            } while (z);
            this.e = null;
            this.b = null;
            try {
                finalize();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
