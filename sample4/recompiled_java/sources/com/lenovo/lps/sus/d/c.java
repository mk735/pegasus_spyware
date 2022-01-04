package com.lenovo.lps.sus.d;

import android.content.Context;
import android.os.Handler;
import com.lenovo.lps.sus.c.i;
import com.lenovo.lps.sus.control.am;
import java.io.File;

public class c {
    private am a = null;
    private Context b = null;
    private f c = null;
    private long d = 0;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private long h = 0;
    private long i = 0;
    private Handler j = new d(this);

    public void a() {
        i.a(com.lenovo.lps.sus.c.c.b, "CustomDownloadManager finish");
        if (this.c != null) {
            this.c.a((a) null);
            this.c.a();
            this.c = null;
        }
    }

    public boolean a(int i2, int i3, Context context, am amVar, String str, String str2, String str3, long j2) {
        this.b = context;
        this.a = amVar;
        if (this.b == null || this.a == null || str == null || str2 == null || str2.length() == 0 || str3 == null || str3.length() == 0 || 0 >= j2) {
            return false;
        }
        File file = new File(str);
        if (file.exists()) {
            Context context2 = this.b;
            if (this.c != null) {
                this.c.a((a) null);
                this.c.a();
                this.c = null;
            }
            this.h = System.currentTimeMillis();
            this.i = this.h;
            this.e = 0;
            this.f = 0;
            this.g = 0;
            this.c = new f(context2, i2, "userAgent", str3, j2, file, str2, new e(this));
            this.c.start();
            return true;
        }
        i.b(com.lenovo.lps.sus.c.c.b, "The folder isn't exit! path=" + com.lenovo.lps.sus.c.c.i());
        return false;
    }
}
