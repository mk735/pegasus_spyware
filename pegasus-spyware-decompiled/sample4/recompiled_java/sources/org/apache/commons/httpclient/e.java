package org.apache.commons.httpclient;

import com.lenovo.lps.sus.c.c;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* access modifiers changed from: package-private */
/* compiled from: Wire */
public final class e {
    public static e a = new e(LogFactory.getLog("httpclient.wire.header"));
    public static e b = new e(LogFactory.getLog("httpclient.wire.content"));
    private Log c;

    private e(Log log) {
        this.c = log;
    }

    private void a(String header, InputStream instream) throws IOException {
        StringBuffer buffer = new StringBuffer();
        while (true) {
            int ch = instream.read();
            if (ch == -1) {
                break;
            } else if (ch == 13) {
                buffer.append("[\\r]");
            } else if (ch == 10) {
                buffer.append("[\\n]\"");
                buffer.insert(0, c.M);
                buffer.insert(0, header);
                this.c.debug(buffer.toString());
                buffer.setLength(0);
            } else if (ch < 32 || ch > 127) {
                buffer.append("[0x");
                buffer.append(Integer.toHexString(ch));
                buffer.append("]");
            } else {
                buffer.append((char) ch);
            }
        }
        if (buffer.length() > 0) {
            buffer.append(c.M);
            buffer.insert(0, c.M);
            buffer.insert(0, header);
            this.c.debug(buffer.toString());
        }
    }

    public final boolean a() {
        return this.c.isDebugEnabled();
    }

    public final void a(byte[] b2, int off, int len) throws IOException {
        if (b2 == null) {
            throw new IllegalArgumentException("Output may not be null");
        }
        a(">> ", new ByteArrayInputStream(b2, off, len));
    }

    public final void b(byte[] b2, int off, int len) throws IOException {
        if (b2 == null) {
            throw new IllegalArgumentException("Input may not be null");
        }
        a("<< ", new ByteArrayInputStream(b2, off, len));
    }

    public final void a(byte[] b2) throws IOException {
        if (b2 == null) {
            throw new IllegalArgumentException("Output may not be null");
        }
        a(">> ", new ByteArrayInputStream(b2));
    }

    private void b(byte[] b2) throws IOException {
        if (b2 == null) {
            throw new IllegalArgumentException("Input may not be null");
        }
        a("<< ", new ByteArrayInputStream(b2));
    }

    public final void a(int b2) throws IOException {
        a(new byte[]{(byte) b2});
    }

    public final void b(int b2) throws IOException {
        b(new byte[]{(byte) b2});
    }

    public final void a(String s) throws IOException {
        if (s == null) {
            throw new IllegalArgumentException("Output may not be null");
        }
        a(s.getBytes());
    }

    public final void b(String s) throws IOException {
        if (s == null) {
            throw new IllegalArgumentException("Input may not be null");
        }
        b(s.getBytes());
    }
}
