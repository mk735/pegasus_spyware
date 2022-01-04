package a.a.a.a.a.a.e;

import a.a.a.a.a.a.h;
import a.a.a.a.a.i;
import a.a.a.a.a.k;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract class u {

    /* renamed from: a  reason: collision with root package name */
    protected int f15a;
    protected boolean b = false;
    private byte c;
    private byte[] d = null;

    public u(byte b2) {
        this.c = b2;
        this.f15a = 0;
    }

    public static u a(k kVar) {
        byte[] d2 = kVar.d();
        if (d2 == null) {
            d2 = new byte[0];
        }
        return a(new v(kVar.a(), kVar.c(), kVar.b(), d2, kVar.f(), kVar.e()));
    }

    private static u a(InputStream inputStream) {
        try {
            a aVar = new a(inputStream);
            DataInputStream dataInputStream = new DataInputStream(aVar);
            int readUnsignedByte = dataInputStream.readUnsignedByte();
            byte b2 = (byte) (readUnsignedByte >> 4);
            byte b3 = (byte) (readUnsignedByte & 15);
            long a2 = (a(dataInputStream).a() + ((long) aVar.a())) - ((long) aVar.a());
            byte[] bArr = new byte[0];
            if (a2 > 0) {
                bArr = new byte[((int) a2)];
                dataInputStream.readFully(bArr, 0, bArr.length);
            }
            if (b2 == 3) {
                return new o(b3, bArr);
            }
            if (b2 == 4) {
                return new k(bArr);
            }
            if (b2 == 7) {
                return new l(bArr);
            }
            if (b2 == 2) {
                return new c(bArr);
            }
            if (b2 == 13) {
                return new j();
            }
            if (b2 == 9) {
                return new q(bArr);
            }
            if (b2 == 11) {
                return new s(bArr);
            }
            if (b2 == 6) {
                return new n(bArr);
            }
            if (b2 == 5) {
                return new m(bArr);
            }
            throw h.a(6);
        } catch (IOException e) {
            throw new i(e);
        }
    }

    public static u a(byte[] bArr) {
        return a(new ByteArrayInputStream(bArr));
    }

    protected static w a(DataInputStream dataInputStream) {
        byte readByte;
        long j = 0;
        int i = 1;
        int i2 = 0;
        do {
            readByte = dataInputStream.readByte();
            i2++;
            j += (long) ((readByte & Byte.MAX_VALUE) * i);
            i *= 128;
        } while ((readByte & 128) != 0);
        return new w(j, i2);
    }

    protected static byte[] a(long j) {
        int i = 0;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        do {
            byte b2 = (byte) ((int) (j % 128));
            j /= 128;
            if (j > 0) {
                b2 = (byte) (b2 | 128);
            }
            byteArrayOutputStream.write(b2);
            i++;
            if (j <= 0) {
                break;
            }
        } while (i < 4);
        return byteArrayOutputStream.toByteArray();
    }

    public void a(int i) {
        this.f15a = i;
    }

    /* access modifiers changed from: protected */
    public abstract byte b_();

    public byte[] c_() {
        return new byte[0];
    }

    /* access modifiers changed from: protected */
    public abstract byte[] d_();

    public boolean e_() {
        return true;
    }

    public final int i() {
        return this.f15a;
    }

    public final byte[] j() {
        if (this.d == null) {
            try {
                int b_ = ((this.c & 15) << 4) ^ (b_() & 15);
                byte[] d_ = d_();
                int length = d_.length + c_().length;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                dataOutputStream.writeByte(b_);
                dataOutputStream.write(a((long) length));
                dataOutputStream.write(d_);
                dataOutputStream.flush();
                this.d = byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                throw new i(e);
            }
        }
        return this.d;
    }

    /* access modifiers changed from: protected */
    public final byte[] k() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeShort(this.f15a);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new i(e);
        }
    }
}
