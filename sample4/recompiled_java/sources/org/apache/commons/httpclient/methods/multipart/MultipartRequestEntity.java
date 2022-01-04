package org.apache.commons.httpclient.methods.multipart;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;
import org.apache.commons.httpclient.methods.MultipartPostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;
import org.apache.commons.httpclient.params.HttpMethodParams;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class MultipartRequestEntity implements RequestEntity {
    static Class a;
    private static final Log b;
    private static byte[] c = EncodingUtil.getAsciiBytes("-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
    private byte[] d;
    private HttpMethodParams e;
    protected Part[] parts;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.methods.multipart.MultipartRequestEntity");
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

    public MultipartRequestEntity(Part[] parts2, HttpMethodParams params) {
        if (parts2 == null) {
            throw new IllegalArgumentException("parts cannot be null");
        } else if (params == null) {
            throw new IllegalArgumentException("params cannot be null");
        } else {
            this.parts = parts2;
            this.e = params;
        }
    }

    /* access modifiers changed from: protected */
    public byte[] getMultipartBoundary() {
        if (this.d == null) {
            String temp = (String) this.e.getParameter(HttpMethodParams.MULTIPART_BOUNDARY);
            if (temp != null) {
                this.d = EncodingUtil.getAsciiBytes(temp);
            } else {
                Random random = new Random();
                byte[] bArr = new byte[(random.nextInt(11) + 30)];
                for (int i = 0; i < bArr.length; i++) {
                    bArr[i] = c[random.nextInt(c.length)];
                }
                this.d = bArr;
            }
        }
        return this.d;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public boolean isRepeatable() {
        for (int i = 0; i < this.parts.length; i++) {
            if (!this.parts[i].isRepeatable()) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public void writeRequest(OutputStream out) throws IOException {
        Part.sendParts(out, this.parts, getMultipartBoundary());
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public long getContentLength() {
        try {
            return Part.getLengthOfParts(this.parts, getMultipartBoundary());
        } catch (Exception e2) {
            b.error("An exception occurred while getting the length of the parts", e2);
            return 0;
        }
    }

    @Override // org.apache.commons.httpclient.methods.RequestEntity
    public String getContentType() {
        StringBuffer buffer = new StringBuffer(MultipartPostMethod.MULTIPART_FORM_CONTENT_TYPE);
        buffer.append("; boundary=");
        buffer.append(EncodingUtil.getAsciiString(getMultipartBoundary()));
        return buffer.toString();
    }
}
