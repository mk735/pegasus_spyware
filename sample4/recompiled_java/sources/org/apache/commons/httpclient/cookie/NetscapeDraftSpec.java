package org.apache.commons.httpclient.cookie;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.commons.httpclient.Cookie;
import org.apache.commons.httpclient.HeaderElement;
import org.apache.commons.httpclient.NameValuePair;

public class NetscapeDraftSpec extends CookieSpecBase {
    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public Cookie[] parse(String host, int port, String path, boolean secure, String header) throws MalformedCookieException {
        LOG.trace("enter NetscapeDraftSpec.parse(String, port, path, boolean, Header)");
        if (host == null) {
            throw new IllegalArgumentException("Host of origin may not be null");
        } else if (host.trim().equals("")) {
            throw new IllegalArgumentException("Host of origin may not be blank");
        } else if (port < 0) {
            throw new IllegalArgumentException(new StringBuffer().append("Invalid port: ").append(port).toString());
        } else if (path == null) {
            throw new IllegalArgumentException("Path of origin may not be null.");
        } else if (header == null) {
            throw new IllegalArgumentException("Header may not be null.");
        } else {
            if (path.trim().equals("")) {
                path = CookieSpec.PATH_DELIM;
            }
            String host2 = host.toLowerCase();
            String defaultPath = path;
            int lastSlashIndex = defaultPath.lastIndexOf(CookieSpec.PATH_DELIM);
            if (lastSlashIndex >= 0) {
                if (lastSlashIndex == 0) {
                    lastSlashIndex = 1;
                }
                defaultPath = defaultPath.substring(0, lastSlashIndex);
            }
            HeaderElement headerelement = new HeaderElement(header.toCharArray());
            Cookie cookie = new Cookie(host2, headerelement.getName(), headerelement.getValue(), defaultPath, (Date) null, false);
            NameValuePair[] parameters = headerelement.getParameters();
            if (parameters != null) {
                for (NameValuePair nameValuePair : parameters) {
                    parseAttribute(nameValuePair, cookie);
                }
            }
            return new Cookie[]{cookie};
        }
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
            if (!paramName.equals("expires")) {
                super.parseAttribute(attribute, cookie);
            } else if (paramValue == null) {
                throw new MalformedCookieException("Missing value for expires attribute");
            } else {
                try {
                    cookie.setExpiryDate(new SimpleDateFormat("EEE, dd-MMM-yyyy HH:mm:ss z", Locale.US).parse(paramValue));
                } catch (ParseException e) {
                    throw new MalformedCookieException(new StringBuffer().append("Invalid expires attribute: ").append(e.getMessage()).toString());
                }
            }
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public boolean domainMatch(String host, String domain) {
        return host.endsWith(domain);
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public void validate(String host, int port, String path, boolean secure, Cookie cookie) throws MalformedCookieException {
        LOG.trace("enterNetscapeDraftCookieProcessor RCF2109CookieProcessor.validate(Cookie)");
        super.validate(host, port, path, secure, cookie);
        if (host.indexOf(".") >= 0) {
            int domainParts = new StringTokenizer(cookie.getDomain(), ".").countTokens();
            String upperCase = cookie.getDomain().toUpperCase();
            if (upperCase.endsWith(".COM") || upperCase.endsWith(".EDU") || upperCase.endsWith(".NET") || upperCase.endsWith(".GOV") || upperCase.endsWith(".MIL") || upperCase.endsWith(".ORG") || upperCase.endsWith(".INT")) {
                if (domainParts < 2) {
                    throw new MalformedCookieException(new StringBuffer().append("Domain attribute \"").append(cookie.getDomain()).append("\" violates the Netscape cookie specification for ").append("special domains").toString());
                }
            } else if (domainParts < 3) {
                throw new MalformedCookieException(new StringBuffer().append("Domain attribute \"").append(cookie.getDomain()).append("\" violates the Netscape cookie specification").toString());
            }
        }
    }
}
