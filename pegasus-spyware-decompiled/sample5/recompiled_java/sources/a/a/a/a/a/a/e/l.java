package a.a.a.a.a.a.e;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public final class l extends b {
    public l(int i) {
        super((byte) 7);
        this.f15a = i;
    }

    public l(o oVar) {
        super((byte) 7);
        this.f15a = oVar.i();
    }

    public l(byte[] bArr) {
        super((byte) 7);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f15a = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte[] d_() {
        return k();
    }
}
