package org.apache.commons.httpclient.methods;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import org.apache.commons.httpclient.HeaderElement;
import org.apache.commons.httpclient.NameValuePair;

public class StringRequestEntity implements RequestEntity {
    private byte[] a;
    private String b;
    private String c;

    public StringRequestEntity(String content) {
        if (content == null) {
            throw new IllegalArgumentException("The content cannot be null");
        }
        this.c = null;
        this.b = null;
        this.a = content.getBytes();
    }

    public StringRequestEntity(String content, String contentType, String charset) throws UnsupportedEncodingException {
        if (content == null) {
            throw new IllegalArgumentException("The content cannot be null");
        }
        this.c = contentType;
        this.b = charset;
        if (contentType != null) {
            HeaderElement[] values = HeaderElement.parseElements(contentType);
            NameValuePair charsetPair = null;
            int i = 0;
            while (i < values.length && (charsetPair = values[i].getParameterByName("charset")) == null) {
                i++;
            }
            if (charset == null && charsetPair != null) {
                this.b = charsetPair.getValue();
            } else if (charset != null && charsetPair == null) {
                this.c = new StringBuffer().append(contentType).append("; charset=").append(charset).toString();
            }
        }
        if (this.b != null) {
            this.a = content.getBytes(this.b);
        } else {
            this.a = content.getBytes();
        }
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public String getContentType() {
        return this.c;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public boolean isRepeatable() {
        return true;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public void writeRequest(OutputStream out) throws IOException {
        if (out == null) {
            throw new IllegalArgumentException("Output stream may not be null");
        }
        out.write(this.a);
        out.flush();
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public long getContentLength() {
        return (long) this.a.length;
    }

    public String getContent() {
        if (this.b == null) {
            return new String(this.a);
        }
        try {
            return new String(this.a, this.b);
        } catch (UnsupportedEncodingException e) {
            return new String(this.a);
        }
    }

    public String getCharset() {
        return this.b;
    }
}
