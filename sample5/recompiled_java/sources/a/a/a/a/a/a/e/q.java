package a.a.a.a.a.a.e;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;

public final class q extends b {
    private int[] c;

    public q(byte[] bArr) {
        super((byte) 9);
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        this.f15a = dataInputStream.readUnsignedShort();
        int i = 0;
        this.c = new int[(bArr.length - 2)];
        for (int read = dataInputStream.read(); read != -1; read = dataInputStream.read()) {
            this.c[i] = read;
            i++;
        }
        dataInputStream.close();
    }

    /* access modifiers changed from: protected */
    @Override // a.a.a.a.a.a.e.u
    public final byte[] d_() {
        return new byte[0];
    }
}
