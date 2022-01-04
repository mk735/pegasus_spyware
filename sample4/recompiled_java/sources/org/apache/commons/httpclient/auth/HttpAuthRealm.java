package org.apache.commons.httpclient.auth;

public class HttpAuthRealm extends AuthScope {
    public HttpAuthRealm(String domain, String realm) {
        super(domain, -1, realm, ANY_SCHEME);
    }
}
