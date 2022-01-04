package org.apache.commons.httpclient.methods.multipart;

public abstract class PartBase extends Part {
    private String a;
    private String c;
    private String d;
    private String e;

    public PartBase(String name, String contentType, String charSet, String transferEncoding) {
        if (name == null) {
            throw new IllegalArgumentException("Name must not be null");
        }
        this.a = name;
        this.c = contentType;
        this.d = charSet;
        this.e = transferEncoding;
    }

    @Override // org.apache.commons.httpclient.methods.multipart.Part
    public String getName() {
        return this.a;
    }

    @Override // org.apache.commons.httpclient.methods.multipart.Part
    public String getContentType() {
        return this.c;
    }

    @Override // org.apache.commons.httpclient.methods.multipart.Part
    public String getCharSet() {
        return this.d;
    }

    @Override // org.apache.commons.httpclient.methods.multipart.Part
    public String getTransferEncoding() {
        return this.e;
    }

    public void setCharSet(String charSet) {
        this.d = charSet;
    }

    public void setContentType(String contentType) {
        this.c = contentType;
    }

    public void setName(String name) {
        if (name == null) {
            throw new IllegalArgumentException("Name must not be null");
        }
        this.a = name;
    }

    public void setTransferEncoding(String transferEncoding) {
        this.e = transferEncoding;
    }
}
