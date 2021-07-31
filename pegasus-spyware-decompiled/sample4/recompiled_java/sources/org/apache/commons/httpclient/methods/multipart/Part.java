package org.apache.commons.httpclient.methods.multipart;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.httpclient.util.EncodingUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class Part {
    protected static final String BOUNDARY = "----------------314159265358979323846";
    protected static final byte[] BOUNDARY_BYTES = EncodingUtil.getAsciiBytes(BOUNDARY);
    protected static final String CHARSET = "; charset=";
    protected static final byte[] CHARSET_BYTES = EncodingUtil.getAsciiBytes(CHARSET);
    protected static final String CONTENT_DISPOSITION = "Content-Disposition: form-data; name=";
    protected static final byte[] CONTENT_DISPOSITION_BYTES = EncodingUtil.getAsciiBytes(CONTENT_DISPOSITION);
    protected static final String CONTENT_TRANSFER_ENCODING = "Content-Transfer-Encoding: ";
    protected static final byte[] CONTENT_TRANSFER_ENCODING_BYTES = EncodingUtil.getAsciiBytes(CONTENT_TRANSFER_ENCODING);
    protected static final String CONTENT_TYPE = "Content-Type: ";
    protected static final byte[] CONTENT_TYPE_BYTES = EncodingUtil.getAsciiBytes(CONTENT_TYPE);
    protected static final String CRLF = "\r\n";
    protected static final byte[] CRLF_BYTES = EncodingUtil.getAsciiBytes(CRLF);
    protected static final String EXTRA = "--";
    protected static final byte[] EXTRA_BYTES = EncodingUtil.getAsciiBytes(EXTRA);
    protected static final String QUOTE = "\"";
    protected static final byte[] QUOTE_BYTES = EncodingUtil.getAsciiBytes("\"");
    private static final Log a;
    static Class b;
    private static final byte[] c = BOUNDARY_BYTES;
    private byte[] d;

    public abstract String getCharSet();

    public abstract String getContentType();

    public abstract String getName();

    public abstract String getTransferEncoding();

    /* access modifiers changed from: protected */
    public abstract long lengthOfData() throws IOException;

    /* access modifiers changed from: protected */
    public abstract void sendData(OutputStream outputStream) throws IOException;

    static {
        Class cls;
        if (b == null) {
            cls = a("org.apache.commons.httpclient.methods.multipart.Part");
            b = cls;
        } else {
            cls = b;
        }
        a = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public static String getBoundary() {
        return BOUNDARY;
    }

    /* access modifiers changed from: protected */
    public byte[] getPartBoundary() {
        if (this.d == null) {
            return c;
        }
        return this.d;
    }

    public boolean isRepeatable() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void sendStart(OutputStream out) throws IOException {
        a.trace("enter sendStart(OutputStream out)");
        out.write(EXTRA_BYTES);
        out.write(getPartBoundary());
        out.write(CRLF_BYTES);
    }

    /* access modifiers changed from: protected */
    public void sendDispositionHeader(OutputStream out) throws IOException {
        a.trace("enter sendDispositionHeader(OutputStream out)");
        out.write(CONTENT_DISPOSITION_BYTES);
        out.write(QUOTE_BYTES);
        out.write(EncodingUtil.getAsciiBytes(getName()));
        out.write(QUOTE_BYTES);
    }

    /* access modifiers changed from: protected */
    public void sendContentTypeHeader(OutputStream out) throws IOException {
        a.trace("enter sendContentTypeHeader(OutputStream out)");
        String contentType = getContentType();
        if (contentType != null) {
            out.write(CRLF_BYTES);
            out.write(CONTENT_TYPE_BYTES);
            out.write(EncodingUtil.getAsciiBytes(contentType));
            String charSet = getCharSet();
            if (charSet != null) {
                out.write(CHARSET_BYTES);
                out.write(EncodingUtil.getAsciiBytes(charSet));
            }
        }
    }

    /* access modifiers changed from: protected */
    public void sendTransferEncodingHeader(OutputStream out) throws IOException {
        a.trace("enter sendTransferEncodingHeader(OutputStream out)");
        String transferEncoding = getTransferEncoding();
        if (transferEncoding != null) {
            out.write(CRLF_BYTES);
            out.write(CONTENT_TRANSFER_ENCODING_BYTES);
            out.write(EncodingUtil.getAsciiBytes(transferEncoding));
        }
    }

    /* access modifiers changed from: protected */
    public void sendEndOfHeader(OutputStream out) throws IOException {
        a.trace("enter sendEndOfHeader(OutputStream out)");
        out.write(CRLF_BYTES);
        out.write(CRLF_BYTES);
    }

    /* access modifiers changed from: protected */
    public void sendEnd(OutputStream out) throws IOException {
        a.trace("enter sendEnd(OutputStream out)");
        out.write(CRLF_BYTES);
    }

    public void send(OutputStream out) throws IOException {
        a.trace("enter send(OutputStream out)");
        sendStart(out);
        sendDispositionHeader(out);
        sendContentTypeHeader(out);
        sendTransferEncodingHeader(out);
        sendEndOfHeader(out);
        sendData(out);
        sendEnd(out);
    }

    public long length() throws IOException {
        a.trace("enter length()");
        if (lengthOfData() < 0) {
            return -1;
        }
        ByteArrayOutputStream overhead = new ByteArrayOutputStream();
        sendStart(overhead);
        sendDispositionHeader(overhead);
        sendContentTypeHeader(overhead);
        sendTransferEncodingHeader(overhead);
        sendEndOfHeader(overhead);
        sendEnd(overhead);
        return ((long) overhead.size()) + lengthOfData();
    }

    public String toString() {
        return getName();
    }

    public static void sendParts(OutputStream out, Part[] parts) throws IOException {
        sendParts(out, parts, c);
    }

    public static void sendParts(OutputStream out, Part[] parts, byte[] partBoundary) throws IOException {
        if (parts == null) {
            throw new IllegalArgumentException("Parts may not be null");
        } else if (partBoundary == null || partBoundary.length == 0) {
            throw new IllegalArgumentException("partBoundary may not be empty");
        } else {
            for (int i = 0; i < parts.length; i++) {
                parts[i].d = partBoundary;
                parts[i].send(out);
            }
            out.write(EXTRA_BYTES);
            out.write(partBoundary);
            out.write(EXTRA_BYTES);
            out.write(CRLF_BYTES);
        }
    }

    public static long getLengthOfParts(Part[] parts) throws IOException {
        return getLengthOfParts(parts, c);
    }

    public static long getLengthOfParts(Part[] parts, byte[] partBoundary) throws IOException {
        a.trace("getLengthOfParts(Parts[])");
        if (parts == null) {
            throw new IllegalArgumentException("Parts may not be null");
        }
        long total = 0;
        for (int i = 0; i < parts.length; i++) {
            parts[i].d = partBoundary;
            long l = parts[i].length();
            if (l < 0) {
                return -1;
            }
            total += l;
        }
        return total + ((long) EXTRA_BYTES.length) + ((long) partBoundary.length) + ((long) EXTRA_BYTES.length) + ((long) CRLF_BYTES.length);
    }
}
