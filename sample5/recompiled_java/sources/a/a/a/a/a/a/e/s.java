package a.a.a.a.a.a.e;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public final class s extends b {
    public s(byte[] bArr) {
        super((byte) 11);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f15a = dataInputStream.readUnsignedShort();
        dataInputStream.close();
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte[] d_() {
        return new byte[0];
    }
}
