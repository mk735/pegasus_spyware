package a.a.a.a.a;

public class j {

    /* renamed from: a  reason: collision with root package name */
    private boolean f32a = true;
    private byte[] b;
    private int c = 1;
    private boolean d = false;
    private boolean e = false;

    public j() {
        a(new byte[0]);
    }

    private void f() {
        if (!this.f32a) {
            throw new IllegalStateException();
        }
    }

    public final void a(int i) {
        f();
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException();
        }
        this.c = i;
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
        this.e = z;
    }

    public final void a(byte[] bArr) {
        f();
        this.b = bArr;
    }

    public final byte[] a() {
        return this.b;
    }

    public final boolean b() {
        return this.d;
    }

    public final void c() {
        f();
        this.d = true;
    }

    public final int d() {
        return this.c;
    }

    public final boolean e() {
        return this.e;
    }

    public String toString() {
        return new String(this.b);
    }
}
