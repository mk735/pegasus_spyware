package org.apache.commons.httpclient.methods;

import java.io.IOException;
import java.io.OutputStream;

public class ByteArrayRequestEntity implements RequestEntity {
    private byte[] a;
    private String b;

    public ByteArrayRequestEntity(byte[] content) {
        this(content, null);
    }

    public ByteArrayRequestEntity(byte[] content, String contentType) {
        if (content == null) {
            throw new IllegalArgumentException("The content cannot be null");
        }
        this.a = content;
        this.b = contentType;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public String getContentType() {
        return this.b;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public void writeRequest(OutputStream out) throws IOException {
        out.write(this.a);
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public long getContentLength() {
        return (long) this.a.length;
    }

    public byte[] getContent() {
        return this.a;
    }
}
