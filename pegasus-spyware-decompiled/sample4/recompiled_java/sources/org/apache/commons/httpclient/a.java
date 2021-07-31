package org.apache.commons.httpclient;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* access modifiers changed from: package-private */
/* compiled from: AutoCloseInputStream */
public final class a extends FilterInputStream {
    private boolean a = true;
    private boolean b = false;
    private d c = null;

    public a(InputStream in, d watcher) {
        super(in);
        this.c = watcher;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (!a()) {
            return -1;
        }
        int l = super.read();
        a(l);
        return l;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] b2, int off, int len) throws IOException {
        if (!a()) {
            return -1;
        }
        int l = super.read(b2, off, len);
        a(l);
        return l;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] b2) throws IOException {
        if (!a()) {
            return -1;
        }
        int l = super.read(b2);
        a(l);
        return l;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        if (a()) {
            return super.available();
        }
        return 0;
    }

    @Override // java.io.FilterInputStream, java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public final void close() throws IOException {
        if (!this.b) {
            this.b = true;
            b();
        }
    }

    private void a(int readResult) throws IOException {
        if (readResult == -1) {
            b();
        }
    }

    private boolean a() throws IOException {
        if (this.a || !this.b) {
            return this.a;
        }
        throw new IOException("Attempted read on closed stream.");
    }

    private void b() throws IOException {
        if (this.a) {
            super.close();
            this.a = false;
            if (this.c != null) {
                this.c.a();
            }
        }
    }
}
