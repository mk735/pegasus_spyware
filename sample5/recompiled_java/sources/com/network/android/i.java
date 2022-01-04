package com.network.android;

import com.network.android.c.a.a;
import com.network.i.e;
import java.io.File;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private String f80a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String[] g;
    private byte[][] h;
    private File[] i;

    public i() {
        this.i = null;
        this.f80a = null;
        this.g = null;
        this.h = null;
    }

    public i(String str) {
        this(str, null, null);
    }

    public i(String str, String[] strArr, byte[][] bArr) {
        this.i = null;
        this.f80a = str;
        this.g = strArr;
        this.h = bArr;
        this.b = e.a();
    }

    public final String a() {
        return this.f80a;
    }

    public final void a(String str) {
        try {
            a.a("DataElement id: " + this.c);
            a.a("DataElement timestemp: " + this.b);
            a.a("DataElement filePath: " + this.d);
            if (this.f80a != null) {
                a.a(str + " DataElement XML Data- " + this.f80a.substring(0, Math.min(500, this.f80a.length())));
            } else {
                a.a("DataElement no data ");
            }
            if (this.g != null) {
                for (int i2 = 0; i2 < this.g.length; i2++) {
                    a.a("DataElement file attachment name: " + this.g[i2]);
                    a.a("DataElement file attachment lenght: " + this.h[i2].length);
                }
                return;
            }
            a.a("singleAttachmentFileName: " + this.e);
            a.a("singleAttachmentFilePath: " + this.f);
        } catch (Throwable th) {
            a.a("DataElement print: " + th.getMessage(), th);
        }
    }

    public final void a(File[] fileArr) {
        this.i = fileArr;
    }

    public final void a(String[] strArr) {
        this.g = strArr;
    }

    public final void a(byte[][] bArr) {
        this.h = bArr;
    }

    public final String b() {
        return this.e;
    }

    public final void b(String str) {
        this.f80a = str;
    }

    public final void c(String str) {
        this.e = str;
    }

    public final String[] c() {
        return this.g;
    }

    public final void d(String str) {
        this.b = str;
    }

    public final byte[][] d() {
        return this.h;
    }

    public final String e() {
        return this.b;
    }

    public final void e(String str) {
        this.c = str;
    }

    public final String f() {
        return this.c;
    }

    public final void f(String str) {
        this.f = str;
    }

    public final String g() {
        return this.d;
    }

    public final void g(String str) {
        this.d = str;
    }

    public final String h() {
        return this.f;
    }

    public final File[] i() {
        return this.i;
    }
}
