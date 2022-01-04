package org.apache.commons.httpclient.cookie;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.apache.commons.httpclient.Cookie;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HeaderElement;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.util.ParameterFormatter;

public class RFC2965Spec extends CookieSpecBase implements CookieVersionSupport {
    public static final String SET_COOKIE2_KEY = "set-cookie2";
    private static final Comparator b = new CookiePathComparator();
    private final ParameterFormatter c = new ParameterFormatter();
    private final List d;
    private final Map e;
    private final CookieSpec f;

    static boolean a(int x1, int[] x2) {
        for (int i2 : x2) {
            if (x1 == i2) {
                return true;
            }
        }
        return false;
    }

    static int[] a(String x1) throws MalformedCookieException {
        return b(x1);
    }

    public RFC2965Spec() {
        this.c.setAlwaysUseQuotes(true);
        this.e = new HashMap(10);
        this.d = new ArrayList(10);
        this.f = new RFC2109Spec();
        registerAttribHandler(Cookie2.PATH, new c(this, (byte) 0));
        registerAttribHandler(Cookie2.DOMAIN, new a(this, (byte) 0));
        registerAttribHandler(Cookie2.PORT, new d(this, (byte) 0));
        registerAttribHandler(Cookie2.MAXAGE, new b(this, (byte) 0));
        registerAttribHandler(Cookie2.SECURE, new i(this, (byte) 0));
        registerAttribHandler(Cookie2.COMMENT, new f(this, (byte) 0));
        registerAttribHandler(Cookie2.COMMENTURL, new g(this, (byte) 0));
        registerAttribHandler(Cookie2.DISCARD, new h(this, (byte) 0));
        registerAttribHandler("version", new e(this, (byte) 0));
    }

    /* access modifiers changed from: protected */
    public void registerAttribHandler(String name, CookieAttributeHandler handler) {
        if (name == null) {
            throw new IllegalArgumentException("Attribute name may not be null");
        } else if (handler == null) {
            throw new IllegalArgumentException("Attribute handler may not be null");
        } else {
            if (!this.d.contains(handler)) {
                this.d.add(handler);
            }
            this.e.put(name, handler);
        }
    }

    /* access modifiers changed from: protected */
    public CookieAttributeHandler findAttribHandler(String name) {
        return (CookieAttributeHandler) this.e.get(name);
    }

    /* access modifiers changed from: protected */
    public CookieAttributeHandler getAttribHandler(String name) {
        CookieAttributeHandler handler = findAttribHandler(name);
        if (handler != null) {
            return handler;
        }
        throw new IllegalStateException(new StringBuffer().append("Handler not registered for ").append(name).append(" attribute.").toString());
    }

