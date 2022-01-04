package org.apache.commons.httpclient;

import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.httpclient.util.URIUtil;

public class HttpsURL extends HttpURL {
    public static final int DEFAULT_PORT = 443;
    public static final char[] DEFAULT_SCHEME = {'h', 't', 't', 'p', 's'};
    public static final int _default_port = 443;
    public static final char[] _default_scheme = DEFAULT_SCHEME;

    protected HttpsURL() {
    }

    public HttpsURL(char[] escaped, String charset) throws URIException, NullPointerException {
        this.protocolCharset = charset;
        parseUriReference(new String(escaped), true);
        checkValid();
    }

    public HttpsURL(char[] escaped) throws URIException, NullPointerException {
        parseUriReference(new String(escaped), true);
        checkValid();
    }

    public HttpsURL(String original, String charset) throws URIException {
        this.protocolCharset = charset;
        parseUriReference(original, false);
        checkValid();
    }

    public HttpsURL(String original) throws URIException {
        parseUriReference(original, false);
        checkValid();
    }

    public HttpsURL(String host, int port, String path) throws URIException {
        this((String) null, host, port, path, (String) null, (String) null);
    }

    public HttpsURL(String host, int port, String path, String query) throws URIException {
        this((String) null, host, port, path, query, (String) null);
    }

    public HttpsURL(String user, String password, String host) throws URIException {
        this(user, password, host, -1, null, null, null);
    }

    public HttpsURL(String user, String password, String host, int port) throws URIException {
        this(user, password, host, port, null, null, null);
    }

    public HttpsURL(String user, String password, String host, int port, String path) throws URIException {
        this(user, password, host, port, path, null, null);
    }

    public HttpsURL(String user, String password, String host, int port, String path, String query) throws URIException {
        this(user, password, host, port, path, query, null);
    }

    public HttpsURL(String host, String path, String query, String fragment) throws URIException {
        this((String) null, host, -1, path, query, fragment);
    }

    public HttpsURL(String userinfo, String host, String path, String query, String fragment) throws URIException {
        this(userinfo, host, -1, path, query, fragment);
    }

    public HttpsURL(String userinfo, String host, int port, String path) throws URIException {
        this(userinfo, host, port, path, (String) null, (String) null);
    }

    public HttpsURL(String userinfo, String host, int port, String path, String query) throws URIException {
        this(userinfo, host, port, path, query, (String) null);
    }

    public HttpsURL(String userinfo, String host, int port, String path, String query, String fragment) throws URIException {
        StringBuffer buff = new StringBuffer();
        if (!(userinfo == null && host == null && port == -1)) {
            this._scheme = DEFAULT_SCHEME;
            buff.append(_default_scheme);
            buff.append("://");
            if (userinfo != null) {
                buff.append(userinfo);
                buff.append('@');
            }
            if (host != null) {
                buff.append(URIUtil.encode(host, URI.allowed_host));
                if (!(port == -1 && port == 443)) {
                    buff.append(':');
                    buff.append(port);
                }
            }
        }
        if (path != null) {
            if (scheme == null || path.startsWith(CookieSpec.PATH_DELIM)) {
                buff.append(URIUtil.encode(path, URI.allowed_abs_path));
            } else {
                throw new URIException(1, "abs_path requested");
            }
        }
        if (query != null) {
            buff.append('?');
            buff.append(URIUtil.encode(query, URI.allowed_query));
        }
        if (fragment != null) {
            buff.append('#');
            buff.append(URIUtil.encode(fragment, URI.allowed_fragment));
        }
        parseUriReference(buff.toString(), true);
        checkValid();
    }

    public HttpsURL(String user, String password, String host, int port, String path, String query, String fragment) throws URIException {
        this(HttpURL.toUserinfo(user, password), host, port, path, query, fragment);
    }

    public HttpsURL(HttpsURL base, String relative) throws URIException {
        this(base, new HttpsURL(relative));
    }

    public HttpsURL(HttpsURL base, HttpsURL relative) throws URIException {
        super(base, relative);
        checkValid();
    }

    @Override // org.apache.commons.httpclient.HttpURL, org.apache.commons.httpclient.URI
    public char[] getRawScheme() {
        if (this._scheme == null) {
            return null;
        }
        return DEFAULT_SCHEME;
    }

    @Override // org.apache.commons.httpclient.HttpURL, org.apache.commons.httpclient.URI
    public String getScheme() {
        if (this._scheme == null) {
            return null;
        }
        return new String(DEFAULT_SCHEME);
    }

    @Override // org.apache.commons.httpclient.HttpURL, org.apache.commons.httpclient.URI
    public int getPort() {
        if (this._port == -1) {
            return 443;
        }
        return this._port;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.HttpURL
    public void checkValid() throws URIException {
        if (!equals(this._scheme, DEFAULT_SCHEME) && this._scheme != null) {
            throw new URIException(1, "wrong class use");
        }
    }
}
