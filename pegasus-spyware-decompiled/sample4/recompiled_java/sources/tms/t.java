package tms;

public class t {
    private int a;
    private int b;
    private byte[] c;

    public t() {
    }

    public t(int i, int i2, byte[] bArr) {
        this.a = i;
        this.b = i2;
        this.c = bArr;
    }

    public int a() {
        return this.a;
    }

    public void a(int i) {
        this.a = i;
    }

    public void a(byte[] bArr) {
        this.c = bArr;
    }

    public int b() {
        return this.b;
    }

    public void b(int i) {
        this.b = i;
    }

    public byte[] c() {
        return this.c;
    }
}
