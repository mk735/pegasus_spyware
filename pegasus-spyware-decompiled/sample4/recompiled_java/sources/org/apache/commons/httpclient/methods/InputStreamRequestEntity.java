package org.apache.commons.httpclient.methods;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class InputStreamRequestEntity implements RequestEntity {
    public static final int CONTENT_LENGTH_AUTO = -2;
    static Class a;
    private static final Log b;
    private long c;
    private InputStream d;
    private byte[] e;
    private String f;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.methods.InputStreamRequestEntity");
            a = cls;
        } else {
            cls = a;
        }
        b = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public InputStreamRequestEntity(InputStream content) {
        this(content, (String) null);
    }

    public InputStreamRequestEntity(InputStream content, String contentType) {
        this(content, -2, contentType);
    }

    public InputStreamRequestEntity(InputStream content, long contentLength) {
        this(content, contentLength, null);
    }

    public InputStreamRequestEntity(InputStream content, long contentLength, String contentType) {
        this.e = null;
        if (content == null) {
            throw new IllegalArgumentException("The content cannot be null");
        }
        this.d = content;
        this.c = contentLength;
        this.f = contentType;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public String getContentType() {
        return this.f;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public boolean isRepeatable() {
        return this.e != null;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public void writeRequest(OutputStream out) throws IOException {
        if (this.d != null) {
            byte[] tmp = new byte[4096];
            while (true) {
                int i = this.d.read(tmp);
                if (i >= 0) {
                    out.write(tmp, 0, i);
                } else {
                    return;
                }
            }
        } else if (this.e != null) {
            out.write(this.e);
        } else {
            throw new IllegalStateException("Content must be set before entity is written");
        }
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public long getContentLength() {
        if (this.c == -2 && this.e == null && this.e == null && this.d != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = this.d.read(bArr);
                    if (read < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                this.e = byteArrayOutputStream.toByteArray();
                this.d = null;
                this.c = (long) this.e.length;
            } catch (IOException e2) {
                b.error(e2.getMessage(), e2);
                this.e = null;
                this.d = null;
                this.c = 0;
            }
        }
        return this.c;
    }

    public InputStream getContent() {
        return this.d;
    }
}
