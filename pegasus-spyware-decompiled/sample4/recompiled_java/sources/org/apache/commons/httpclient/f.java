package org.apache.commons.httpclient;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* access modifiers changed from: package-private */
/* compiled from: WireLogInputStream */
public final class f extends FilterInputStream {
    private InputStream a;
    private e b;

    public f(InputStream in, e wire) {
        super(in);
        this.a = in;
        this.b = wire;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] b2, int off, int len) throws IOException {
        int l = this.a.read(b2, off, len);
        if (l > 0) {
            this.b.b(b2, off, l);
        }
        return l;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int l = this.a.read();
        if (l > 0) {
            this.b.b(l);
        }
        return l;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] b2) throws IOException {
        int l = this.a.read(b2);
        if (l > 0) {
            this.b.b(b2, 0, l);
        }
        return l;
    }
}
