package a.a.a.a.a.a.e;

import a.a.a.a.a.a.h;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;

public final class f extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private DataInputStream f12a;

    public f(InputStream inputStream) {
        this.f12a = new DataInputStream(inputStream);
    }

    public final u a() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte readByte = this.f12a.readByte();
        byte b = (byte) ((readByte >>> 4) & 15);
        if (b <= 0 || b > 14) {
            throw h.a(32108);
        }
        long a2 = u.a(this.f12a).a();
        byteArrayOutputStream.write(readByte);
        byteArrayOutputStream.write(u.a(a2));
        byte[] bArr = new byte[((int) (((long) byteArrayOutputStream.size()) + a2))];
        this.f12a.readFully(bArr, byteArrayOutputStream.size(), bArr.length - byteArrayOutputStream.size());
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
        return u.a(bArr);
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f12a.available();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public final void close() {
        this.f12a.close();
    }

    @Override // java.io.InputStream
    public final int read() {
        return this.f12a.read();
    }
}
