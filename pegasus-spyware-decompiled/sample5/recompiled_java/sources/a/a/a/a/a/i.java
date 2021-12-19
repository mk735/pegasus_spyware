package a.a.a.a.a;

import a.a.a.a.a.a.l;

public class i extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private int f31a;
    private Throwable b;

    public i(int i) {
        this.f31a = i;
    }

    public i(Throwable th) {
        this.f31a = 0;
        this.b = th;
    }

    public i(Throwable th, byte b2) {
        this.f31a = 32109;
        this.b = th;
    }

    public Throwable getCause() {
        return this.b;
    }

    public String getMessage() {
        return l.a(this.f31a);
    }

    public String toString() {
        String str = String.valueOf(getMessage()) + " (" + this.f31a + ")";
        return this.b != null ? String.valueOf(str) + " - " + this.b.toString() : str;
    }
}
