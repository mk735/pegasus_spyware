package a.a.a.a.a.a.e;

import java.io.InputStream;

public final class v extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f16a;
    private int b;
    private int c;
    private byte[] d;
    private int e;
    private int f;
    private int g = 0;

    public v(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        this.f16a = bArr;
        this.d = bArr2;
        this.b = i;
        this.e = i3;
        this.c = i2;
        this.f = i4;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:3:0x000f */
    @Override // java.io.InputStream
    public final int read() {
        int i;
        if (this.g < this.c) {
            i = this.f16a[this.b + this.g];
        } else if (this.g >= this.c + this.f) {
            return -1;
        } else {
            i = this.d[(this.e + this.g) - this.c];
        }
        if (i < 0) {
            i += 256;
        }
        this.g++;
        return i == 1 ? 1 : 0;
    }
}
