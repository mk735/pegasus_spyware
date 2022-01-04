package org.apache.commons.httpclient;

import org.apache.commons.httpclient.util.LangUtils;

public class NTCredentials extends UsernamePasswordCredentials {
    private String a;
    private String b;

    public NTCredentials() {
    }

    public NTCredentials(String userName, String password, String host, String domain) {
        super(userName, password);
        if (domain == null) {
            throw new IllegalArgumentException("Domain may not be null");
        }
        this.a = domain;
        if (host == null) {
            throw new IllegalArgumentException("Host may not be null");
        }
        this.b = host;
    }

    public void setDomain(String domain) {
        if (domain == null) {
            throw new IllegalArgumentException("Domain may not be null");
        }
        this.a = domain;
    }

    public String getDomain() {
        return this.a;
    }

    public void setHost(String host) {
        if (host == null) {
            throw new IllegalArgumentException("Host may not be null");
        }
        this.b = host;
    }

    public String getHost() {
        return this.b;
    }

    @Override // org.apache.commons.httpclient.UsernamePasswordCredentials
    public String toString() {
        StringBuffer sbResult = new StringBuffer(super.toString());
        sbResult.append("@");
        sbResult.append(this.b);
        sbResult.append(".");
        sbResult.append(this.a);
        return sbResult.toString();
    }

    @Override // org.apache.commons.httpclient.UsernamePasswordCredentials
    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(super.hashCode(), this.b), this.a);
    }

    @Override // org.apache.commons.httpclient.UsernamePasswordCredentials
    public boolean equals(Object o) {
        boolean z = true;
        if (o == null) {
            return false;
        }
        if (this == o) {
            return true;
        }
        if (!super.equals(o) || !(o instanceof NTCredentials)) {
            return false;
        }
        NTCredentials that = (NTCredentials) o;
        if (!LangUtils.equals(this.a, that.a) || !LangUtils.equals(this.b, that.b)) {
            z = false;
        }
        return z;
    }
}
