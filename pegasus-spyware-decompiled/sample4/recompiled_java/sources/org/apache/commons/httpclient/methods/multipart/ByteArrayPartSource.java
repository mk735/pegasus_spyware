package org.apache.commons.httpclient.methods.multipart;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public class ByteArrayPartSource implements PartSource {
    private String a;
    private byte[] b;

    public ByteArrayPartSource(String fileName, byte[] bytes) {
        this.a = fileName;
        this.b = bytes;
    }

    @Override // org.apache.commons.httpclient.methods.multipart.PartSource
    public long getLength() {
        return (long) this.b.length;
    }

    @Override // org.apache.commons.httpclient.methods.multipart.PartSource
    public String getFileName() {
        return this.a;
    }

    @Override // org.apache.commons.httpclient.methods.multipart.PartSource
    public InputStream createInputStream() throws IOException {
        return new ByteArrayInputStream(this.b);
    }
}
