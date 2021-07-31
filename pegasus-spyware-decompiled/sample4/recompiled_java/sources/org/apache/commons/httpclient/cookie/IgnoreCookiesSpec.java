package org.apache.commons.httpclient.cookie;

import java.util.Collection;
import org.apache.commons.httpclient.Cookie;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.NameValuePair;

public class IgnoreCookiesSpec implements CookieSpec {
    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public Cookie[] parse(String host, int port, String path, boolean secure, String header) throws MalformedCookieException {
        return new Cookie[0];
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public Collection getValidDateFormats() {
        return null;
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public void setValidDateFormats(Collection datepatterns) {
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public String formatCookie(Cookie cookie) {
        return null;
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public Header formatCookieHeader(Cookie cookie) throws IllegalArgumentException {
        return null;
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public Header formatCookieHeader(Cookie[] cookies) throws IllegalArgumentException {
        return null;
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public String formatCookies(Cookie[] cookies) throws IllegalArgumentException {
        return null;
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public boolean match(String host, int port, String path, boolean secure, Cookie cookie) {
        return false;
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public Cookie[] match(String host, int port, String path, boolean secure, Cookie[] cookies) {
        return new Cookie[0];
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public Cookie[] parse(String host, int port, String path, boolean secure, Header header) throws MalformedCookieException, IllegalArgumentException {
        return new Cookie[0];
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public void parseAttribute(NameValuePair attribute, Cookie cookie) throws MalformedCookieException, IllegalArgumentException {
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public void validate(String host, int port, String path, boolean secure, Cookie cookie) throws MalformedCookieException, IllegalArgumentException {
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public boolean domainMatch(String host, String domain) {
        return false;
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec
    public boolean pathMatch(String path, String topmostPath) {
        return false;
    }
}
