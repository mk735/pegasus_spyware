package org.apache.commons.httpclient.cookie;

import com.lenovo.lps.sus.c.c;
import org.apache.commons.httpclient.Cookie;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.util.ParameterFormatter;

public class RFC2109Spec extends CookieSpecBase {
    public static final String SET_COOKIE_KEY = "set-cookie";
    private final ParameterFormatter b = new ParameterFormatter();

    public RFC2109Spec() {
        this.b.setAlwaysUseQuotes(true);
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public void parseAttribute(NameValuePair attribute, Cookie cookie) throws MalformedCookieException {
        if (attribute == null) {
            throw new IllegalArgumentException("Attribute may not be null.");
        } else if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null.");
        } else {
            String paramName = attribute.getName().toLowerCase();
            String paramValue = attribute.getValue();
            if (paramName.equals(Cookie2.PATH)) {
                if (paramValue == null) {
                    throw new MalformedCookieException("Missing value for path attribute");
                } else if (paramValue.trim().equals("")) {
                    throw new MalformedCookieException("Blank value for path attribute");
                } else {
                    cookie.setPath(paramValue);
                    cookie.setPathAttributeSpecified(true);
                }
            } else if (!paramName.equals("version")) {
                super.parseAttribute(attribute, cookie);
            } else if (paramValue == null) {
                throw new MalformedCookieException("Missing value for version attribute");
            } else {
                try {
                    cookie.setVersion(Integer.parseInt(paramValue));
                } catch (NumberFormatException e) {
                    throw new MalformedCookieException(new StringBuffer().append("Invalid version: ").append(e.getMessage()).toString());
                }
            }
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public void validate(String host, int port, String path, boolean secure, Cookie cookie) throws MalformedCookieException {
        LOG.trace("enter RFC2109Spec.validate(String, int, String, boolean, Cookie)");
        super.validate(host, port, path, secure, cookie);
        if (cookie.getName().indexOf(32) != -1) {
            throw new MalformedCookieException("Cookie name may not contain blanks");
        } else if (cookie.getName().startsWith("$")) {
            throw new MalformedCookieException("Cookie name may not start with $");
        } else if (cookie.isDomainAttributeSpecified() && !cookie.getDomain().equals(host)) {
            if (!cookie.getDomain().startsWith(".")) {
                throw new MalformedCookieException(new StringBuffer().append("Domain attribute \"").append(cookie.getDomain()).append("\" violates RFC 2109: domain must start with a dot").toString());
            }
            int dotIndex = cookie.getDomain().indexOf(46, 1);
            if (dotIndex < 0 || dotIndex == cookie.getDomain().length() - 1) {
                throw new MalformedCookieException(new StringBuffer().append("Domain attribute \"").append(cookie.getDomain()).append("\" violates RFC 2109: domain must contain an embedded dot").toString());
            }
            String host2 = host.toLowerCase();
            if (!host2.endsWith(cookie.getDomain())) {
                throw new MalformedCookieException(new StringBuffer().append("Illegal domain attribute \"").append(cookie.getDomain()).append("\". Domain of origin: \"").append(host2).append(c.M).toString());
            } else if (host2.substring(0, host2.length() - cookie.getDomain().length()).indexOf(46) != -1) {
                throw new MalformedCookieException(new StringBuffer().append("Domain attribute \"").append(cookie.getDomain()).append("\" violates RFC 2109: host minus domain may not contain any dots").toString());
            }
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public boolean domainMatch(String host, String domain) {
        return host.equals(domain) || (domain.startsWith(".") && host.endsWith(domain));
    }

    private void a(StringBuffer buffer, NameValuePair param, int version) {
        if (version < 1) {
            buffer.append(param.getName());
            buffer.append("=");
            if (param.getValue() != null) {
                buffer.append(param.getValue());
                return;
            }
            return;
        }
        this.b.format(buffer, param);
    }

    private void a(StringBuffer buffer, Cookie cookie, int version) {
        String value = cookie.getValue();
        if (value == null) {
            value = "";
        }
        a(buffer, new NameValuePair(cookie.getName(), value), version);
        if (cookie.getPath() != null && cookie.isPathAttributeSpecified()) {
            buffer.append("; ");
            a(buffer, new NameValuePair("$Path", cookie.getPath()), version);
        }
        if (cookie.getDomain() != null && cookie.isDomainAttributeSpecified()) {
            buffer.append("; ");
            a(buffer, new NameValuePair("$Domain", cookie.getDomain()), version);
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public String formatCookie(Cookie cookie) {
        LOG.trace("enter RFC2109Spec.formatCookie(Cookie)");
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        int version = cookie.getVersion();
        StringBuffer buffer = new StringBuffer();
        a(buffer, new NameValuePair("$Version", Integer.toString(version)), version);
        buffer.append("; ");
        a(buffer, cookie, version);
        return buffer.toString();
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public String formatCookies(Cookie[] cookies) {
        LOG.trace("enter RFC2109Spec.formatCookieHeader(Cookie[])");
        int version = Integer.MAX_VALUE;
        for (Cookie cookie : cookies) {
            if (cookie.getVersion() < version) {
                version = cookie.getVersion();
            }
        }
        StringBuffer buffer = new StringBuffer();
        a(buffer, new NameValuePair("$Version", Integer.toString(version)), version);
        for (Cookie cookie2 : cookies) {
            buffer.append("; ");
            a(buffer, cookie2, version);
        }
        return buffer.toString();
    }
}
