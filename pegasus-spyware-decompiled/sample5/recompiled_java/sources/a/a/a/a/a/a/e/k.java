package a.a.a.a.a.a.e;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public final class k extends b {
    public k(o oVar) {
        super((byte) 4);
        this.f15a = oVar.i();
    }

    public k(byte[] bArr) {
        super((byte) 4);
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
