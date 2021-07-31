package org.apache.commons.httpclient;

import com.lenovo.lps.sus.c.c;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.httpclient.util.URIUtil;

public class HttpURL extends URI {
    public static final int DEFAULT_PORT = 80;
    public static final char[] DEFAULT_SCHEME = {'h', 't', 't', 'p'};
    public static final int _default_port = 80;
    public static final char[] _default_scheme = DEFAULT_SCHEME;

    protected HttpURL() {
    }

    public HttpURL(char[] escaped, String charset) throws URIException, NullPointerException {
        this.protocolCharset = charset;
        parseUriReference(new String(escaped), true);
        checkValid();
    }

    public HttpURL(char[] escaped) throws URIException, NullPointerException {
        parseUriReference(new String(escaped), true);
        checkValid();
    }

    public HttpURL(String original, String charset) throws URIException {
        this.protocolCharset = charset;
        parseUriReference(original, false);
        checkValid();
    }

    public HttpURL(String original) throws URIException {
        parseUriReference(original, false);
        checkValid();
    }

    public HttpURL(String host, int port, String path) throws URIException {
        this(null, null, host, port, path, null, null);
    }

    public HttpURL(String host, int port, String path, String query) throws URIException {
        this(null, null, host, port, path, query, null);
    }

    public HttpURL(String user, String password, String host) throws URIException {
        this(user, password, host, -1, null, null, null);
    }

    public HttpURL(String user, String password, String host, int port) throws URIException {
        this(user, password, host, port, null, null, null);
    }

    public HttpURL(String user, String password, String host, int port, String path) throws URIException {
        this(user, password, host, port, path, null, null);
    }

    public HttpURL(String user, String password, String host, int port, String path, String query) throws URIException {
        this(user, password, host, port, path, query, null);
    }

    public HttpURL(String host, String path, String query, String fragment) throws URIException {
        this(null, null, host, -1, path, query, fragment);
    }

    public HttpURL(String userinfo, String host, String path, String query, String fragment) throws URIException {
        this(userinfo, host, -1, path, query, fragment);
    }

    public HttpURL(String userinfo, String host, int port, String path) throws URIException {
        this(userinfo, host, port, path, (String) null, (String) null);
    }

    public HttpURL(String userinfo, String host, int port, String path, String query) throws URIException {
        this(userinfo, host, port, path, query, (String) null);
    }

