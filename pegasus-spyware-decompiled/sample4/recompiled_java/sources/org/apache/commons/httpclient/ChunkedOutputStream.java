package org.apache.commons.httpclient;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.httpclient.util.EncodingUtil;

public class ChunkedOutputStream extends OutputStream {
    private static final byte[] a = {13, 10};
    private static final byte[] b = a;
    private static final byte[] c = {48};
    private OutputStream d;
    private byte[] e;
    private int f;
    private boolean g;

    public ChunkedOutputStream(OutputStream stream, int bufferSize) throws IOException {
        this.d = null;
        this.f = 0;
        this.g = false;
        this.e = new byte[bufferSize];
        this.d = stream;
    }

    public ChunkedOutputStream(OutputStream stream) throws IOException {
        this(stream, 2048);
    }

    /* access modifiers changed from: protected */
    public void flushCache() throws IOException {
        if (this.f > 0) {
            byte[] chunkHeader = EncodingUtil.getAsciiBytes(new StringBuffer().append(Integer.toHexString(this.f)).append("\r\n").toString());
            this.d.write(chunkHeader, 0, chunkHeader.length);
            this.d.write(this.e, 0, this.f);
            this.d.write(b, 0, b.length);
            this.f = 0;
        }
    }

    /* access modifiers changed from: protected */
    public void flushCacheWithAppend(byte[] bufferToAppend, int off, int len) throws IOException {
        byte[] chunkHeader = EncodingUtil.getAsciiBytes(new StringBuffer().append(Integer.toHexString(this.f + len)).append("\r\n").toString());
        this.d.write(chunkHeader, 0, chunkHeader.length);
        this.d.write(this.e, 0, this.f);
        this.d.write(bufferToAppend, off, len);
        this.d.write(b, 0, b.length);
        this.f = 0;
    }

    /* access modifiers changed from: protected */
    public void writeClosingChunk() throws IOException {
        this.d.write(c, 0, c.length);
        this.d.write(a, 0, a.length);
        this.d.write(b, 0, b.length);
    }

    public void finish() throws IOException {
        if (!this.g) {
            flushCache();
            writeClosingChunk();
            this.g = true;
        }
    }

    @Override // java.io.OutputStream
    public void write(int b2) throws IOException {
        this.e[this.f] = (byte) b2;
        this.f++;
        if (this.f == this.e.length) {
            flushCache();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] b2) throws IOException {
        write(b2, 0, b2.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] src, int off, int len) throws IOException {
        if (len >= this.e.length - this.f) {
            flushCacheWithAppend(src, off, len);
            return;
        }
        System.arraycopy(src, off, this.e, this.f, len);
        this.f += len;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.d.flush();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        finish();
        super.close();
    }
}
