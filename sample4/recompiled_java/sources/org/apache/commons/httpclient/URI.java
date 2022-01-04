package org.apache.commons.httpclient;

import com.lenovo.lps.sus.a.a.a.b;
import java.io.Serializable;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Hashtable;
import java.util.Locale;
import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.net.URLCodec;
import org.apache.commons.httpclient.cookie.CookieSpec;
import org.apache.commons.httpclient.util.EncodingUtil;

public class URI implements Serializable, Cloneable, Comparable {
    protected static final BitSet IPv4address = new BitSet(256);
    protected static final BitSet IPv6address = new BitSet(256);
    protected static final BitSet IPv6reference = new BitSet(256);
    protected static final BitSet URI_reference = new BitSet(256);
    protected static final BitSet abs_path = new BitSet(256);
    protected static final BitSet absoluteURI = new BitSet(256);
    public static final BitSet allowed_IPv6reference = new BitSet(256);
    public static final BitSet allowed_abs_path = new BitSet(256);
    public static final BitSet allowed_authority = new BitSet(256);
    public static final BitSet allowed_fragment = new BitSet(256);
    public static final BitSet allowed_host = new BitSet(256);
    public static final BitSet allowed_opaque_part = new BitSet(256);
    public static final BitSet allowed_query = new BitSet(256);
    public static final BitSet allowed_reg_name = new BitSet(256);
    public static final BitSet allowed_rel_path = new BitSet(256);
    public static final BitSet allowed_userinfo = new BitSet(256);
    public static final BitSet allowed_within_authority = new BitSet(256);
    public static final BitSet allowed_within_path = new BitSet(256);
    public static final BitSet allowed_within_query = new BitSet(256);
    public static final BitSet allowed_within_userinfo = new BitSet(256);
    protected static final BitSet alpha = new BitSet(256);
    protected static final BitSet alphanum = new BitSet(256);
    protected static final BitSet authority = new BitSet(256);
    public static final BitSet control = new BitSet(256);
    protected static String defaultDocumentCharset;
    protected static String defaultDocumentCharsetByLocale;
    protected static String defaultDocumentCharsetByPlatform;
    protected static String defaultProtocolCharset = b.a;
    public static final BitSet delims = new BitSet(256);
    protected static final BitSet digit = new BitSet(256);
    public static final BitSet disallowed_opaque_part = new BitSet(256);
    public static final BitSet disallowed_rel_path = new BitSet(256);
    protected static final BitSet domainlabel = toplabel;
    protected static final BitSet escaped = new BitSet(256);
    protected static final BitSet fragment = uric;
    protected static final BitSet hex = new BitSet(256);
    protected static final BitSet hier_part = new BitSet(256);
    protected static final BitSet host = new BitSet(256);
    protected static final BitSet hostname = new BitSet(256);
    protected static final BitSet hostport = new BitSet(256);
    protected static final BitSet mark = new BitSet(256);
    protected static final BitSet net_path = new BitSet(256);
    protected static final BitSet opaque_part = new BitSet(256);
    protected static final BitSet param = pchar;
    protected static final BitSet path = new BitSet(256);
    protected static final BitSet path_segments = new BitSet(256);
    protected static final BitSet pchar = new BitSet(256);
    protected static final BitSet percent = new BitSet(256);
    protected static final BitSet port = digit;
    protected static final BitSet query = uric;
    protected static final BitSet reg_name = new BitSet(256);
    protected static final BitSet rel_path = new BitSet(256);
    protected static final BitSet rel_segment = new BitSet(256);
    protected static final BitSet relativeURI = new BitSet(256);
    protected static final BitSet reserved = new BitSet(256);
    protected static final char[] rootPath = {'/'};
    protected static final BitSet scheme = new BitSet(256);
    protected static final BitSet segment = new BitSet(256);
    protected static final BitSet server = new BitSet(256);
    public static final BitSet space = new BitSet(256);
    protected static final BitSet toplabel = new BitSet(256);
    protected static final BitSet unreserved = new BitSet(256);
    public static final BitSet unwise = new BitSet(256);
    protected static final BitSet uric = new BitSet(256);
    protected static final BitSet uric_no_slash = new BitSet(256);
    protected static final BitSet userinfo = new BitSet(256);
    public static final BitSet within_userinfo = new BitSet(256);
    protected char[] _authority;
    protected char[] _fragment;
    protected char[] _host;
    protected boolean _is_IPv4address;
    protected boolean _is_IPv6reference;
    protected boolean _is_abs_path;
    protected boolean _is_hier_part;
    protected boolean _is_hostname;
    protected boolean _is_net_path;
    protected boolean _is_opaque_part;
    protected boolean _is_reg_name;
    protected boolean _is_rel_path;
    protected boolean _is_server;
    protected char[] _opaque;
    protected char[] _path;
    protected int _port;
    protected char[] _query;
    protected char[] _scheme;
    protected char[] _uri;
    protected char[] _userinfo;
    protected int hash;
    protected String protocolCharset;

    protected URI() {
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
    }

    public URI(String s, boolean escaped2, String charset) throws URIException, NullPointerException {
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
        this.protocolCharset = charset;
        parseUriReference(s, escaped2);
    }

    public URI(String s, boolean escaped2) throws URIException, NullPointerException {
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
        parseUriReference(s, escaped2);
    }

    public URI(char[] escaped2, String charset) throws URIException, NullPointerException {
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
        this.protocolCharset = charset;
        parseUriReference(new String(escaped2), true);
    }

    public URI(char[] escaped2) throws URIException, NullPointerException {
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
        parseUriReference(new String(escaped2), true);
    }

    public URI(String original, String charset) throws URIException {
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
        this.protocolCharset = charset;
        parseUriReference(original, false);
    }

    public URI(String original) throws URIException {
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
        parseUriReference(original, false);
    }

    public URI(String scheme2, String schemeSpecificPart, String fragment2) throws URIException {
        char[] cArr = null;
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
        if (scheme2 == null) {
            throw new URIException(1, "scheme required");
        }
        char[] s = scheme2.toLowerCase().toCharArray();
        if (validate(s, scheme)) {
            this._scheme = s;
            this._opaque = encode(schemeSpecificPart, allowed_opaque_part, getProtocolCharset());
            this._is_opaque_part = true;
            this._fragment = fragment2 != null ? fragment2.toCharArray() : cArr;
            setURI();
            return;
        }
        throw new URIException(1, "incorrect scheme");
    }

