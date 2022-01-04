package a.a.a.a.a.a.e;

import a.a.a.a.a.i;
import a.a.a.a.a.j;
import a.a.a.a.a.n;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public final class d extends u {
    private String c;
    private boolean d;
    private j e;
    private String f;
    private char[] g;
    private int h;
    private n i;

    public d(String str, boolean z, int i2, String str2, char[] cArr, j jVar, n nVar) {
        super((byte) 1);
        this.c = str;
        this.d = z;
        this.h = i2;
        this.f = str2;
        this.g = cArr;
        this.e = jVar;
        this.i = nVar;
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte b_() {
        return 0;
    }

    @Override // a.a.a.a.a.a.e.u
    public final byte[] c_() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeUTF(this.c);
            if (this.e != null) {
                dataOutputStream.writeUTF(this.i.a());
                dataOutputStream.writeShort(this.e.a().length);
                dataOutputStream.write(this.e.a());
            }
            if (this.f != null) {
                dataOutputStream.writeUTF(this.f);
                if (this.g != null) {
                    dataOutputStream.writeUTF(new String(this.g));
                }
            }
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new i(e2);
        }
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte[] d_() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeUTF("MQIsdp");
            dataOutputStream.write(3);
            byte b = 0;
            if (this.d) {
                b = 2;
            }
            if (this.e != null) {
                b = (byte) (((byte) (b | 4)) | (this.e.d() << 3));
                if (this.e.b()) {
                    b = (byte) (b | 32);
                }
            }
            if (this.f != null) {
                b = (byte) (b | 128);
                if (this.g != null) {
                    b = (byte) (b | 64);
                }
            }
            dataOutputStream.write(b);
            dataOutputStream.writeShort(this.h);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            throw new i(e2);
        }
    }

    @Override // a.a.a.a.a.a.e.u
    public final boolean e_() {
        return false;
    }
}
