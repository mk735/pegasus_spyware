package org.apache.commons.httpclient;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: WireLogOutputStream */
final class g extends FilterOutputStream {
    private OutputStream a;
    private e b;

    public g(OutputStream out, e wire) {
        super(out);
        this.a = out;
        this.b = wire;
    }

    @Override // java.io.OutputStream, java.io.FilterOutputStream
    public final void write(byte[] b2, int off, int len) throws IOException {
        this.a.write(b2, off, len);
        this.b.a(b2, off, len);
    }

    @Override // java.io.OutputStream, java.io.FilterOutputStream
    public final void write(int b2) throws IOException {
        this.a.write(b2);
        this.b.a(b2);
    }

    @Override // java.io.OutputStream, java.io.FilterOutputStream
    public final void write(byte[] b2) throws IOException {
        this.a.write(b2);
        this.b.a(b2);
    }
}
