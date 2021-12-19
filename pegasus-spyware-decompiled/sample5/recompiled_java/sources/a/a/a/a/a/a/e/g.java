package a.a.a.a.a.a.e;

import java.io.DataOutputStream;
import java.io.OutputStream;

public final class g extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private DataOutputStream f13a;

    public g(OutputStream outputStream) {
        this.f13a = new DataOutputStream(outputStream);
    }

    public final void a(u uVar) {
        uVar.j();
        uVar.c_();
        this.f13a.write(uVar.j());
        this.f13a.write(uVar.c_());
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f13a.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        this.f13a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.f13a.write(i);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f13a.write(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        this.f13a.write(bArr, i, i2);
    }
}
