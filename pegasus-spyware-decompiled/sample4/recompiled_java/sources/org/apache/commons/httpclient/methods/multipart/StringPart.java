package org.apache.commons.httpclient.methods.multipart;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class StringPart extends PartBase {
    public static final String DEFAULT_CHARSET = "US-ASCII";
    public static final String DEFAULT_CONTENT_TYPE = "text/plain";
    public static final String DEFAULT_TRANSFER_ENCODING = "8bit";
    static Class a;
    private static final Log c;
    private byte[] d;
    private String e;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.methods.multipart.StringPart");
            a = cls;
        } else {
            cls = a;
        }
        c = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public StringPart(String name, String value, String charset) {
        super(name, "text/plain", charset == null ? "US-ASCII" : charset, "8bit");
        if (value == null) {
            throw new IllegalArgumentException("Value may not be null");
        } else if (value.indexOf(0) != -1) {
            throw new IllegalArgumentException("NULs may not be present in string parts");
        } else {
            this.e = value;
        }
    }

    public StringPart(String name, String value) {
        this(name, value, null);
    }

    private byte[] a() {
        if (this.d == null) {
            this.d = EncodingUtil.getBytes(this.e, getCharSet());
        }
        return this.d;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.multipart.Part
    public void sendData(OutputStream out) throws IOException {
        c.trace("enter sendData(OutputStream)");
        out.write(a());
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.multipart.Part
    public long lengthOfData() throws IOException {
        c.trace("enter lengthOfData()");
        return (long) a().length;
    }

    @Override // org.apache.commons.httpclient.methods.multipart.PartBase
    public void setCharSet(String charSet) {
        super.setCharSet(charSet);
        this.d = null;
    }
}