    /* access modifiers changed from: protected */
    public Iterator getAttribHandlerIterator() {
        return this.d.iterator();
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public Cookie[] parse(String host, int port, String path, boolean secure, Header header) throws MalformedCookieException {
        LOG.trace("enter RFC2965.parse(String, int, String, boolean, Header)");
        if (header == null) {
            throw new IllegalArgumentException("Header may not be null.");
        } else if (header.getName() == null) {
            throw new IllegalArgumentException("Header name may not be null.");
        } else if (header.getName().equalsIgnoreCase(SET_COOKIE2_KEY)) {
            return parse(host, port, path, secure, header.getValue());
        } else {
            if (header.getName().equalsIgnoreCase(RFC2109Spec.SET_COOKIE_KEY)) {
                return this.f.parse(host, port, path, secure, header.getValue());
            }
            throw new MalformedCookieException("Header name is not valid. RFC 2965 supports \"set-cookie\" and \"set-cookie2\" headers.");
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public Cookie[] parse(String host, int port, String path, boolean secure, String header) throws MalformedCookieException {
        LOG.trace("enter RFC2965Spec.parse(String, int, String, boolean, String)");
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
            String host2 = c(host);
            HeaderElement[] headerElements = HeaderElement.parseElements(header.toCharArray());
            List cookies = new LinkedList();
            for (HeaderElement headerelement : headerElements) {
                try {
                    Cookie2 cookie = new Cookie2(host2, headerelement.getName(), headerelement.getValue(), path, null, false, new int[]{port});
                    NameValuePair[] parameters = headerelement.getParameters();
                    if (parameters != null) {
                        Map attribmap = new HashMap(parameters.length);
                        for (int j = parameters.length - 1; j >= 0; j--) {
                            NameValuePair param = parameters[j];
                            attribmap.put(param.getName().toLowerCase(), param);
                        }
                        for (Map.Entry entry : attribmap.entrySet()) {
                            parseAttribute((NameValuePair) entry.getValue(), cookie);
                        }
                    }
                    cookies.add(cookie);
                } catch (IllegalArgumentException ex) {
                    throw new MalformedCookieException(ex.getMessage());
                }
            }
            return (Cookie[]) cookies.toArray(new Cookie[cookies.size()]);
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public void parseAttribute(NameValuePair attribute, Cookie cookie) throws MalformedCookieException {
        if (attribute == null) {
            throw new IllegalArgumentException("Attribute may not be null.");
        } else if (attribute.getName() == null) {
            throw new IllegalArgumentException("Attribute Name may not be null.");
        } else if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null.");
        } else {
            String paramName = attribute.getName().toLowerCase();
            String paramValue = attribute.getValue();
            CookieAttributeHandler handler = findAttribHandler(paramName);
            if (handler != null) {
                handler.parse(cookie, paramValue);
            } else if (LOG.isDebugEnabled()) {
                LOG.debug(new StringBuffer().append("Unrecognized cookie attribute: ").append(attribute.toString()).toString());
            }
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public void validate(String host, int port, String path, boolean secure, Cookie cookie) throws MalformedCookieException {
        LOG.trace("enter RFC2965Spec.validate(String, int, String, boolean, Cookie)");
        if (!(cookie instanceof Cookie2)) {
            this.f.validate(host, port, path, secure, cookie);
        } else if (cookie.getName().indexOf(32) != -1) {
            throw new MalformedCookieException("Cookie name may not contain blanks");
        } else if (cookie.getName().startsWith("$")) {
            throw new MalformedCookieException("Cookie name may not start with $");
        } else {
            CookieOrigin origin = new CookieOrigin(c(host), port, path, secure);
            Iterator i2 = getAttribHandlerIterator();
            while (i2.hasNext()) {
                ((CookieAttributeHandler) i2.next()).validate(cookie, origin);
            }
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public boolean match(String host, int port, String path, boolean secure, Cookie cookie) {
        LOG.trace("enter RFC2965.match(String, int, String, boolean, Cookie");
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (!(cookie instanceof Cookie2)) {
            return this.f.match(host, port, path, secure, cookie);
        } else {
            if (cookie.isPersistent() && cookie.isExpired()) {
                return false;
            }
            CookieOrigin origin = new CookieOrigin(c(host), port, path, secure);
            Iterator i2 = getAttribHandlerIterator();
            while (i2.hasNext()) {
                if (!((CookieAttributeHandler) i2.next()).match(cookie, origin)) {
                    return false;
                }
            }
            return true;
        }
    }

    private void a(Cookie2 cookie, StringBuffer buffer) {
        String name = cookie.getName();
        String value = cookie.getValue();
        if (value == null) {
            value = "";
        }
        this.c.format(buffer, new NameValuePair(name, value));
        if (cookie.getDomain() != null && cookie.isDomainAttributeSpecified()) {
            buffer.append("; ");
            this.c.format(buffer, new NameValuePair("$Domain", cookie.getDomain()));
        }
        if (cookie.getPath() != null && cookie.isPathAttributeSpecified()) {
            buffer.append("; ");
            this.c.format(buffer, new NameValuePair("$Path", cookie.getPath()));
        }
        if (cookie.isPortAttributeSpecified()) {
            String portValue = "";
            if (!cookie.isPortAttributeBlank()) {
                int[] ports = cookie.getPorts();
                StringBuffer stringBuffer = new StringBuffer();
                int length = ports.length;
                for (int i2 = 0; i2 < length; i2++) {
                    if (i2 > 0) {
                        stringBuffer.append(",");
                    }
                    stringBuffer.append(ports[i2]);
                }
                portValue = stringBuffer.toString();
            }
            buffer.append("; ");
            this.c.format(buffer, new NameValuePair("$Port", portValue));
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public String formatCookie(Cookie cookie) {
        LOG.trace("enter RFC2965Spec.formatCookie(Cookie)");
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (!(cookie instanceof Cookie2)) {
            return this.f.formatCookie(cookie);
        } else {
            Cookie2 cookie2 = (Cookie2) cookie;
            int version = cookie2.getVersion();
            StringBuffer buffer = new StringBuffer();
            this.c.format(buffer, new NameValuePair("$Version", Integer.toString(version)));
            buffer.append("; ");
            a(cookie2, buffer);
            return buffer.toString();
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public String formatCookies(Cookie[] cookies) {
        LOG.trace("enter RFC2965Spec.formatCookieHeader(Cookie[])");
        if (cookies == null) {
            throw new IllegalArgumentException("Cookies may not be null");
        }
        boolean hasOldStyleCookie = false;
        int version = -1;
        int i2 = 0;
        while (true) {
            if (i2 >= cookies.length) {
                break;
            }
            Cookie cookie = cookies[i2];
            if (!(cookie instanceof Cookie2)) {
                hasOldStyleCookie = true;
                break;
            }
            if (cookie.getVersion() > version) {
                version = cookie.getVersion();
            }
            i2++;
        }
        if (version < 0) {
            version = 0;
        }
        if (hasOldStyleCookie || version < 1) {
            return this.f.formatCookies(cookies);
        }
        Arrays.sort(cookies, b);
        StringBuffer buffer = new StringBuffer();
        this.c.format(buffer, new NameValuePair("$Version", Integer.toString(version)));
        for (Cookie cookie2 : cookies) {
            buffer.append("; ");
            a((Cookie2) cookie2, buffer);
        }
        return buffer.toString();
    }

    private static int[] b(String portValue) throws MalformedCookieException {
        StringTokenizer st = new StringTokenizer(portValue, ",");
        int[] ports = new int[st.countTokens()];
        int i2 = 0;
        while (st.hasMoreTokens()) {
            try {
                ports[i2] = Integer.parseInt(st.nextToken().trim());
                if (ports[i2] < 0) {
                    throw new MalformedCookieException("Invalid Port attribute.");
                }
                i2++;
            } catch (NumberFormatException e2) {
                throw new MalformedCookieException(new StringBuffer().append("Invalid Port attribute: ").append(e2.getMessage()).toString());
            }
        }
        return ports;
    }

    private static String c(String host) {
        String effectiveHost = host.toLowerCase();
        if (host.indexOf(46) < 0) {
            return new StringBuffer().append(effectiveHost).append(".local").toString();
        }
        return effectiveHost;
    }

    @Override // org.apache.commons.httpclient.cookie.CookieSpec, org.apache.commons.httpclient.cookie.CookieSpecBase
    public boolean domainMatch(String host, String domain) {
        return host.equals(domain) || (domain.startsWith(".") && host.endsWith(domain));
    }

    private class c implements CookieAttributeHandler {
        private final RFC2965Spec a;

        private c(RFC2965Spec rFC2965Spec) {
            this.a = rFC2965Spec;
        }

        c(RFC2965Spec x0, byte b) {
            this(x0);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void parse(Cookie cookie, String path) throws MalformedCookieException {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (path == null) {
                throw new MalformedCookieException("Missing value for path attribute");
            } else if (path.trim().equals("")) {
                throw new MalformedCookieException("Blank value for path attribute");
            } else {
                cookie.setPath(path);
                cookie.setPathAttributeSpecified(true);
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void validate(Cookie cookie, CookieOrigin origin) throws MalformedCookieException {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (origin == null) {
                throw new IllegalArgumentException("Cookie origin may not be null");
            } else {
                String path = origin.getPath();
                if (path == null) {
                    throw new IllegalArgumentException("Path of origin host may not be null.");
                } else if (cookie.getPath() == null) {
                    throw new MalformedCookieException("Invalid cookie state: path attribute is null.");
                } else {
                    if (path.trim().equals("")) {
                        path = CookieSpec.PATH_DELIM;
                    }
                    if (!this.a.pathMatch(path, cookie.getPath())) {
                        throw new MalformedCookieException(new StringBuffer().append("Illegal path attribute \"").append(cookie.getPath()).append("\". Path of origin: \"").append(path).append(com.lenovo.lps.sus.c.c.M).toString());
                    }
                }
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final boolean match(Cookie cookie, CookieOrigin origin) {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (origin == null) {
                throw new IllegalArgumentException("Cookie origin may not be null");
            } else {
                String path = origin.getPath();
                if (cookie.getPath() == null) {
                    CookieSpecBase.LOG.warn("Invalid cookie state: path attribute is null.");
                    return false;
                }
                if (path.trim().equals("")) {
                    path = CookieSpec.PATH_DELIM;
                }
                if (this.a.pathMatch(path, cookie.getPath())) {
                    return true;
                }
                return false;
            }
        }
    }

    private class a implements CookieAttributeHandler {
        private final RFC2965Spec a;

        private a(RFC2965Spec rFC2965Spec) {
            this.a = rFC2965Spec;
        }

        a(RFC2965Spec x0, byte b) {
            this(x0);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void parse(Cookie cookie, String domain) throws MalformedCookieException {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (domain == null) {
                throw new MalformedCookieException("Missing value for domain attribute");
            } else if (domain.trim().equals("")) {
                throw new MalformedCookieException("Blank value for domain attribute");
            } else {
                String domain2 = domain.toLowerCase();
                if (!domain2.startsWith(".")) {
                    domain2 = new StringBuffer().append(".").append(domain2).toString();
                }
                cookie.setDomain(domain2);
                cookie.setDomainAttributeSpecified(true);
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void validate(Cookie cookie, CookieOrigin origin) throws MalformedCookieException {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (origin == null) {
                throw new IllegalArgumentException("Cookie origin may not be null");
            } else {
                String host = origin.getHost().toLowerCase();
                if (cookie.getDomain() == null) {
                    throw new MalformedCookieException("Invalid cookie state: domain not specified");
                }
                String cookieDomain = cookie.getDomain().toLowerCase();
                if (cookie.isDomainAttributeSpecified()) {
                    if (!cookieDomain.startsWith(".")) {
                        throw new MalformedCookieException(new StringBuffer().append("Domain attribute \"").append(cookie.getDomain()).append("\" violates RFC 2109: domain must start with a dot").toString());
                    }
                    int dotIndex = cookieDomain.indexOf(46, 1);
                    if ((dotIndex < 0 || dotIndex == cookieDomain.length() - 1) && !cookieDomain.equals(".local")) {
                        throw new MalformedCookieException(new StringBuffer().append("Domain attribute \"").append(cookie.getDomain()).append("\" violates RFC 2965: the value contains no embedded dots ").append("and the value is not .local").toString());
                    } else if (!this.a.domainMatch(host, cookieDomain)) {
                        throw new MalformedCookieException(new StringBuffer().append("Domain attribute \"").append(cookie.getDomain()).append("\" violates RFC 2965: effective host name does not ").append("domain-match domain attribute.").toString());
                    } else if (host.substring(0, host.length() - cookieDomain.length()).indexOf(46) != -1) {
                        throw new MalformedCookieException(new StringBuffer().append("Domain attribute \"").append(cookie.getDomain()).append("\" violates RFC 2965: ").append("effective host minus domain may not contain any dots").toString());
                    }
                } else if (!cookie.getDomain().equals(host)) {
                    throw new MalformedCookieException(new StringBuffer().append("Illegal domain attribute: \"").append(cookie.getDomain()).append("\".").append("Domain of origin: \"").append(host).append(com.lenovo.lps.sus.c.c.M).toString());
                }
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final boolean match(Cookie cookie, CookieOrigin origin) {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (origin == null) {
                throw new IllegalArgumentException("Cookie origin may not be null");
            } else {
                String host = origin.getHost().toLowerCase();
                String cookieDomain = cookie.getDomain();
                if (this.a.domainMatch(host, cookieDomain) && host.substring(0, host.length() - cookieDomain.length()).indexOf(46) == -1) {
                    return true;
                }
                return false;
            }
        }
    }

    private class d implements CookieAttributeHandler {
        private final RFC2965Spec a;

        private d(RFC2965Spec rFC2965Spec) {
            this.a = rFC2965Spec;
        }

        d(RFC2965Spec x0, byte b) {
            this(x0);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void parse(Cookie cookie, String portValue) throws MalformedCookieException {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (cookie instanceof Cookie2) {
                Cookie2 cookie2 = (Cookie2) cookie;
                if (portValue == null || portValue.trim().equals("")) {
                    cookie2.setPortAttributeBlank(true);
                } else {
                    RFC2965Spec rFC2965Spec = this.a;
                    cookie2.setPorts(RFC2965Spec.a(portValue));
                }
                cookie2.setPortAttributeSpecified(true);
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void validate(Cookie cookie, CookieOrigin origin) throws MalformedCookieException {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (origin == null) {
                throw new IllegalArgumentException("Cookie origin may not be null");
            } else if (cookie instanceof Cookie2) {
                Cookie2 cookie2 = (Cookie2) cookie;
                int port = origin.getPort();
                if (cookie2.isPortAttributeSpecified()) {
                    RFC2965Spec rFC2965Spec = this.a;
                    if (!RFC2965Spec.a(port, cookie2.getPorts())) {
                        throw new MalformedCookieException("Port attribute violates RFC 2965: Request port not found in cookie's port list.");
                    }
                }
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final boolean match(Cookie cookie, CookieOrigin origin) {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (origin == null) {
                throw new IllegalArgumentException("Cookie origin may not be null");
            } else if (!(cookie instanceof Cookie2)) {
                return false;
            } else {
                Cookie2 cookie2 = (Cookie2) cookie;
                int port = origin.getPort();
                if (cookie2.isPortAttributeSpecified()) {
                    if (cookie2.getPorts() == null) {
                        CookieSpecBase.LOG.warn("Invalid cookie state: port not specified");
                        return false;
                    }
                    RFC2965Spec rFC2965Spec = this.a;
                    if (RFC2965Spec.a(port, cookie2.getPorts())) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
        }
    }

    private class b implements CookieAttributeHandler {
        private final RFC2965Spec a;

        private b(RFC2965Spec rFC2965Spec) {
            this.a = rFC2965Spec;
        }

        b(RFC2965Spec x0, byte b) {
            this(x0);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void parse(Cookie cookie, String value) throws MalformedCookieException {
            int age;
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (value == null) {
                throw new MalformedCookieException("Missing value for max-age attribute");
            } else {
                try {
                    age = Integer.parseInt(value);
                } catch (NumberFormatException e) {
                    age = -1;
                }
                if (age < 0) {
                    throw new MalformedCookieException("Invalid max-age attribute.");
                }
                cookie.setExpiryDate(new Date(System.currentTimeMillis() + (((long) age) * 1000)));
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void validate(Cookie cookie, CookieOrigin origin) {
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final boolean match(Cookie cookie, CookieOrigin origin) {
            return true;
        }
    }

    private class i implements CookieAttributeHandler {
        private final RFC2965Spec a;

        private i(RFC2965Spec rFC2965Spec) {
            this.a = rFC2965Spec;
        }

        i(RFC2965Spec x0, byte b) {
            this(x0);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void parse(Cookie cookie, String secure) throws MalformedCookieException {
            cookie.setSecure(true);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void validate(Cookie cookie, CookieOrigin origin) throws MalformedCookieException {
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final boolean match(Cookie cookie, CookieOrigin origin) {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (origin != null) {
                return cookie.getSecure() == origin.isSecure();
            } else {
                throw new IllegalArgumentException("Cookie origin may not be null");
            }
        }
    }

    private class f implements CookieAttributeHandler {
        private final RFC2965Spec a;

        private f(RFC2965Spec rFC2965Spec) {
            this.a = rFC2965Spec;
        }

        f(RFC2965Spec x0, byte b) {
            this(x0);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void parse(Cookie cookie, String comment) throws MalformedCookieException {
            cookie.setComment(comment);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void validate(Cookie cookie, CookieOrigin origin) throws MalformedCookieException {
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final boolean match(Cookie cookie, CookieOrigin origin) {
            return true;
        }
    }

    private class g implements CookieAttributeHandler {
        private final RFC2965Spec a;

        private g(RFC2965Spec rFC2965Spec) {
            this.a = rFC2965Spec;
        }

        g(RFC2965Spec x0, byte b) {
            this(x0);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void parse(Cookie cookie, String commenturl) throws MalformedCookieException {
            if (cookie instanceof Cookie2) {
                ((Cookie2) cookie).setCommentURL(commenturl);
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void validate(Cookie cookie, CookieOrigin origin) throws MalformedCookieException {
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final boolean match(Cookie cookie, CookieOrigin origin) {
            return true;
        }
    }

    private class h implements CookieAttributeHandler {
        private final RFC2965Spec a;

        private h(RFC2965Spec rFC2965Spec) {
            this.a = rFC2965Spec;
        }

        h(RFC2965Spec x0, byte b) {
            this(x0);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void parse(Cookie cookie, String commenturl) throws MalformedCookieException {
            if (cookie instanceof Cookie2) {
                ((Cookie2) cookie).setDiscard(true);
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void validate(Cookie cookie, CookieOrigin origin) throws MalformedCookieException {
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final boolean match(Cookie cookie, CookieOrigin origin) {
            return true;
        }
    }

    private class e implements CookieAttributeHandler {
        private final RFC2965Spec a;

        private e(RFC2965Spec rFC2965Spec) {
            this.a = rFC2965Spec;
        }

        e(RFC2965Spec x0, byte b) {
            this(x0);
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void parse(Cookie cookie, String value) throws MalformedCookieException {
            int version;
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if (cookie instanceof Cookie2) {
                Cookie2 cookie2 = (Cookie2) cookie;
                if (value == null) {
                    throw new MalformedCookieException("Missing value for version attribute");
                }
                try {
                    version = Integer.parseInt(value);
                } catch (NumberFormatException e) {
                    version = -1;
                }
                if (version < 0) {
                    throw new MalformedCookieException("Invalid cookie version.");
                }
                cookie2.setVersion(version);
                cookie2.setVersionAttributeSpecified(true);
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final void validate(Cookie cookie, CookieOrigin origin) throws MalformedCookieException {
            if (cookie == null) {
                throw new IllegalArgumentException("Cookie may not be null");
            } else if ((cookie instanceof Cookie2) && !((Cookie2) cookie).isVersionAttributeSpecified()) {
                throw new MalformedCookieException("Violates RFC 2965. Version attribute is required.");
            }
        }

        @Override // org.apache.commons.httpclient.cookie.CookieAttributeHandler
        public final boolean match(Cookie cookie, CookieOrigin origin) {
            return true;
        }
    }

    @Override // org.apache.commons.httpclient.cookie.CookieVersionSupport
    public int getVersion() {
        return 1;
    }

    @Override // org.apache.commons.httpclient.cookie.CookieVersionSupport
    public Header getVersionHeader() {
        ParameterFormatter formatter = new ParameterFormatter();
        StringBuffer buffer = new StringBuffer();
        formatter.format(buffer, new NameValuePair("$Version", Integer.toString(getVersion())));
        return new Header("Cookie2", buffer.toString(), true);
    }
}
