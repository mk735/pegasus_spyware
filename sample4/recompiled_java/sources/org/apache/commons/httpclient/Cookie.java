package org.apache.commons.httpclient;

import com.lenovo.lps.sus.c.c;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Date;
import org.apache.commons.httpclient.cookie.CookiePolicy;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.httpclient.util.LangUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class Cookie extends NameValuePair implements Serializable, Comparator {
    static Class a;
    private static final Log j;
    private String b;
    private String c;
    private Date d;
    private String e;
    private boolean f;
    private boolean g;
    private boolean h;
    private int i;

    public Cookie() {
        this((String) null, "noname", (String) null, (String) null, (Date) null, false);
    }

    public Cookie(String domain, String name, String value) {
        this(domain, name, value, (String) null, (Date) null, false);
    }

    public Cookie(String domain, String name, String value, String path, Date expires, boolean secure) {
        super(name, value);
        this.g = false;
        this.h = false;
        this.i = 0;
        j.trace("enter Cookie(String, String, String, String, Date, boolean)");
        if (name == null) {
            throw new IllegalArgumentException("Cookie name may not be null");
        } else if (name.trim().equals("")) {
            throw new IllegalArgumentException("Cookie name may not be blank");
        } else {
            setPath(path);
            setDomain(domain);
            setExpiryDate(expires);
            setSecure(secure);
        }
    }

    public Cookie(String domain, String name, String value, String path, int maxAge, boolean secure) {
        this(domain, name, value, path, (Date) null, secure);
        if (maxAge < -1) {
            throw new IllegalArgumentException(new StringBuffer().append("Invalid max age:  ").append(Integer.toString(maxAge)).toString());
        } else if (maxAge >= 0) {
            setExpiryDate(new Date(System.currentTimeMillis() + (((long) maxAge) * 1000)));
        }
    }

    public String getComment() {
        return this.b;
    }

    public void setComment(String comment) {
        this.b = comment;
    }

    public Date getExpiryDate() {
        return this.d;
    }

    public void setExpiryDate(Date expiryDate) {
        this.d = expiryDate;
    }

    public boolean isPersistent() {
        return this.d != null;
    }

    public String getDomain() {
        return this.c;
    }

    public void setDomain(String domain) {
        if (domain != null) {
            int ndx = domain.indexOf(c.N);
            if (ndx != -1) {
                domain = domain.substring(0, ndx);
            }
            this.c = domain.toLowerCase();
        }
    }

    public String getPath() {
        return this.e;
    }

    public void setPath(String path) {
        this.e = path;
    }

    public boolean getSecure() {
        return this.f;
    }

    public void setSecure(boolean secure) {
        this.f = secure;
    }

    public int getVersion() {
        return this.i;
    }

    public void setVersion(int version) {
        this.i = version;
    }

    public boolean isExpired() {
        return this.d != null && this.d.getTime() <= System.currentTimeMillis();
    }

    public boolean isExpired(Date now) {
        return this.d != null && this.d.getTime() <= now.getTime();
    }

    public void setPathAttributeSpecified(boolean value) {
        this.g = value;
    }

    public boolean isPathAttributeSpecified() {
        return this.g;
    }

    public void setDomainAttributeSpecified(boolean value) {
        this.h = value;
    }

    public boolean isDomainAttributeSpecified() {
        return this.h;
    }

    @Override // org.apache.commons.httpclient.NameValuePair
    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, getName()), this.c), this.e);
    }

    @Override // org.apache.commons.httpclient.NameValuePair
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie that = (Cookie) obj;
        if (!LangUtils.equals(getName(), that.getName()) || !LangUtils.equals(this.c, that.c) || !LangUtils.equals(this.e, that.e)) {
            z = false;
        }
        return z;
    }

    public String toExternalForm() {
        CookieSpec spec;
        if (getVersion() > 0) {
            spec = CookiePolicy.getDefaultSpec();
        } else {
            spec = CookiePolicy.getCookieSpec(CookiePolicy.NETSCAPE);
        }
        return spec.formatCookie(this);
    }

    @Override // java.util.Comparator
    public int compare(Object o1, Object o2) {
        j.trace("enter Cookie.compare(Object, Object)");
        if (!(o1 instanceof Cookie)) {
            throw new ClassCastException(o1.getClass().getName());
        } else if (!(o2 instanceof Cookie)) {
            throw new ClassCastException(o2.getClass().getName());
        } else {
            Cookie c1 = (Cookie) o1;
            Cookie c2 = (Cookie) o2;
            if (c1.getPath() == null && c2.getPath() == null) {
                return 0;
            }
            if (c1.getPath() == null) {
                if (!c2.getPath().equals(CookieSpec.PATH_DELIM)) {
                    return -1;
                }
                return 0;
            } else if (c2.getPath() != null) {
                return c1.getPath().compareTo(c2.getPath());
            } else {
                if (!c1.getPath().equals(CookieSpec.PATH_DELIM)) {
                    return 1;
                }
                return 0;
            }
        }
    }

    @Override // org.apache.commons.httpclient.NameValuePair
    public String toString() {
        return toExternalForm();
    }

    static {
        Class cls;
        if (a == null) {
            cls = a("org.apache.commons.httpclient.Cookie");
            a = cls;
        } else {
            cls = a;
        }
        j = LogFactory.getLog(cls);
    }

    private static Class a(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }
}
