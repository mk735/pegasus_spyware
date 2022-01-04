package a.a.a.a.a.a.e;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public final class c extends b {
    private int c;

    public c(byte[] bArr) {
        super((byte) 2);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        dataInputStream.readByte();
        this.c = dataInputStream.readUnsignedByte();
        dataInputStream.close();
    }

    public final int a_() {
        return this.c;
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte[] d_() {
        return new byte[0];
    }

    @Override // a.a.a.a.a.a.e.u
    public final boolean e_() {
        return false;
    }
}
