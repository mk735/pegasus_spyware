package a.a.a.a.a.a.e;

import a.a.a.a.a.i;
import a.a.a.a.a.j;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public final class o extends h {
    private j c = new p();
    private String d;
    private byte[] e = null;

    public o(byte b, byte[] bArr) {
        super((byte) 3);
        this.c.a((b >> 1) & 3);
        if ((b & 1) == 1) {
            this.c.c();
        }
        if ((b & 8) == 8) {
            ((p) this.c).a(true);
        }
        a aVar = new a(new ByteArrayInputStream(bArr));
        DataInputStream dataInputStream = new DataInputStream(aVar);
        this.d = dataInputStream.readUTF();
        if (this.c.d() > 0) {
            this.f15a = dataInputStream.readUnsignedShort();
        }
        dataInputStream.close();
        byte[] bArr2 = new byte[(bArr.length - aVar.a())];
        dataInputStream.readFully(bArr2);
        this.c.a(bArr2);
    }

    @Override // a.a.a.a.a.a.e.u
    public final void a(int i) {
        super.a(i);
        if (this.c instanceof p) {
            ((p) this.c).b(i);
        }
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte b_() {
        byte d2 = (byte) (this.c.d() << 1);
        if (this.c.b()) {
            d2 = (byte) (d2 | 1);
        }
        return this.c.e() ? (byte) (d2 | 8) : d2;
    }

    @Override // a.a.a.a.a.a.e.u
    public final byte[] c_() {
        if (this.e == null) {
            this.e = this.c.a();
        }
        return this.e;
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte[] d_() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeUTF(this.d);
            if (this.c.d() > 0) {
                dataOutputStream.writeShort(this.f15a);
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new i(e2);
        }
    }

    @Override // a.a.a.a.a.a.e.h, a.a.a.a.a.k
    public final int e() {
        try {
            return c_().length;
        } catch (i e2) {
            return 0;
        }
    }

    @Override // a.a.a.a.a.a.e.u
    public final boolean e_() {
        return true;
    }

    public final String g() {
        return this.d;
    }

    public final j h() {
        return this.c;
    }
}
