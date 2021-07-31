package org.apache.commons.httpclient.methods;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.httpclient.HttpConnection;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpState;
import org.apache.commons.httpclient.methods.multipart.FilePart;
import org.apache.commons.httpclient.methods.multipart.Part;
import org.apache.commons.httpclient.methods.multipart.StringPart;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class MultipartPostMethod extends ExpectContinueMethod {
    public static final String MULTIPART_FORM_CONTENT_TYPE = "multipart/form-data";
    static Class a;
    private static final Log d;
    private final List e = new ArrayList();

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.methods.MultipartPostMethod");
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

    public MultipartPostMethod() {
    }

    public MultipartPostMethod(String uri) {
        super(uri);
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.methods.ExpectContinueMethod
    public boolean hasRequestContent() {
        return true;
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public String getName() {
        return "POST";
    }

    public void addParameter(String parameterName, String parameterValue) {
        d.trace("enter addParameter(String parameterName, String parameterValue)");
        this.e.add(new StringPart(parameterName, parameterValue));
    }

    public void addParameter(String parameterName, File parameterFile) throws FileNotFoundException {
        d.trace("enter MultipartPostMethod.addParameter(String parameterName, File parameterFile)");
        this.e.add(new FilePart(parameterName, parameterFile));
    }

    public void addParameter(String parameterName, String fileName, File parameterFile) throws FileNotFoundException {
        d.trace("enter MultipartPostMethod.addParameter(String parameterName, String fileName, File parameterFile)");
        this.e.add(new FilePart(parameterName, fileName, parameterFile));
    }

    public void addPart(Part part) {
        d.trace("enter addPart(Part part)");
        this.e.add(part);
    }

    public Part[] getParts() {
        return (Part[]) this.e.toArray(new Part[this.e.size()]);
    }

    /* access modifiers changed from: protected */
    public void addContentLengthRequestHeader(HttpState state, HttpConnection conn) throws IOException, HttpException {
        d.trace("enter EntityEnclosingMethod.addContentLengthRequestHeader(HttpState, HttpConnection)");
        if (getRequestHeader("Content-Length") == null) {
            addRequestHeader("Content-Length", String.valueOf(getRequestContentLength()));
        }
        removeRequestHeader("Transfer-Encoding");
    }

    /* access modifiers changed from: protected */
    public void addContentTypeRequestHeader(HttpState state, HttpConnection conn) throws IOException, HttpException {
        d.trace("enter EntityEnclosingMethod.addContentTypeRequestHeader(HttpState, HttpConnection)");
        if (!this.e.isEmpty()) {
            StringBuffer buffer = new StringBuffer(MULTIPART_FORM_CONTENT_TYPE);
            if (Part.getBoundary() != null) {
                buffer.append("; boundary=");
                buffer.append(Part.getBoundary());
            }
            setRequestHeader("Content-Type", buffer.toString());
        }
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase, org.apache.commons.httpclient.methods.ExpectContinueMethod
    public void addRequestHeaders(HttpState state, HttpConnection conn) throws IOException, HttpException {
        d.trace("enter MultipartPostMethod.addRequestHeaders(HttpState state, HttpConnection conn)");
        super.addRequestHeaders(state, conn);
        addContentLengthRequestHeader(state, conn);
        addContentTypeRequestHeader(state, conn);
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpMethodBase
    public boolean writeRequestBody(HttpState state, HttpConnection conn) throws IOException, HttpException {
        d.trace("enter MultipartPostMethod.writeRequestBody(HttpState state, HttpConnection conn)");
        Part.sendParts(conn.getRequestOutputStream(), getParts());
        return true;
    }

    /* access modifiers changed from: protected */
    public long getRequestContentLength() throws IOException {
        d.trace("enter MultipartPostMethod.getRequestContentLength()");
        return Part.getLengthOfParts(getParts());
    }

    @Override // org.apache.commons.httpclient.HttpMethod, org.apache.commons.httpclient.HttpMethodBase
    public void recycle() {
        d.trace("enter MultipartPostMethod.recycle()");
        super.recycle();
        this.e.clear();
    }
}
