package org.apache.commons.httpclient;

import com.tencent.tmsecure.module.wupsession.WupConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.httpclient.util.ExceptionUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ChunkedInputStream extends InputStream {
    static Class a;
    private static final Log i;
    private InputStream b;
    private int c;
    private int d;
    private boolean e;
    private boolean f;
    private boolean g;
    private HttpMethod h;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.ChunkedInputStream");
            a = cls;
        } else {
            cls = a;
        }
        i = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public ChunkedInputStream(InputStream in, HttpMethod method) throws IOException {
        this.e = true;
        this.f = false;
        this.g = false;
        this.h = null;
        if (in == null) {
            throw new IllegalArgumentException("InputStream parameter may not be null");
        }
        this.b = in;
        this.h = method;
        this.d = 0;
    }

    public ChunkedInputStream(InputStream in) throws IOException {
        this(in, null);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.g) {
            throw new IOException("Attempted read from closed stream.");
        } else if (this.f) {
            return -1;
        } else {
            if (this.d >= this.c) {
                a();
                if (this.f) {
                    return -1;
                }
            }
            this.d++;
            return this.b.read();
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] b2, int off, int len) throws IOException {
        if (this.g) {
            throw new IOException("Attempted read from closed stream.");
        } else if (this.f) {
            return -1;
        } else {
            if (this.d >= this.c) {
                a();
                if (this.f) {
                    return -1;
                }
            }
            int count = this.b.read(b2, off, Math.min(len, this.c - this.d));
            this.d += count;
            return count;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] b2) throws IOException {
        return read(b2, 0, b2.length);
    }

    private void a() throws IOException {
        if (!this.e) {
            int read = this.b.read();
            int read2 = this.b.read();
            if (!(read == 13 && read2 == 10)) {
                throw new IOException(new StringBuffer().append("CRLF expected at end of chunk: ").append(read).append(CookieSpec.PATH_DELIM).append(read2).toString());
            }
        }
        this.c = b(this.b);
        this.e = false;
        this.d = 0;
        if (this.c == 0) {
            this.f = true;
            b();
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    private static int b(InputStream in) throws IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        int state = 0;
        while (state != -1) {
            int b2 = in.read();
            if (b2 == -1) {
                throw new IOException("chunked stream ended unexpectedly");
            }
            switch (state) {
                case 0:
                    switch (b2) {
                        case 13:
                            state = 1;
                            break;
                        case WupConfig.RQ_GET_TRAFFIC_CMD:
                            state = 2;
                        default:
                            baos.write(b2);
                            break;
                    }
                case 1:
                    if (b2 == 10) {
                        state = -1;
                        break;
                    } else {
                        throw new IOException("Protocol violation: Unexpected single newline character in chunk size");
                    }
                case 2:
                    switch (b2) {
                        case WupConfig.RQ_GET_TRAFFIC_CMD:
                            state = 0;
                            baos.write(b2);
                            break;
                        case 92:
                            baos.write(in.read());
                            break;
                        default:
                            baos.write(b2);
                            break;
                    }
                default:
                    throw new RuntimeException("assertion failed");
            }
        }
        String dataString = EncodingUtil.getAsciiString(baos.toByteArray());
        int separator = dataString.indexOf(59);
        String dataString2 = separator > 0 ? dataString.substring(0, separator).trim() : dataString.trim();
        try {
            return Integer.parseInt(dataString2.trim(), 16);
        } catch (NumberFormatException e2) {
            throw new IOException(new StringBuffer().append("Bad chunk size: ").append(dataString2).toString());
        }
    }

    private void b() throws IOException {
        String charset = "US-ASCII";
        try {
            if (this.h != null) {
                charset = this.h.getParams().getHttpElementCharset();
            }
            Header[] footers = HttpParser.parseHeaders(this.b, charset);
            if (this.h != null) {
                for (Header header : footers) {
                    this.h.addResponseFooter(header);
                }
            }
        } catch (HttpException e2) {
            i.error("Error parsing trailer headers", e2);
            IOException ioe = new IOException(e2.getMessage());
            ExceptionUtil.initCause(ioe, e2);
            throw ioe;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.io.InputStream
    public void close() throws IOException {
        if (!this.g) {
            try {
                if (!this.f) {
                    a(this);
                }
            } finally {
                this.f = true;
                this.g = true;
            }
        }
    }

    static void a(InputStream inStream) throws IOException {
        do {
        } while (inStream.read(new byte[1024]) >= 0);
    }
}
