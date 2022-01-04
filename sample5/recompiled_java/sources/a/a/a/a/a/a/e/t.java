package a.a.a.a.a.a.e;

import a.a.a.a.a.i;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public final class t extends u {
    private String[] c;

    public t(String[] strArr) {
        super((byte) 10);
        this.c = strArr;
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte b_() {
        return (byte) ((this.b ? 8 : 0) | 2);
    }

    @Override // a.a.a.a.a.a.e.u
    public final byte[] c_() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            for (int i = 0; i < this.c.length; i++) {
                dataOutputStream.writeUTF(this.c[i]);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new i(e);
        }
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte[] d_() {
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
