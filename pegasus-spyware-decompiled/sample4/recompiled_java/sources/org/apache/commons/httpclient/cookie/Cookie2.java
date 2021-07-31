package org.apache.commons.httpclient.cookie;

import java.util.Date;
import org.apache.commons.httpclient.Cookie;

public class Cookie2 extends Cookie {
    public static final String COMMENT = "comment";
    public static final String COMMENTURL = "commenturl";
    public static final String DISCARD = "discard";
    public static final String DOMAIN = "domain";
    public static final String MAXAGE = "max-age";
    public static final String PATH = "path";
    public static final String PORT = "port";
    public static final String SECURE = "secure";
    public static final String VERSION = "version";
    private String b;
    private int[] c;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;

    public Cookie2() {
        super((String) null, "noname", (String) null, (String) null, (Date) null, false);
    }

    public Cookie2(String domain, String name, String value) {
        super(domain, name, value);
    }

    public Cookie2(String domain, String name, String value, String path, Date expires, boolean secure) {
        super(domain, name, value, path, expires, secure);
    }

    public Cookie2(String domain, String name, String value, String path, Date expires, boolean secure, int[] ports) {
        super(domain, name, value, path, expires, secure);
        setPorts(ports);
    }

    public String getCommentURL() {
        return this.b;
    }

    public void setCommentURL(String commentURL) {
        this.b = commentURL;
    }

    public int[] getPorts() {
        return this.c;
    }

    public void setPorts(int[] ports) {
        this.c = ports;
    }

    public void setDiscard(boolean toDiscard) {
        this.d = toDiscard;
    }

    @Override // org.apache.commons.httpclient.Cookie
    public boolean isPersistent() {
        return getExpiryDate() != null && !this.d;
    }

    public void setPortAttributeSpecified(boolean value) {
        this.e = value;
    }

    public boolean isPortAttributeSpecified() {
        return this.e;
    }

    public void setPortAttributeBlank(boolean value) {
        this.f = value;
    }

    public boolean isPortAttributeBlank() {
        return this.f;
    }

    public void setVersionAttributeSpecified(boolean value) {
        this.g = value;
    }

    public boolean isVersionAttributeSpecified() {
        return this.g;
    }

    @Override // org.apache.commons.httpclient.Cookie
    public String toExternalForm() {
        return CookiePolicy.getCookieSpec(CookiePolicy.RFC_2965).formatCookie(this);
    }
}
