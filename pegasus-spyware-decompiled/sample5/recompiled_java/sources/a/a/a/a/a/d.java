package a.a.a.a.a;

import java.util.Properties;
import javax.net.SocketFactory;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    private int f28a = 60;
    private n b = null;
    private j c = null;
    private String d;
    private char[] e;
    private SocketFactory f;
    private Properties g = null;
    private boolean h = true;
    private int i = 30;

    public final void a(int i2) {
        if (i2 < 10) {
            throw new IllegalArgumentException();
        }
        this.f28a = i2;
    }

    public final void a(String str) {
        if (str == null || !str.trim().equals("")) {
            this.d = str;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final void a(SocketFactory socketFactory) {
        this.f = socketFactory;
    }

    public final void a(char[] cArr) {
        this.e = cArr;
    }

    public final char[] a() {
        return this.e;
    }

    public final String b() {
        return this.d;
    }

    public final int c() {
        return this.f28a;
    }

    public final int d() {
        return this.i;
    }

    public final SocketFactory e() {
        return this.f;
    }

    public final n f() {
        return this.b;
    }

    public final j g() {
        return this.c;
    }

    public final Properties h() {
        return this.g;
    }

    public final boolean i() {
        return this.h;
    }

    public final void j() {
        this.h = false;
    }
}
