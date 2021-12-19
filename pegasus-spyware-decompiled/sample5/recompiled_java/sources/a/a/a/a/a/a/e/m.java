package a.a.a.a.a.a.e;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public final class m extends b {
    public m(o oVar) {
        super((byte) 5);
        this.f15a = oVar.i();
    }

    public m(byte[] bArr) {
        super((byte) 5);
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
