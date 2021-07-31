package com.lenovo.lps.sus.a.a.b;

import java.io.IOException;
import java.io.InputStream;

/* access modifiers changed from: package-private */
public final class a extends InputStream {
    private InputStream a;
    private int[] b;
    private int c = 0;
    private boolean d = false;

    public a(InputStream inputStream) {
        this.a = inputStream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public final void close() {
        this.a.close();
    }

    @Override // java.io.InputStream
    public final int read() {
        int i = 1;
        if (this.b == null || this.c == this.b.length) {
            if (this.d) {
                return -1;
            }
            char[] cArr = new char[4];
            int i2 = 0;
            while (true) {
                int read = this.a.read();
                if (read != -1) {
                    char c2 = (char) read;
                    if ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(c2) != -1 || c2 == '=') {
                        cArr[i2] = c2;
                        i2++;
                        continue;
                    } else if (!(c2 == '\r' || c2 == '\n')) {
                        throw new IOException("Bad base64 stream");
                    }
                    if (i2 >= 4) {
                        boolean z = false;
                        for (int i3 = 0; i3 < 4; i3++) {
                            if (cArr[i3] != '=') {
                                if (z) {
                                    throw new IOException("Bad base64 stream");
                                }
                            } else if (!z) {
                                z = true;
                            }
                        }
                        if (cArr[3] != '=') {
                            i = 3;
                        } else if (this.a.read() != -1) {
                            throw new IOException("Bad base64 stream");
                        } else {
                            this.d = true;
                            if (cArr[2] != '=') {
                                i = 2;
                            }
                        }
                        int i4 = 0;
                        for (int i5 = 0; i5 < 4; i5++) {
                            if (cArr[i5] != '=') {
                                i4 |= "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".indexOf(cArr[i5]) << ((3 - i5) * 6);
                            }
                        }
                        this.b = new int[i];
                        for (int i6 = 0; i6 < i; i6++) {
                            this.b[i6] = (i4 >>> ((2 - i6) * 8)) & 255;
                        }
                    }
                } else if (i2 != 0) {
                    throw new IOException("Bad base64 stream");
                } else {
                    this.b = new int[0];
                    this.d = true;
                }
            }
            if (this.b.length == 0) {
                this.b = null;
                return -1;
            }
            this.c = 0;
        }
        int[] iArr = this.b;
        int i7 = this.c;
        this.c = i7 + 1;
        return iArr[i7];
    }
}
