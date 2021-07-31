package org.apache.commons.httpclient;

import java.io.IOException;
import java.io.InputStream;

public class ContentLengthInputStream extends InputStream {
    private long a;
    private long b;
    private boolean c;
    private InputStream d;

    public ContentLengthInputStream(InputStream in, int contentLength) {
        this(in, (long) contentLength);
    }

    public ContentLengthInputStream(InputStream in, long contentLength) {
        this.b = 0;
        this.c = false;
        this.d = null;
        this.d = in;
        this.a = contentLength;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public void close() throws IOException {
        if (!this.c) {
            try {
                ChunkedInputStream.a(this);
            } finally {
                this.c = true;
            }
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.c) {
            throw new IOException("Attempted read from closed stream.");
        } else if (this.b >= this.a) {
            return -1;
        } else {
            this.b++;
            return this.d.read();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] b2, int off, int len) throws IOException {
        if (this.c) {
            throw new IOException("Attempted read from closed stream.");
        } else if (this.b >= this.a) {
            return -1;
        } else {
            if (this.b + ((long) len) > this.a) {
                len = (int) (this.a - this.b);
            }
            int count = this.d.read(b2, off, len);
            this.b += (long) count;
            return count;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] b2) throws IOException {
        return read(b2, 0, b2.length);
    }

    @Override // java.io.InputStream
    public long skip(long n) throws IOException {
        long length = this.d.skip(Math.min(n, this.a - this.b));
        if (length > 0) {
            this.b += length;
        }
        return length;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.c) {
            return 0;
        }
        int avail = this.d.available();
        if (this.b + ((long) avail) > this.a) {
            return (int) (this.a - this.b);
        }
        return avail;
    }
}
