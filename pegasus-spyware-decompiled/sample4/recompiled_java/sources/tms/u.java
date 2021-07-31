package tms;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class u {
    public static int a(byte[] bArr) {
        if (bArr.length != 4) {
            return 0;
        }
        return (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 24);
    }

    public static t a(InputStream inputStream) {
        t tVar = new t();
        byte[] bArr = new byte[4];
        try {
            inputStream.read(bArr);
            tVar.a(a(bArr));
            inputStream.read(bArr);
            tVar.b(a(bArr));
            byte[] bArr2 = new byte[16];
            inputStream.read(bArr2);
            tVar.a(bArr2);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return tVar;
    }

    public static void a(t tVar, OutputStream outputStream) {
        try {
            outputStream.write(a(tVar.a()));
            outputStream.write(a(tVar.b()));
            outputStream.write(tVar.c());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static byte[] a(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }
}
