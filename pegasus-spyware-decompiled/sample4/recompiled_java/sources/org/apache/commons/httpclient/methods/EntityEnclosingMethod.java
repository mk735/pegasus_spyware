package org.apache.commons.httpclient.methods;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import org.apache.commons.httpclient.ChunkedOutputStream;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpConnection;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpState;
import org.apache.commons.httpclient.HttpVersion;
import org.apache.commons.httpclient.ProtocolException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class EntityEnclosingMethod extends ExpectContinueMethod {
    public static final long CONTENT_LENGTH_AUTO = -2;
    public static final long CONTENT_LENGTH_CHUNKED = -1;
    static Class a;
    private static final Log d;
    private InputStream e = null;
    private String f = null;
    private RequestEntity g;
    private int h = 0;
    private long i = -2;
    private boolean j = false;

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.methods.EntityEnclosingMethod");
            a = cls;
        } else {
            cls = a;
        }
        d = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public EntityEnclosingMethod() {
        setFollowRedirects(false);
    }

    public EntityEnclosingMethod(String uri) {
        super(uri);
        setFollowRedirects(false);
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.ExpectContinueMethod
    public boolean hasRequestContent() {
        d.trace("enter EntityEnclosingMethod.hasRequestContent()");
        return (this.g == null && this.e == null && this.f == null) ? false : true;
    }

    /* access modifiers changed from: protected */
    public void clearRequestBody() {
        d.trace("enter EntityEnclosingMethod.clearRequestBody()");
        this.e = null;
        this.f = null;
        this.g = null;
    }

    /* access modifiers changed from: protected */
    public byte[] generateRequestBody() {
        d.trace("enter EntityEnclosingMethod.renerateRequestBody()");
        return null;
    }

    /* access modifiers changed from: protected */
    public RequestEntity generateRequestEntity() {
        byte[] requestBody = generateRequestBody();
        if (requestBody != null) {
            this.g = new ByteArrayRequestEntity(requestBody);
        } else if (this.e != null) {
            this.g = new InputStreamRequestEntity(this.e, this.i);
            this.e = null;
        } else if (this.f != null) {
            String charset = getRequestCharSet();
            try {
                this.g = new StringRequestEntity(this.f, null, charset);
            } catch (UnsupportedEncodingException e2) {
                if (d.isWarnEnabled()) {
                    d.warn(new StringBuffer().append(charset).append(" not supported").toString());
                }
                try {
                    this.g = new StringRequestEntity(this.f, null, null);
                } catch (UnsupportedEncodingException e3) {
                }
            }
        }
        return this.g;
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public boolean getFollowRedirects() {
        return false;
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public void setFollowRedirects(boolean followRedirects) {
        if (followRedirects) {
            throw new IllegalArgumentException("Entity enclosing requests cannot be redirected without user intervention");
        }
        super.setFollowRedirects(false);
    }

    public void setRequestContentLength(int length) {
        d.trace("enter EntityEnclosingMethod.setRequestContentLength(int)");
        this.i = (long) length;
    }

    @Override // org.apache.commons.httpclient.HttpMethodBase
    public String getRequestCharSet() {
        if (getRequestHeader("Content-Type") != null) {
            return super.getRequestCharSet();
        }
        if (this.g != null) {
            return getContentCharSet(new Header("Content-Type", this.g.getContentType()));
        }
        return super.getRequestCharSet();
    }

    public void setRequestContentLength(long length) {
        d.trace("enter EntityEnclosingMethod.setRequestContentLength(int)");
        this.i = length;
    }

    public void setContentChunked(boolean chunked) {
        this.j = chunked;
    }

    /* access modifiers changed from: protected */
    public long getRequestContentLength() {
        d.trace("enter EntityEnclosingMethod.getRequestContentLength()");
        if (!hasRequestContent()) {
            return 0;
        }
        if (this.j) {
            return -1;
        }
        if (this.g == null) {
            this.g = generateRequestEntity();
        }
        if (this.g != null) {
            return this.g.getContentLength();
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase, org.apache.commons.httpclient.methods.ExpectContinueMethod
    public void addRequestHeaders(HttpState state, HttpConnection conn) throws IOException, HttpException {
        RequestEntity requestEntity;
        d.trace("enter EntityEnclosingMethod.addRequestHeaders(HttpState, HttpConnection)");
        super.addRequestHeaders(state, conn);
        addContentLengthRequestHeader(state, conn);
        if (getRequestHeader("Content-Type") == null && (requestEntity = getRequestEntity()) != null && requestEntity.getContentType() != null) {
            setRequestHeader("Content-Type", requestEntity.getContentType());
        }
    }

    /* access modifiers changed from: protected */
    public void addContentLengthRequestHeader(HttpState state, HttpConnection conn) throws IOException, HttpException {
        d.trace("enter EntityEnclosingMethod.addContentLengthRequestHeader(HttpState, HttpConnection)");
        if (getRequestHeader("content-length") == null && getRequestHeader("Transfer-Encoding") == null) {
            long len = getRequestContentLength();
            if (len >= 0) {
                addRequestHeader("Content-Length", String.valueOf(len));
            } else if (getEffectiveVersion().greaterEquals(HttpVersion.HTTP_1_1)) {
                addRequestHeader("Transfer-Encoding", "chunked");
            } else {
                throw new ProtocolException(new StringBuffer().append(getEffectiveVersion()).append(" does not support chunk encoding").toString());
            }
        }
    }

    public void setRequestBody(InputStream body) {
        d.trace("enter EntityEnclosingMethod.setRequestBody(InputStream)");
        clearRequestBody();
        this.e = body;
    }

    public void setRequestBody(String body) {
        d.trace("enter EntityEnclosingMethod.setRequestBody(String)");
        clearRequestBody();
        this.f = body;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase
    public boolean writeRequestBody(HttpState state, HttpConnection conn) throws IOException, HttpException {
        d.trace("enter EntityEnclosingMethod.writeRequestBody(HttpState, HttpConnection)");
        if (!hasRequestContent()) {
            d.debug("Request body has not been specified");
        } else {
            if (this.g == null) {
                this.g = generateRequestEntity();
            }
            if (this.g == null) {
                d.debug("Request body is empty");
            } else {
                long contentLength = getRequestContentLength();
                if (this.h <= 0 || this.g.isRepeatable()) {
                    this.h++;
                    OutputStream outstream = conn.getRequestOutputStream();
                    if (contentLength < 0) {
                        outstream = new ChunkedOutputStream(outstream);
                    }
                    this.g.writeRequest(outstream);
                    if (outstream instanceof ChunkedOutputStream) {
                        ((ChunkedOutputStream) outstream).finish();
                    }
                    outstream.flush();
                    d.debug("Request body sent");
                } else {
                    throw new ProtocolException("Unbuffered entity enclosing request can not be repeated.");
                }
            }
        }
        return true;
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public void recycle() {
        d.trace("enter EntityEnclosingMethod.recycle()");
        clearRequestBody();
        this.i = -2;
        this.h = 0;
        this.j = false;
        super.recycle();
    }

    public RequestEntity getRequestEntity() {
        return generateRequestEntity();
    }

    public void setRequestEntity(RequestEntity requestEntity) {
        clearRequestBody();
        this.g = requestEntity;
    }
}
