package org.apache.commons.httpclient.methods.multipart;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class FilePart extends PartBase {
    public static final String DEFAULT_CHARSET = "ISO-8859-1";
    public static final String DEFAULT_CONTENT_TYPE = "application/octet-stream";
    public static final String DEFAULT_TRANSFER_ENCODING = "binary";
    protected static final String FILE_NAME = "; filename=";
    static Class a;
    private static final Log c;
    private static final byte[] d = EncodingUtil.getAsciiBytes(FILE_NAME);
    private PartSource e;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.methods.multipart.FilePart");
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
    public FilePart(String name, PartSource partSource, String contentType, String charset) {
        super(name, contentType == null ? DEFAULT_CONTENT_TYPE : contentType, charset == null ? "ISO-8859-1" : charset, "binary");
        if (partSource == null) {
            throw new IllegalArgumentException("Source may not be null");
        }
        this.e = partSource;
    }

    public FilePart(String name, PartSource partSource) {
        this(name, partSource, (String) null, (String) null);
    }

    public FilePart(String name, File file) throws FileNotFoundException {
        this(name, new FilePartSource(file), (String) null, (String) null);
    }

    public FilePart(String name, File file, String contentType, String charset) throws FileNotFoundException {
        this(name, new FilePartSource(file), contentType, charset);
    }

    public FilePart(String name, String fileName, File file) throws FileNotFoundException {
        this(name, new FilePartSource(fileName, file), (String) null, (String) null);
    }

    public FilePart(String name, String fileName, File file, String contentType, String charset) throws FileNotFoundException {
        this(name, new FilePartSource(fileName, file), contentType, charset);
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.multipart.Part
    public void sendDispositionHeader(OutputStream out) throws IOException {
        c.trace("enter sendDispositionHeader(OutputStream out)");
        super.sendDispositionHeader(out);
        String filename = this.e.getFileName();
        if (filename != null) {
            out.write(d);
            out.write(QUOTE_BYTES);
            out.write(EncodingUtil.getAsciiBytes(filename));
            out.write(QUOTE_BYTES);
        }
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.multipart.Part
    public void sendData(OutputStream out) throws IOException {
        c.trace("enter sendData(OutputStream out)");
        if (lengthOfData() == 0) {
            c.debug("No data to send.");
            return;
        }
        byte[] tmp = new byte[4096];
        InputStream instream = this.e.createInputStream();
        while (true) {
            try {
                int len = instream.read(tmp);
                if (len >= 0) {
                    out.write(tmp, 0, len);
                } else {
                    return;
                }
            } finally {
                instream.close();
            }
        }
    }

    /* access modifiers changed from: protected */
    public PartSource getSource() {
        c.trace("enter getSource()");
        return this.e;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.multipart.Part
    public long lengthOfData() throws IOException {
        c.trace("enter lengthOfData()");
        return this.e.getLength();
    }
}
