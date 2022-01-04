package a.a.a.a.a.a.e;

import java.io.InputStream;

public final class a extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private InputStream f11a;
    private int b = 0;

    public a(InputStream inputStream) {
        this.f11a = inputStream;
    }

    public final int a() {
        return this.b;
    }

    @Override // java.io.InputStream
    public final int read() {
        int read = this.f11a.read();
        if (read != -1) {
            this.b++;
        }
        return read;
    }
}