    public URI(String scheme2, String authority2, String path2, String query2, String fragment2) throws URIException {
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
        StringBuffer buff = new StringBuffer();
        if (scheme2 != null) {
            buff.append(scheme2);
            buff.append(':');
        }
        if (authority2 != null) {
            buff.append("//");
            buff.append(authority2);
        }
        if (path2 != null) {
            if (!(scheme2 == null && authority2 == null) && !path2.startsWith(CookieSpec.PATH_DELIM)) {
                throw new URIException(1, "abs_path requested");
            }
            buff.append(path2);
        }
        if (query2 != null) {
            buff.append('?');
            buff.append(query2);
        }
        if (fragment2 != null) {
            buff.append('#');
            buff.append(fragment2);
        }
        parseUriReference(buff.toString(), false);
    }

    public URI(String scheme2, String userinfo2, String host2, int port2) throws URIException {
        this(scheme2, userinfo2, host2, port2, null, null, null);
    }

    public URI(String scheme2, String userinfo2, String host2, int port2, String path2) throws URIException {
        this(scheme2, userinfo2, host2, port2, path2, null, null);
    }

    public URI(String scheme2, String userinfo2, String host2, int port2, String path2, String query2) throws URIException {
        this(scheme2, userinfo2, host2, port2, path2, query2, null);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public URI(java.lang.String r7, java.lang.String r8, java.lang.String r9, int r10, java.lang.String r11, java.lang.String r12, java.lang.String r13) throws org.apache.commons.httpclient.URIException {
        /*
            r6 = this;
            if (r9 != 0) goto L_0x000c
            r2 = 0
        L_0x0003:
            r0 = r6
            r1 = r7
            r3 = r11
            r4 = r12
            r5 = r13
            r0.<init>(r1, r2, r3, r4, r5)
            return
        L_0x000c:
            java.lang.StringBuffer r1 = new java.lang.StringBuffer
            r1.<init>()
            if (r8 == 0) goto L_0x004d
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.StringBuffer r0 = r0.append(r8)
            r2 = 64
            java.lang.StringBuffer r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
        L_0x0026:
            java.lang.StringBuffer r0 = r1.append(r0)
            java.lang.StringBuffer r1 = r0.append(r9)
            r0 = -1
            if (r10 == r0) goto L_0x0050
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r2 = ":"
            java.lang.StringBuffer r0 = r0.append(r2)
            java.lang.StringBuffer r0 = r0.append(r10)
            java.lang.String r0 = r0.toString()
        L_0x0044:
            java.lang.StringBuffer r0 = r1.append(r0)
            java.lang.String r2 = r0.toString()
            goto L_0x0003
        L_0x004d:
            java.lang.String r0 = ""
            goto L_0x0026
        L_0x0050:
            java.lang.String r0 = ""
            goto L_0x0044
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.httpclient.URI.<init>(java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public URI(String scheme2, String host2, String path2, String fragment2) throws URIException {
        this(scheme2, host2, path2, (String) null, fragment2);
    }

    public URI(URI base, String relative) throws URIException {
        this(base, new URI(relative));
    }

    public URI(URI base, String relative, boolean escaped2) throws URIException {
        this(base, new URI(relative, escaped2));
    }

    public URI(URI base, URI relative) throws URIException {
        boolean z = false;
        this.hash = 0;
        this._uri = null;
        this.protocolCharset = null;
        this._scheme = null;
        this._opaque = null;
        this._authority = null;
        this._userinfo = null;
        this._host = null;
        this._port = -1;
        this._path = null;
        this._query = null;
        this._fragment = null;
        if (base._scheme == null) {
            throw new URIException(1, "base URI required");
        }
        if (base._scheme != null) {
            this._scheme = base._scheme;
            this._authority = base._authority;
            this._is_net_path = base._is_net_path;
        }
        if (base._is_opaque_part || relative._is_opaque_part) {
            this._scheme = base._scheme;
            this._is_opaque_part = (base._is_opaque_part || relative._is_opaque_part) ? true : z;
            this._opaque = relative._opaque;
            this._fragment = relative._fragment;
            setURI();
            return;
        }
        boolean schemesEqual = Arrays.equals(base._scheme, relative._scheme);
        if (relative._scheme != null && (!schemesEqual || relative._authority != null)) {
            this._scheme = relative._scheme;
            this._is_net_path = relative._is_net_path;
            this._authority = relative._authority;
            if (relative._is_server) {
                this._is_server = relative._is_server;
                this._userinfo = relative._userinfo;
                this._host = relative._host;
                this._port = relative._port;
            } else if (relative._is_reg_name) {
                this._is_reg_name = relative._is_reg_name;
            }
            this._is_abs_path = relative._is_abs_path;
            this._is_rel_path = relative._is_rel_path;
            this._path = relative._path;
        } else if (base._authority != null && relative._scheme == null) {
            this._is_net_path = base._is_net_path;
            this._authority = base._authority;
            if (base._is_server) {
                this._is_server = base._is_server;
                this._userinfo = base._userinfo;
                this._host = base._host;
                this._port = base._port;
            } else if (base._is_reg_name) {
                this._is_reg_name = base._is_reg_name;
            }
        }
        if (relative._authority != null) {
            this._is_net_path = relative._is_net_path;
            this._authority = relative._authority;
            if (relative._is_server) {
                this._is_server = relative._is_server;
                this._userinfo = relative._userinfo;
                this._host = relative._host;
                this._port = relative._port;
            } else if (relative._is_reg_name) {
                this._is_reg_name = relative._is_reg_name;
            }
            this._is_abs_path = relative._is_abs_path;
            this._is_rel_path = relative._is_rel_path;
            this._path = relative._path;
        }
        if (relative._authority == null && (relative._scheme == null || schemesEqual)) {
            if ((relative._path == null || relative._path.length == 0) && relative._query == null) {
                this._path = base._path;
                this._query = base._query;
            } else {
                this._path = resolvePath(base._path, relative._path);
            }
        }
        if (relative._query != null) {
            this._query = relative._query;
        }
        if (relative._fragment != null) {
            this._fragment = relative._fragment;
        }
        setURI();
        parseUriReference(new String(this._uri), true);
    }

    static {
        defaultDocumentCharset = null;
        defaultDocumentCharsetByLocale = null;
        defaultDocumentCharsetByPlatform = null;
        Locale locale = Locale.getDefault();
        if (locale != null) {
            defaultDocumentCharsetByLocale = LocaleToCharsetMap.getCharset(locale);
            defaultDocumentCharset = defaultDocumentCharsetByLocale;
        }
        try {
            defaultDocumentCharsetByPlatform = System.getProperty("file.encoding");
        } catch (SecurityException e) {
        }
        if (defaultDocumentCharset == null) {
            defaultDocumentCharset = defaultDocumentCharsetByPlatform;
        }
        percent.set(37);
        for (int i = 48; i <= 57; i++) {
            digit.set(i);
        }
        for (int i2 = 97; i2 <= 122; i2++) {
            alpha.set(i2);
        }
        for (int i3 = 65; i3 <= 90; i3++) {
            alpha.set(i3);
        }
        alphanum.or(alpha);
        alphanum.or(digit);
        hex.or(digit);
        for (int i4 = 97; i4 <= 102; i4++) {
            hex.set(i4);
        }
        for (int i5 = 65; i5 <= 70; i5++) {
            hex.set(i5);
        }
        escaped.or(percent);
        escaped.or(hex);
        mark.set(45);
        mark.set(95);
        mark.set(46);
        mark.set(33);
        mark.set(126);
        mark.set(42);
        mark.set(39);
        mark.set(40);
        mark.set(41);
        unreserved.or(alphanum);
        unreserved.or(mark);
        reserved.set(59);
        reserved.set(47);
        reserved.set(63);
        reserved.set(58);
        reserved.set(64);
        reserved.set(38);
        reserved.set(61);
        reserved.set(43);
        reserved.set(36);
        reserved.set(44);
        uric.or(reserved);
        uric.or(unreserved);
        uric.or(escaped);
        pchar.or(unreserved);
        pchar.or(escaped);
        pchar.set(58);
        pchar.set(64);
        pchar.set(38);
        pchar.set(61);
        pchar.set(43);
        pchar.set(36);
        pchar.set(44);
        segment.or(pchar);
        segment.set(59);
        segment.or(param);
        path_segments.set(47);
        path_segments.or(segment);
        abs_path.set(47);
        abs_path.or(path_segments);
        uric_no_slash.or(unreserved);
        uric_no_slash.or(escaped);
        uric_no_slash.set(59);
        uric_no_slash.set(63);
        uric_no_slash.set(59);
        uric_no_slash.set(64);
        uric_no_slash.set(38);
        uric_no_slash.set(61);
        uric_no_slash.set(43);
        uric_no_slash.set(36);
        uric_no_slash.set(44);
        opaque_part.or(uric_no_slash);
        opaque_part.or(uric);
        path.or(abs_path);
        path.or(opaque_part);
        IPv4address.or(digit);
        IPv4address.set(46);
        IPv6address.or(hex);
        IPv6address.set(58);
        IPv6address.or(IPv4address);
        IPv6reference.set(91);
        IPv6reference.or(IPv6address);
        IPv6reference.set(93);
        toplabel.or(alphanum);
        toplabel.set(45);
        hostname.or(toplabel);
        hostname.set(46);
        host.or(hostname);
        host.or(IPv6reference);
        hostport.or(host);
        hostport.set(58);
        hostport.or(port);
        userinfo.or(unreserved);
        userinfo.or(escaped);
        userinfo.set(59);
        userinfo.set(58);
        userinfo.set(38);
        userinfo.set(61);
        userinfo.set(43);
        userinfo.set(36);
        userinfo.set(44);
        within_userinfo.or(userinfo);
        within_userinfo.clear(59);
        within_userinfo.clear(58);
        within_userinfo.clear(64);
        within_userinfo.clear(63);
        within_userinfo.clear(47);
        server.or(userinfo);
        server.set(64);
        server.or(hostport);
        reg_name.or(unreserved);
        reg_name.or(escaped);
        reg_name.set(36);
        reg_name.set(44);
        reg_name.set(59);
        reg_name.set(58);
        reg_name.set(64);
        reg_name.set(38);
        reg_name.set(61);
        reg_name.set(43);
        authority.or(server);
        authority.or(reg_name);
        scheme.or(alpha);
        scheme.or(digit);
        scheme.set(43);
        scheme.set(45);
        scheme.set(46);
        rel_segment.or(unreserved);
        rel_segment.or(escaped);
        rel_segment.set(59);
        rel_segment.set(64);
        rel_segment.set(38);
        rel_segment.set(61);
        rel_segment.set(43);
        rel_segment.set(36);
        rel_segment.set(44);
        rel_path.or(rel_segment);
        rel_path.or(abs_path);
        net_path.set(47);
        net_path.or(authority);
        net_path.or(abs_path);
        hier_part.or(net_path);
        hier_part.or(abs_path);
        hier_part.or(query);
        relativeURI.or(net_path);
        relativeURI.or(abs_path);
        relativeURI.or(rel_path);
        relativeURI.or(query);
        absoluteURI.or(scheme);
        absoluteURI.set(58);
        absoluteURI.or(hier_part);
        absoluteURI.or(opaque_part);
        URI_reference.or(absoluteURI);
        URI_reference.or(relativeURI);
        URI_reference.set(35);
        URI_reference.or(fragment);
        for (int i6 = 0; i6 <= 31; i6++) {
            control.set(i6);
        }
        control.set(127);
        space.set(32);
        delims.set(60);
        delims.set(62);
        delims.set(35);
        delims.set(37);
        delims.set(34);
        unwise.set(123);
        unwise.set(125);
        unwise.set(124);
        unwise.set(92);
        unwise.set(94);
        unwise.set(91);
        unwise.set(93);
        unwise.set(96);
        disallowed_rel_path.or(uric);
        disallowed_rel_path.andNot(rel_path);
        disallowed_opaque_part.or(uric);
        disallowed_opaque_part.andNot(opaque_part);
        allowed_authority.or(authority);
        allowed_authority.clear(37);
        allowed_opaque_part.or(opaque_part);
        allowed_opaque_part.clear(37);
        allowed_reg_name.or(reg_name);
        allowed_reg_name.clear(37);
        allowed_userinfo.or(userinfo);
        allowed_userinfo.clear(37);
        allowed_within_userinfo.or(within_userinfo);
        allowed_within_userinfo.clear(37);
        allowed_IPv6reference.or(IPv6reference);
        allowed_IPv6reference.clear(91);
        allowed_IPv6reference.clear(93);
        allowed_host.or(hostname);
        allowed_host.or(allowed_IPv6reference);
        allowed_within_authority.or(server);
        allowed_within_authority.or(reg_name);
        allowed_within_authority.clear(59);
        allowed_within_authority.clear(58);
        allowed_within_authority.clear(64);
        allowed_within_authority.clear(63);
        allowed_within_authority.clear(47);
        allowed_abs_path.or(abs_path);
        allowed_abs_path.andNot(percent);
        allowed_abs_path.clear(43);
        allowed_rel_path.or(rel_path);
        allowed_rel_path.clear(37);
        allowed_rel_path.clear(43);
        allowed_within_path.or(abs_path);
        allowed_within_path.clear(47);
        allowed_within_path.clear(59);
        allowed_within_path.clear(61);
        allowed_within_path.clear(63);
        allowed_query.or(uric);
        allowed_query.clear(37);
        allowed_within_query.or(allowed_query);
        allowed_within_query.andNot(reserved);
        allowed_fragment.or(uric);
        allowed_fragment.clear(37);
    }

    protected static char[] encode(String original, BitSet allowed, String charset) throws URIException {
        if (original == null) {
            throw new IllegalArgumentException("Original string may not be null");
        } else if (allowed != null) {
            return EncodingUtil.getAsciiString(URLCodec.encodeUrl(allowed, EncodingUtil.getBytes(original, charset))).toCharArray();
        } else {
            throw new IllegalArgumentException("Allowed bitset may not be null");
        }
    }

    protected static String decode(char[] component, String charset) throws URIException {
        if (component != null) {
            return decode(new String(component), charset);
        }
        throw new IllegalArgumentException("Component array of chars may not be null");
    }

    protected static String decode(String component, String charset) throws URIException {
        if (component == null) {
            throw new IllegalArgumentException("Component array of chars may not be null");
        }
        try {
            return EncodingUtil.getString(URLCodec.decodeUrl(EncodingUtil.getAsciiBytes(component)), charset);
        } catch (DecoderException e) {
            throw new URIException(e.getMessage());
        }
    }

    /* access modifiers changed from: protected */
    public boolean prevalidate(String component, BitSet disallowed) {
        char[] target;
        if (component == null) {
            return false;
        }
        for (char c : component.toCharArray()) {
            if (disallowed.get(c)) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean validate(char[] component, BitSet generous) {
        return validate(component, 0, -1, generous);
    }

    /* access modifiers changed from: protected */
    public boolean validate(char[] component, int soffset, int eoffset, BitSet generous) {
        if (eoffset == -1) {
            eoffset = component.length - 1;
        }
        for (int i = soffset; i <= eoffset; i++) {
            if (!generous.get(component[i])) {
                return false;
            }
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void parseUriReference(String original, boolean escaped2) throws URIException {
        if (original == null) {
            throw new URIException("URI-Reference required");
        }
        String tmp = original.trim();
        int length = tmp.length();
        if (length > 0) {
            if (validate(new char[]{tmp.charAt(0)}, delims) && length >= 2) {
                if (validate(new char[]{tmp.charAt(length - 1)}, delims)) {
                    tmp = tmp.substring(1, length - 1);
                    length -= 2;
                }
            }
        }
        int from = 0;
        boolean isStartedFromPath = false;
        int atColon = tmp.indexOf(58);
        int atSlash = tmp.indexOf(47);
        if ((atColon <= 0 && !tmp.startsWith("//")) || (atSlash >= 0 && atSlash < atColon)) {
            isStartedFromPath = true;
        }
        int at = indexFirstOf(tmp, isStartedFromPath ? "/?#" : ":/?#", 0);
        if (at == -1) {
            at = 0;
        }
        if (at > 0 && at < length && tmp.charAt(at) == ':') {
            char[] target = tmp.substring(0, at).toLowerCase().toCharArray();
            if (validate(target, scheme)) {
                this._scheme = target;
                at++;
                from = at;
            } else {
                throw new URIException("incorrect scheme");
            }
        }
        this._is_hier_part = false;
        this._is_rel_path = false;
        this._is_abs_path = false;
        this._is_net_path = false;
        if (at >= 0 && at < length && tmp.charAt(at) == '/') {
            this._is_hier_part = true;
            if (at + 2 < length && tmp.charAt(at + 1) == '/' && !isStartedFromPath) {
                int next = indexFirstOf(tmp, "/?#", at + 2);
                if (next == -1) {
                    next = tmp.substring(at + 2).length() == 0 ? at + 2 : tmp.length();
                }
                parseAuthority(tmp.substring(at + 2, next), escaped2);
                at = next;
                from = next;
                this._is_net_path = true;
            }
            if (from == at) {
                this._is_abs_path = true;
            }
        }
        if (from < length) {
            int next2 = indexFirstOf(tmp, "?#", from);
            if (next2 == -1) {
                next2 = tmp.length();
            }
            if (!this._is_abs_path) {
                if ((!escaped2 && prevalidate(tmp.substring(from, next2), disallowed_rel_path)) || (escaped2 && validate(tmp.substring(from, next2).toCharArray(), rel_path))) {
                    this._is_rel_path = true;
                } else if ((escaped2 || !prevalidate(tmp.substring(from, next2), disallowed_opaque_part)) && (!escaped2 || !validate(tmp.substring(from, next2).toCharArray(), opaque_part))) {
                    this._path = null;
                } else {
                    this._is_opaque_part = true;
                }
            }
            String s = tmp.substring(from, next2);
            if (escaped2) {
                setRawPath(s.toCharArray());
            } else {
                setPath(s);
            }
            at = next2;
        }
        String charset = getProtocolCharset();
        if (at >= 0 && at + 1 < length && tmp.charAt(at) == '?') {
            int next3 = tmp.indexOf(35, at + 1);
            if (next3 == -1) {
                next3 = tmp.length();
            }
            if (escaped2) {
                this._query = tmp.substring(at + 1, next3).toCharArray();
                if (!validate(this._query, uric)) {
                    throw new URIException("Invalid query");
                }
            } else {
                this._query = encode(tmp.substring(at + 1, next3), allowed_query, charset);
            }
            at = next3;
        }
        if (at >= 0 && at + 1 <= length && tmp.charAt(at) == '#') {
            if (at + 1 == length) {
                this._fragment = "".toCharArray();
            } else {
                this._fragment = escaped2 ? tmp.substring(at + 1).toCharArray() : encode(tmp.substring(at + 1), allowed_fragment, charset);
            }
        }
        setURI();
    }

    /* access modifiers changed from: protected */
    public int indexFirstOf(String s, String delims2) {
        return indexFirstOf(s, delims2, -1);
    }

    /* access modifiers changed from: protected */
    public int indexFirstOf(String s, String delims2, int offset) {
        char[] delim;
        if (s == null || s.length() == 0 || delims2 == null || delims2.length() == 0) {
            return -1;
        }
        if (offset < 0) {
            offset = 0;
        } else if (offset > s.length()) {
            return -1;
        }
        int min = s.length();
        for (char c : delims2.toCharArray()) {
            int at = s.indexOf(c, offset);
            if (at >= 0 && at < min) {
                min = at;
            }
        }
        if (min == s.length()) {
            min = -1;
        }
        return min;
    }

    /* access modifiers changed from: protected */
    public int indexFirstOf(char[] s, char delim) {
        return indexFirstOf(s, delim, 0);
    }

    /* access modifiers changed from: protected */
    public int indexFirstOf(char[] s, char delim, int offset) {
        if (s == null || s.length == 0) {
            return -1;
        }
        if (offset < 0) {
            offset = 0;
        } else if (offset > s.length) {
            return -1;
        }
        for (int i = offset; i < s.length; i++) {
            if (s[i] == delim) {
                return i;
            }
        }
        return -1;
    }

    /* access modifiers changed from: protected */
    public void parseAuthority(String original, boolean escaped2) throws URIException {
        int next;
        char[] encode;
        this._is_IPv6reference = false;
        this._is_IPv4address = false;
        this._is_hostname = false;
        this._is_server = false;
        this._is_reg_name = false;
        String charset = getProtocolCharset();
        boolean hasPort = true;
        int from = 0;
        int next2 = original.indexOf(64);
        if (next2 != -1) {
            if (escaped2) {
                encode = original.substring(0, next2).toCharArray();
            } else {
                encode = encode(original.substring(0, next2), allowed_userinfo, charset);
            }
            this._userinfo = encode;
            from = next2 + 1;
        }
        if (original.indexOf(91, from) >= from) {
            int next3 = original.indexOf(93, from);
            if (next3 == -1) {
                throw new URIException(1, "IPv6reference");
            }
            next = next3 + 1;
            this._host = escaped2 ? original.substring(from, next).toCharArray() : encode(original.substring(from, next), allowed_IPv6reference, charset);
            this._is_IPv6reference = true;
        } else {
            next = original.indexOf(58, from);
            if (next == -1) {
                next = original.length();
                hasPort = false;
            }
            this._host = original.substring(from, next).toCharArray();
            if (validate(this._host, IPv4address)) {
                this._is_IPv4address = true;
            } else if (validate(this._host, hostname)) {
                this._is_hostname = true;
            } else {
                this._is_reg_name = true;
            }
        }
        if (this._is_reg_name) {
            this._is_IPv6reference = false;
            this._is_IPv4address = false;
            this._is_hostname = false;
            this._is_server = false;
            if (escaped2) {
                this._authority = original.toCharArray();
                if (!validate(this._authority, reg_name)) {
                    throw new URIException("Invalid authority");
                }
                return;
            }
            this._authority = encode(original, allowed_reg_name, charset);
            return;
        }
        if (original.length() - 1 > next && hasPort && original.charAt(next) == ':') {
            try {
                this._port = Integer.parseInt(original.substring(next + 1));
            } catch (NumberFormatException e) {
                throw new URIException(1, "invalid port number");
            }
        }
        StringBuffer buf = new StringBuffer();
        if (this._userinfo != null) {
            buf.append(this._userinfo);
            buf.append('@');
        }
        if (this._host != null) {
            buf.append(this._host);
            if (this._port != -1) {
                buf.append(':');
                buf.append(this._port);
            }
        }
        this._authority = buf.toString().toCharArray();
        this._is_server = true;
    }

    /* access modifiers changed from: protected */
    public void setURI() {
        StringBuffer buf = new StringBuffer();
        if (this._scheme != null) {
            buf.append(this._scheme);
            buf.append(':');
        }
        if (this._is_net_path) {
            buf.append("//");
            if (this._authority != null) {
                buf.append(this._authority);
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

    public boolean isAbsoluteURI() {
        return this._scheme != null;
    }

    public boolean isRelativeURI() {
        return this._scheme == null;
    }

    public boolean isHierPart() {
        return this._is_hier_part;
    }

    public boolean isOpaquePart() {
        return this._is_opaque_part;
    }

    public boolean isNetPath() {
        return this._is_net_path || this._authority != null;
    }

    public boolean isAbsPath() {
        return this._is_abs_path;
    }

    public boolean isRelPath() {
        return this._is_rel_path;
    }

    public boolean hasAuthority() {
        return this._authority != null || this._is_net_path;
    }

    public boolean isRegName() {
        return this._is_reg_name;
    }

    public boolean isServer() {
        return this._is_server;
    }

    public boolean hasUserinfo() {
        return this._userinfo != null;
    }

    public boolean isHostname() {
        return this._is_hostname;
    }

    public boolean isIPv4address() {
        return this._is_IPv4address;
    }

    public boolean isIPv6reference() {
        return this._is_IPv6reference;
    }

    public boolean hasQuery() {
        return this._query != null;
    }

    public boolean hasFragment() {
        return this._fragment != null;
    }

    public static void setDefaultProtocolCharset(String charset) throws DefaultCharsetChanged {
        defaultProtocolCharset = charset;
        throw new DefaultCharsetChanged(1, "the default protocol charset changed");
    }

    public static String getDefaultProtocolCharset() {
        return defaultProtocolCharset;
    }

    public String getProtocolCharset() {
        return this.protocolCharset != null ? this.protocolCharset : defaultProtocolCharset;
    }

    public static void setDefaultDocumentCharset(String charset) throws DefaultCharsetChanged {
        defaultDocumentCharset = charset;
        throw new DefaultCharsetChanged(2, "the default document charset changed");
    }

    public static String getDefaultDocumentCharset() {
        return defaultDocumentCharset;
    }

    public static String getDefaultDocumentCharsetByLocale() {
        return defaultDocumentCharsetByLocale;
    }

    public static String getDefaultDocumentCharsetByPlatform() {
        return defaultDocumentCharsetByPlatform;
    }

    public char[] getRawScheme() {
        return this._scheme;
    }

    public String getScheme() {
        if (this._scheme == null) {
            return null;
        }
        return new String(this._scheme);
    }

    public void setRawAuthority(char[] escapedAuthority) throws URIException, NullPointerException {
        parseAuthority(new String(escapedAuthority), true);
        setURI();
    }

    public void setEscapedAuthority(String escapedAuthority) throws URIException {
        parseAuthority(escapedAuthority, true);
        setURI();
    }

    public char[] getRawAuthority() {
        return this._authority;
    }

    public String getEscapedAuthority() {
        if (this._authority == null) {
            return null;
        }
        return new String(this._authority);
    }

    public String getAuthority() throws URIException {
        if (this._authority == null) {
            return null;
        }
        return decode(this._authority, getProtocolCharset());
    }

    public char[] getRawUserinfo() {
        return this._userinfo;
    }

    public String getEscapedUserinfo() {
        if (this._userinfo == null) {
            return null;
        }
        return new String(this._userinfo);
    }

    public String getUserinfo() throws URIException {
        if (this._userinfo == null) {
            return null;
        }
        return decode(this._userinfo, getProtocolCharset());
    }

    public char[] getRawHost() {
        return this._host;
    }

    public String getHost() throws URIException {
        if (this._host != null) {
            return decode(this._host, getProtocolCharset());
        }
        return null;
    }

    public int getPort() {
        return this._port;
    }

    public void setRawPath(char[] escapedPath) throws URIException {
        if (escapedPath == null || escapedPath.length == 0) {
            this._opaque = escapedPath;
            this._path = escapedPath;
            setURI();
            return;
        }
        char[] escapedPath2 = removeFragmentIdentifier(escapedPath);
        if (this._is_net_path || this._is_abs_path) {
            if (escapedPath2[0] != '/') {
                throw new URIException(1, "not absolute path");
            } else if (!validate(escapedPath2, abs_path)) {
                throw new URIException(3, "escaped absolute path not valid");
            } else {
                this._path = escapedPath2;
            }
        } else if (this._is_rel_path) {
            int at = indexFirstOf(escapedPath2, '/');
            if (at == 0) {
                throw new URIException(1, "incorrect path");
            } else if ((at <= 0 || validate(escapedPath2, 0, at - 1, rel_segment) || validate(escapedPath2, at, -1, abs_path)) && (at >= 0 || validate(escapedPath2, 0, -1, rel_segment))) {
                this._path = escapedPath2;
            } else {
                throw new URIException(3, "escaped relative path not valid");
            }
        } else if (!this._is_opaque_part) {
            throw new URIException(1, "incorrect path");
        } else if (uric_no_slash.get(escapedPath2[0]) || validate(escapedPath2, 1, -1, uric)) {
            this._opaque = escapedPath2;
        } else {
            throw new URIException(3, "escaped opaque part not valid");
        }
        setURI();
    }

    public void setEscapedPath(String escapedPath) throws URIException {
        if (escapedPath == null) {
            this._opaque = null;
            this._path = null;
            setURI();
            return;
        }
        setRawPath(escapedPath.toCharArray());
    }

    public void setPath(String path2) throws URIException {
        if (path2 == null || path2.length() == 0) {
            char[] charArray = path2 == null ? null : path2.toCharArray();
            this._opaque = charArray;
            this._path = charArray;
            setURI();
            return;
        }
        String charset = getProtocolCharset();
        if (this._is_net_path || this._is_abs_path) {
            this._path = encode(path2, allowed_abs_path, charset);
        } else if (this._is_rel_path) {
            StringBuffer buff = new StringBuffer(path2.length());
            int at = path2.indexOf(47);
            if (at == 0) {
                throw new URIException(1, "incorrect relative path");
            }
            if (at > 0) {
                buff.append(encode(path2.substring(0, at), allowed_rel_path, charset));
                buff.append(encode(path2.substring(at), allowed_abs_path, charset));
            } else {
                buff.append(encode(path2, allowed_rel_path, charset));
            }
            this._path = buff.toString().toCharArray();
        } else if (this._is_opaque_part) {
            StringBuffer buf = new StringBuffer();
            buf.insert(0, encode(path2.substring(0, 1), uric_no_slash, charset));
            buf.insert(1, encode(path2.substring(1), uric, charset));
            this._opaque = buf.toString().toCharArray();
        } else {
            throw new URIException(1, "incorrect path");
        }
        setURI();
    }

    /* access modifiers changed from: protected */
    public char[] resolvePath(char[] basePath, char[] relPath) throws URIException {
        String base = basePath == null ? "" : new String(basePath);
        if (relPath == null || relPath.length == 0) {
            return normalize(basePath);
        }
        if (relPath[0] == '/') {
            return normalize(relPath);
        }
        int at = base.lastIndexOf(47);
        if (at != -1) {
            base.substring(0, at + 1).toCharArray();
        }
        StringBuffer buff = new StringBuffer(base.length() + relPath.length);
        buff.append(at != -1 ? base.substring(0, at + 1) : CookieSpec.PATH_DELIM);
        buff.append(relPath);
        return normalize(buff.toString().toCharArray());
    }

    /* access modifiers changed from: protected */
    public char[] getRawCurrentHierPath(char[] path2) throws URIException {
        if (this._is_opaque_part) {
            throw new URIException(1, "no hierarchy level");
        } else if (path2 == null) {
            throw new URIException(1, "empty path");
        } else {
            String buff = new String(path2);
            int first = buff.indexOf(47);
            int last = buff.lastIndexOf(47);
            if (last == 0) {
                return rootPath;
            }
            if (first == last || last == -1) {
                return path2;
            }
            return buff.substring(0, last).toCharArray();
        }
    }

    public char[] getRawCurrentHierPath() throws URIException {
        if (this._path == null) {
            return null;
        }
        return getRawCurrentHierPath(this._path);
    }

    public String getEscapedCurrentHierPath() throws URIException {
        char[] path2 = getRawCurrentHierPath();
        if (path2 == null) {
            return null;
        }
        return new String(path2);
    }

    public String getCurrentHierPath() throws URIException {
        char[] path2 = getRawCurrentHierPath();
        if (path2 == null) {
            return null;
        }
        return decode(path2, getProtocolCharset());
    }

    public char[] getRawAboveHierPath() throws URIException {
        char[] path2 = getRawCurrentHierPath();
        if (path2 == null) {
            return null;
        }
        return getRawCurrentHierPath(path2);
    }

    public String getEscapedAboveHierPath() throws URIException {
        char[] path2 = getRawAboveHierPath();
        if (path2 == null) {
            return null;
        }
        return new String(path2);
    }

    public String getAboveHierPath() throws URIException {
        char[] path2 = getRawAboveHierPath();
        if (path2 == null) {
            return null;
        }
        return decode(path2, getProtocolCharset());
    }

    public char[] getRawPath() {
        return this._is_opaque_part ? this._opaque : this._path;
    }

    public String getEscapedPath() {
        char[] path2 = getRawPath();
        if (path2 == null) {
            return null;
        }
        return new String(path2);
    }

    public String getPath() throws URIException {
        char[] path2 = getRawPath();
        if (path2 == null) {
            return null;
        }
        return decode(path2, getProtocolCharset());
    }

    public char[] getRawName() {
        if (this._path == null) {
            return null;
        }
        int at = 0;
        int i = this._path.length - 1;
        while (true) {
            if (i < 0) {
                break;
            } else if (this._path[i] == '/') {
                at = i + 1;
                break;
            } else {
                i--;
            }
        }
        int len = this._path.length - at;
        char[] basename = new char[len];
        System.arraycopy(this._path, at, basename, 0, len);
        return basename;
    }

    public String getEscapedName() {
        char[] basename = getRawName();
        if (basename == null) {
            return null;
        }
        return new String(basename);
    }

    public String getName() throws URIException {
        if (getRawName() == null) {
            return null;
        }
        return decode(getRawName(), getProtocolCharset());
    }

    public char[] getRawPathQuery() {
        if (this._path == null && this._query == null) {
            return null;
        }
        StringBuffer buff = new StringBuffer();
        if (this._path != null) {
            buff.append(this._path);
        }
        if (this._query != null) {
            buff.append('?');
            buff.append(this._query);
        }
        return buff.toString().toCharArray();
    }

    public String getEscapedPathQuery() {
        char[] rawPathQuery = getRawPathQuery();
        if (rawPathQuery == null) {
            return null;
        }
        return new String(rawPathQuery);
    }

    public String getPathQuery() throws URIException {
        char[] rawPathQuery = getRawPathQuery();
        if (rawPathQuery == null) {
            return null;
        }
        return decode(rawPathQuery, getProtocolCharset());
    }

    public void setRawQuery(char[] escapedQuery) throws URIException {
        if (escapedQuery == null || escapedQuery.length == 0) {
            this._query = escapedQuery;
            setURI();
            return;
        }
        char[] escapedQuery2 = removeFragmentIdentifier(escapedQuery);
        if (!validate(escapedQuery2, query)) {
            throw new URIException(3, "escaped query not valid");
        }
        this._query = escapedQuery2;
        setURI();
    }

    public void setEscapedQuery(String escapedQuery) throws URIException {
        if (escapedQuery == null) {
            this._query = null;
            setURI();
            return;
        }
        setRawQuery(escapedQuery.toCharArray());
    }

    public void setQuery(String query2) throws URIException {
        if (query2 == null || query2.length() == 0) {
            this._query = query2 == null ? null : query2.toCharArray();
            setURI();
            return;
        }
        setRawQuery(encode(query2, allowed_query, getProtocolCharset()));
    }

    public char[] getRawQuery() {
        return this._query;
    }

    public String getEscapedQuery() {
        if (this._query == null) {
            return null;
        }
        return new String(this._query);
    }

    public String getQuery() throws URIException {
        if (this._query == null) {
            return null;
        }
        return decode(this._query, getProtocolCharset());
    }

    public void setRawFragment(char[] escapedFragment) throws URIException {
        if (escapedFragment == null || escapedFragment.length == 0) {
            this._fragment = escapedFragment;
            this.hash = 0;
        } else if (!validate(escapedFragment, fragment)) {
            throw new URIException(3, "escaped fragment not valid");
        } else {
            this._fragment = escapedFragment;
            this.hash = 0;
        }
    }

    public void setEscapedFragment(String escapedFragment) throws URIException {
        if (escapedFragment == null) {
            this._fragment = null;
            this.hash = 0;
            return;
        }
        setRawFragment(escapedFragment.toCharArray());
    }

    public void setFragment(String fragment2) throws URIException {
        if (fragment2 == null || fragment2.length() == 0) {
            this._fragment = fragment2 == null ? null : fragment2.toCharArray();
            this.hash = 0;
            return;
        }
        this._fragment = encode(fragment2, allowed_fragment, getProtocolCharset());
        this.hash = 0;
    }

    public char[] getRawFragment() {
        return this._fragment;
    }

    public String getEscapedFragment() {
        if (this._fragment == null) {
            return null;
        }
        return new String(this._fragment);
    }

    public String getFragment() throws URIException {
        if (this._fragment == null) {
            return null;
        }
        return decode(this._fragment, getProtocolCharset());
    }

    /* access modifiers changed from: protected */
    public char[] removeFragmentIdentifier(char[] component) {
        if (component == null) {
            return null;
        }
        int lastIndex = new String(component).indexOf(35);
        if (lastIndex != -1) {
            component = new String(component).substring(0, lastIndex).toCharArray();
        }
        return component;
    }

    /* access modifiers changed from: protected */
    public char[] normalize(char[] path2) throws URIException {
        int slashIndex;
        if (path2 == null) {
            return null;
        }
        String normalized = new String(path2);
        if (normalized.startsWith("./")) {
            normalized = normalized.substring(1);
        } else if (normalized.startsWith("../")) {
            normalized = normalized.substring(2);
        } else if (normalized.startsWith("..")) {
            normalized = normalized.substring(2);
        }
        while (true) {
            int index = normalized.indexOf("/./");
            if (index == -1) {
                break;
            }
            normalized = new StringBuffer().append(normalized.substring(0, index)).append(normalized.substring(index + 2)).toString();
        }
        if (normalized.endsWith("/.")) {
            normalized = normalized.substring(0, normalized.length() - 1);
        }
        int startIndex = 0;
        while (true) {
            int index2 = normalized.indexOf("/../", startIndex);
            if (index2 == -1) {
                break;
            }
            int slashIndex2 = normalized.lastIndexOf(47, index2 - 1);
            if (slashIndex2 >= 0) {
                normalized = new StringBuffer().append(normalized.substring(0, slashIndex2)).append(normalized.substring(index2 + 3)).toString();
            } else {
                startIndex = index2 + 3;
            }
        }
        if (normalized.endsWith("/..") && (slashIndex = normalized.lastIndexOf(47, normalized.length() - 4)) >= 0) {
            normalized = normalized.substring(0, slashIndex + 1);
        }
        while (true) {
            int index3 = normalized.indexOf("/../");
            if (index3 != -1 && normalized.lastIndexOf(47, index3 - 1) < 0) {
                normalized = normalized.substring(index3 + 3);
            }
        }
        if (normalized.endsWith("/..") && normalized.lastIndexOf(47, normalized.length() - 4) < 0) {
            normalized = CookieSpec.PATH_DELIM;
        }
        return normalized.toCharArray();
    }

    public void normalize() throws URIException {
        if (isAbsPath()) {
            this._path = normalize(this._path);
            setURI();
        }
    }

    /* access modifiers changed from: protected */
    public boolean equals(char[] first, char[] second) {
        if (first == null && second == null) {
            return true;
        }
        if (first == null || second == null) {
            return false;
        }
        if (first.length != second.length) {
            return false;
        }
        for (int i = 0; i < first.length; i++) {
            if (first[i] != second[i]) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof URI)) {
            return false;
        }
        URI another = (URI) obj;
        if (!equals(this._scheme, another._scheme)) {
            return false;
        }
        if (!equals(this._opaque, another._opaque)) {
            return false;
        }
        if (!equals(this._authority, another._authority)) {
            return false;
        }
        if (!equals(this._path, another._path)) {
            return false;
        }
        if (!equals(this._query, another._query)) {
            return false;
        }
        return equals(this._fragment, another._fragment);
    }

    public int hashCode() {
        if (this.hash == 0) {
            char[] c = this._uri;
            if (c != null) {
                for (char c2 : c) {
                    this.hash = (this.hash * 31) + c2;
                }
            }
            char[] c3 = this._fragment;
            if (c3 != null) {
                for (char c4 : c3) {
                    this.hash = (this.hash * 31) + c4;
                }
            }
        }
        return this.hash;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) throws ClassCastException {
        URI another = (URI) obj;
        if (!equals(this._authority, another.getRawAuthority())) {
            return -1;
        }
        return toString().compareTo(another.toString());
    }

    @Override // java.lang.Object
    public synchronized Object clone() throws CloneNotSupportedException {
        URI instance;
        instance = (URI) super.clone();
        instance._uri = this._uri;
        instance._scheme = this._scheme;
        instance._opaque = this._opaque;
        instance._authority = this._authority;
        instance._userinfo = this._userinfo;
        instance._host = this._host;
        instance._port = this._port;
        instance._path = this._path;
        instance._query = this._query;
        instance._fragment = this._fragment;
        instance.protocolCharset = this.protocolCharset;
        instance._is_hier_part = this._is_hier_part;
        instance._is_opaque_part = this._is_opaque_part;
        instance._is_net_path = this._is_net_path;
        instance._is_abs_path = this._is_abs_path;
        instance._is_rel_path = this._is_rel_path;
        instance._is_reg_name = this._is_reg_name;
        instance._is_server = this._is_server;
        instance._is_hostname = this._is_hostname;
        instance._is_IPv4address = this._is_IPv4address;
        instance._is_IPv6reference = this._is_IPv6reference;
        return instance;
    }

    public char[] getRawURI() {
        return this._uri;
    }

    public String getEscapedURI() {
        if (this._uri == null) {
            return null;
        }
        return new String(this._uri);
    }

    public String getURI() throws URIException {
        if (this._uri == null) {
            return null;
        }
        return decode(this._uri, getProtocolCharset());
    }

    public char[] getRawURIReference() {
        if (this._fragment == null) {
            return this._uri;
        }
        if (this._uri == null) {
            return this._fragment;
        }
        return new StringBuffer().append(new String(this._uri)).append("#").append(new String(this._fragment)).toString().toCharArray();
    }

    public String getEscapedURIReference() {
        char[] uriReference = getRawURIReference();
        if (uriReference == null) {
            return null;
        }
        return new String(uriReference);
    }

    public String getURIReference() throws URIException {
        char[] uriReference = getRawURIReference();
        if (uriReference == null) {
            return null;
        }
        return decode(uriReference, getProtocolCharset());
    }

    public String toString() {
        return getEscapedURI();
    }

    public static class DefaultCharsetChanged extends RuntimeException {
        public static final int DOCUMENT_CHARSET = 2;
        public static final int PROTOCOL_CHARSET = 1;
        public static final int UNKNOWN = 0;
        private int a;
        private String b;

        public DefaultCharsetChanged(int reasonCode, String reason) {
            super(reason);
            this.b = reason;
            this.a = reasonCode;
        }

        public int getReasonCode() {
            return this.a;
        }

        public String getReason() {
            return this.b;
        }
    }

    public static class LocaleToCharsetMap {
        private static final Hashtable a = new Hashtable();

        static {
            a.put("ar", "ISO-8859-6");
            a.put("be", "ISO-8859-5");
            a.put("bg", "ISO-8859-5");
            a.put("ca", "ISO-8859-1");
            a.put("cs", "ISO-8859-2");
            a.put("da", "ISO-8859-1");
            a.put("de", "ISO-8859-1");
            a.put("el", "ISO-8859-7");
            a.put("en", "ISO-8859-1");
            a.put("es", "ISO-8859-1");
            a.put("et", "ISO-8859-1");
            a.put("fi", "ISO-8859-1");
            a.put("fr", "ISO-8859-1");
            a.put("hr", "ISO-8859-2");
            a.put("hu", "ISO-8859-2");
            a.put("is", "ISO-8859-1");
            a.put("it", "ISO-8859-1");
            a.put("iw", "ISO-8859-8");
            a.put("ja", "Shift_JIS");
            a.put("ko", "EUC-KR");
            a.put("lt", "ISO-8859-2");
            a.put("lv", "ISO-8859-2");
            a.put("mk", "ISO-8859-5");
            a.put("nl", "ISO-8859-1");
            a.put("no", "ISO-8859-1");
            a.put("pl", "ISO-8859-2");
            a.put("pt", "ISO-8859-1");
            a.put("ro", "ISO-8859-2");
            a.put("ru", "ISO-8859-5");
            a.put("sh", "ISO-8859-5");
            a.put("sk", "ISO-8859-2");
            a.put("sl", "ISO-8859-2");
            a.put("sq", "ISO-8859-2");
            a.put("sr", "ISO-8859-5");
            a.put("sv", "ISO-8859-1");
            a.put("tr", "ISO-8859-9");
            a.put("uk", "ISO-8859-5");
            a.put("zh", "GB2312");
            a.put("zh_TW", "Big5");
        }

        public static String getCharset(Locale locale) {
            String charset = (String) a.get(locale.toString());
            if (charset != null) {
                return charset;
            }
            return (String) a.get(locale.getLanguage());
        }
    }
}