    public HttpURL(String userinfo, String host, int port, String path, String query, String fragment) throws URIException {
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
                if (!(port == -1 && port == 80)) {
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

    public HttpURL(String user, String password, String host, int port, String path, String query, String fragment) throws URIException {
        this(toUserinfo(user, password), host, port, path, query, fragment);
    }

    protected static String toUserinfo(String user, String password) throws URIException {
        if (user == null) {
            return null;
        }
        StringBuffer usrinfo = new StringBuffer(20);
        usrinfo.append(URIUtil.encode(user, URI.allowed_within_userinfo));
        if (password == null) {
            return usrinfo.toString();
        }
        usrinfo.append(':');
        usrinfo.append(URIUtil.encode(password, URI.allowed_within_userinfo));
        return usrinfo.toString();
    }

    public HttpURL(HttpURL base, String relative) throws URIException {
        this(base, new HttpURL(relative));
    }

    public HttpURL(HttpURL base, HttpURL relative) throws URIException {
        super(base, relative);
        checkValid();
    }

    @Override // org.apache.commons.httpclient.URI
    public char[] getRawScheme() {
        if (this._scheme == null) {
            return null;
        }
        return DEFAULT_SCHEME;
    }

    @Override // org.apache.commons.httpclient.URI
    public String getScheme() {
        if (this._scheme == null) {
            return null;
        }
        return new String(DEFAULT_SCHEME);
    }

    @Override // org.apache.commons.httpclient.URI
    public int getPort() {
        if (this._port == -1) {
            return 80;
        }
        return this._port;
    }

    public void setRawUserinfo(char[] escapedUser, char[] escapedPassword) throws URIException {
        if (escapedUser == null || escapedUser.length == 0) {
            throw new URIException(1, "user required");
        } else if (!validate(escapedUser, within_userinfo) || (escapedPassword != null && !validate(escapedPassword, within_userinfo))) {
            throw new URIException(3, "escaped userinfo not valid");
        } else {
            String username = new String(escapedUser);
            String password = escapedPassword == null ? null : new String(escapedPassword);
            String userinfo = new StringBuffer().append(username).append(password == null ? "" : new StringBuffer().append(c.N).append(password).toString()).toString();
            String hostname = new String(getRawHost());
            String authority = new StringBuffer().append(userinfo).append("@").append(this._port == -1 ? hostname : new StringBuffer().append(hostname).append(c.N).append(this._port).toString()).toString();
            this._userinfo = userinfo.toCharArray();
            this._authority = authority.toCharArray();
            setURI();
        }
    }

    public void setEscapedUserinfo(String escapedUser, String escapedPassword) throws URIException, NullPointerException {
        setRawUserinfo(escapedUser.toCharArray(), escapedPassword == null ? null : escapedPassword.toCharArray());
    }

    public void setUserinfo(String user, String password) throws URIException, NullPointerException {
        String charset = getProtocolCharset();
        setRawUserinfo(encode(user, within_userinfo, charset), password == null ? null : encode(password, within_userinfo, charset));
    }

    public void setRawUser(char[] escapedUser) throws URIException {
        if (escapedUser == null || escapedUser.length == 0) {
            throw new URIException(1, "user required");
        } else if (!validate(escapedUser, within_userinfo)) {
            throw new URIException(3, "escaped user not valid");
        } else {
            String username = new String(escapedUser);
            char[] rawPassword = getRawPassword();
            String password = rawPassword == null ? null : new String(rawPassword);
            String userinfo = new StringBuffer().append(username).append(password == null ? "" : new StringBuffer().append(c.N).append(password).toString()).toString();
            String hostname = new String(getRawHost());
            String authority = new StringBuffer().append(userinfo).append("@").append(this._port == -1 ? hostname : new StringBuffer().append(hostname).append(c.N).append(this._port).toString()).toString();
            this._userinfo = userinfo.toCharArray();
            this._authority = authority.toCharArray();
            setURI();
        }
    }

    public void setEscapedUser(String escapedUser) throws URIException, NullPointerException {
        setRawUser(escapedUser.toCharArray());
    }

    public void setUser(String user) throws URIException, NullPointerException {
        setRawUser(encode(user, allowed_within_userinfo, getProtocolCharset()));
    }

    public char[] getRawUser() {
        if (this._userinfo == null || this._userinfo.length == 0) {
            return null;
        }
        int to = indexFirstOf(this._userinfo, ':');
        if (to == -1) {
            return this._userinfo;
        }
        char[] result = new char[to];
        System.arraycopy(this._userinfo, 0, result, 0, to);
        return result;
    }

    public String getEscapedUser() {
        char[] user = getRawUser();
        if (user == null) {
            return null;
        }
        return new String(user);
    }

    public String getUser() throws URIException {
        char[] user = getRawUser();
        if (user == null) {
            return null;
        }
        return decode(user, getProtocolCharset());
    }

    public void setRawPassword(char[] escapedPassword) throws URIException {
        if (escapedPassword != null && !validate(escapedPassword, within_userinfo)) {
            throw new URIException(3, "escaped password not valid");
        } else if (getRawUser() == null || getRawUser().length == 0) {
            throw new URIException(1, "username required");
        } else {
            String username = new String(getRawUser());
            String password = escapedPassword == null ? null : new String(escapedPassword);
            String userinfo = new StringBuffer().append(username).append(password == null ? "" : new StringBuffer().append(c.N).append(password).toString()).toString();
            String hostname = new String(getRawHost());
            String authority = new StringBuffer().append(userinfo).append("@").append(this._port == -1 ? hostname : new StringBuffer().append(hostname).append(c.N).append(this._port).toString()).toString();
            this._userinfo = userinfo.toCharArray();
            this._authority = authority.toCharArray();
            setURI();
        }
    }

    public void setEscapedPassword(String escapedPassword) throws URIException {
        setRawPassword(escapedPassword == null ? null : escapedPassword.toCharArray());
    }

    public void setPassword(String password) throws URIException {
        setRawPassword(password == null ? null : encode(password, allowed_within_userinfo, getProtocolCharset()));
    }

    public char[] getRawPassword() {
        int from = indexFirstOf(this._userinfo, ':');
        if (from == -1) {
            return null;
        }
        int len = (this._userinfo.length - from) - 1;
        char[] result = new char[len];
        System.arraycopy(this._userinfo, from + 1, result, 0, len);
        return result;
    }

    public String getEscapedPassword() {
        char[] password = getRawPassword();
        if (password == null) {
            return null;
        }
        return new String(password);
    }

    public String getPassword() throws URIException {
        char[] password = getRawPassword();
        if (password == null) {
            return null;
        }
        return decode(password, getProtocolCharset());
    }

    @Override // org.apache.commons.httpclient.URI
    public char[] getRawCurrentHierPath() throws URIException {
        return (this._path == null || this._path.length == 0) ? rootPath : super.getRawCurrentHierPath(this._path);
    }

    @Override // org.apache.commons.httpclient.URI
    public char[] getRawAboveHierPath() throws URIException {
        char[] path = getRawCurrentHierPath();
        return (path == null || path.length == 0) ? rootPath : getRawCurrentHierPath(path);
    }

    @Override // org.apache.commons.httpclient.URI
    public char[] getRawPath() {
        char[] path = super.getRawPath();
        return (path == null || path.length == 0) ? rootPath : path;
    }

    public void setQuery(String queryName, String queryValue) throws URIException, NullPointerException {
        StringBuffer buff = new StringBuffer();
        String charset = getProtocolCharset();
        buff.append(encode(queryName, allowed_within_query, charset));
        buff.append('=');
        buff.append(encode(queryValue, allowed_within_query, charset));
        this._query = buff.toString().toCharArray();
        setURI();
    }

    public void setQuery(String[] queryName, String[] queryValue) throws URIException, NullPointerException {
        int length = queryName.length;
        if (length != queryValue.length) {
            throw new URIException("wrong array size of query");
        }
        StringBuffer buff = new StringBuffer();
        String charset = getProtocolCharset();
        for (int i = 0; i < length; i++) {
            buff.append(encode(queryName[i], allowed_within_query, charset));
            buff.append('=');
            buff.append(encode(queryValue[i], allowed_within_query, charset));
            if (i + 1 < length) {
                buff.append('&');
            }
        }
        this._query = buff.toString().toCharArray();
        setURI();
    }

    /* access modifiers changed from: protected */
    public void checkValid() throws URIException {
        if (!equals(this._scheme, DEFAULT_SCHEME) && this._scheme != null) {
            throw new URIException(1, "wrong class use");
        }
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.commons.httpclient.URI
    public void setURI() {
        StringBuffer buf = new StringBuffer();
        if (this._scheme != null) {
            buf.append(this._scheme);
            buf.append(':');
        }
        if (this._is_net_path) {
            buf.append("//");
            if (this._authority != null) {
                if (this._userinfo == null) {
                    buf.append(this._authority);
                } else if (this._host != null) {
                    buf.append(this._host);
                    if (this._port != -1) {
                        buf.append(':');
                        buf.append(this._port);
                    }
                }
            }
        }
        if (this._opaque != null && this._is_opaque_part) {
            buf.append(this._opaque);
        } else if (!(this._path == null || this._path.length == 0)) {
            buf.append(this._path);
        }
        if (this._query != null) {
            buf.append('?');
            buf.append(this._query);
        }
        this._uri = buf.toString().toCharArray();
        this.hash = 0;
    }
}
